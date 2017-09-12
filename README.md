## Preface
So, you want to build your very own hardware (HW) accelerator, or more precisely, HW-accelerated system. Perhaps this desire stems from bottlenecks in the software (SW) you routinely use, and the frequent coffee breaks are beginning to attract dubious looks from your coworkers. Another possibility is that today, your curiosity has exceeded a certain threshold, and satisfaction only comes in the form of a deep intuition for how sofwtare is executed by the underlying hardware in a given system. My last conjecture is that you finally got your hands on an FPGA-wielding embedded system and wish to learn more about which system-level optimization knobs are at your disposal or even where to begin. Regardless of the reason, you're here, and I hope this tutorial fulfills your needs as either a starting point for further extension of this work, a template for your own HW accelerator project, or even as fundamental training. For me, I'm just happy knowing that 15 months of work has helped at least one other individiual.

In this tutorial, we'll cover the development of a complete system - from desigining a HW accelerator block (implemented and running in the FPGA fabric) to system integration (with the CPU and system memory) to writing a device driver (which provides an interface to the newly developed HW accelerator) and ultimately, to modifications that need to be made to applications running in user space. While the knowledge gained and experience acquired will be extremely rewarding, udertaking a project of this size requires commitment, perseverance, and the ability to debug without the assistance of Stack Overflow or similar forums. The last requirement is a necessity (and a good skill to have in general) for two reasons:
1. Development at this level is not heavily documented. A Google search for specific error messages might yield zero results. Perhaps Firework will spark a new wave of interest in system design by making the task seem less daunting and more approachable. The best resource to my knowledge for community support can be found at <a href="https://rocketboards.org/">RocketBoards.org</a>.
2. It shows you really understand how things work. This is especially important when working with embedded systems where bugs could not only arise from the <a href="https://en.wikipedia.org/wiki/User_space">user space</a> applicaiton, but also from incompatible system libraries, a device driver, limited system resources, misinterpreting the timing requirements of handshake signals in a bus protocol, errors in your RTL code, or (my personal favorite) from differences between expected and actual behavior of HW blocks.

## Introduction
Firework is an open source *HW-accelerated system design* built for offloading <a href="https://developers.google.com/protocol-buffers/">Protocol Buffer</a> (protobuf) serialization from the CPU. That was a loaded sentence, I know. What this means is that in this project, I'll show you how to take software that's traditionally executed purely by a system's CPU and identify components of the software you wish to accelerate, develop HW that implements this function, build a system, and modify the software to run on the modified system. The five main components of this project include:
- [protobuf-serializer](protobuf-serializer/): the RTL design of a "4-stage pipelined, parallel processor" that performs Protocol Buffer serialization, written in Verilog (along with testbenches), packaged as a Quartus Prime project. The nomenclature stems from four pipeline stages in the design, two parallel datapaths for processing varint and raw data, and a controller that consists of seven independent <a href="https://en.wikipedia.org/wiki/Finite-state_machine">finite-state machines</a> (FSMs).
- [a10-soc-devkit-ghrd](a10-soc-devkit-ghrd): the Arria 10 SoC Golden Hardware Reference Design (GHRD) modified with the protobuf-serializer HW block added as a memory-mapped FPGA peripheral. This too is packaged as a Quartus Prime project with the main SoC subsystem being a Qsys component.
- [driver] (driver): a platform device driver for the protobuf-serializer FPGA peripheral implemented as a loadable kernel module. This driver provides an interface for modifications to the protobuf runtime library and is ultimately responsible for relaying user space applicaiton data to the HW peripheral residing in the FPGA.
- [protobuf](protobuf): a fork of Google's <a href="https://github.com/google/protobuf">Protocol Buffers</a> open source project modified to send data to the protobuf-serializer FPGA peripheral for processing rather than having the protobuf runtime library perform serialization (i.e., a sequence of instructions executed on the CPU).
- [profiling](profiling): sample protobuf applications and instructions on how to use <a href="http://www.brendangregg.com/perf.html">perf-events</a> to profile and compare the performance of *standard* and *HW-accelerated* systems implemented on the Arria 10 SoC Development Kit. This is where we "close the loop" - i.e., where we finally see how a user space application, compiled once, executes on both, a *standard* (pure CPU/instruction execution) and *HW-accelerated* system.

As hinted above, I used the <a href="https://www.altera.com/products/boards_and_kits/dev-kits/altera/arria-10-soc-development-kit.html">Arria 10 SoC Development Kit</a> from Altera (<a href="https://newsroom.intel.com/news-releases/intel-completes-acquisition-of-altera/">now part of Intel</a>) throughout the development of this project. Details on why I chose this specific board are covered later in the tutorial. 

The main goal of this project was to understand what it takes to build a HW accelerator for a datacenter application. Naturally, the first step was to identify software as a good candidate for acceleration, one that's used ubiquitously across a production datacenter. Fortunately, I came across a paper whose authors from Harvard University, Universidad de Buenos Aires, Yahoo Labs, and Google performed a multi-year study on the workloads running across Google's infrastructure. In this study, <a href="https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/44271.pdf">Profiling a warehouse-scale computer</a>, they identified low-level software which they've coined the *datacenter tax* that accounts for "nearly 30% of cycles
across jobs running in the fleet, which makes its constituents prime candidates for hardware specialization in future server systems-on-chips". Perfect! This figure from the paper displays its constituents and their individual contributions to the datacenter tax: 

![alt text](resources/figure_4.png)

That's what led to my choice of Protocol Buffers (specifically, protobuf serialization) as the candidate for HW acceleration. 

- Training/resources available (Altera/Intel free online training, rocketboards.org, Altera SoC Workshop Series, manuals)
- Writing your own RTL vs. OpenCL
- Concepts/development process transfers to other boards, other projects

After having gone through the experience myself, I've developed the following list of major steps as a guideline for any type of HW acceleration work. The remainder of this tutorial will provide in-depth coverage of each of these steps as their own section:

#### High-level steps in building a HW-accelerated system:
1. Choosing a development board
2. Setting up your development environment (Operating System, VNC server/client, EDA tools, licensing)
3. Understand the software you wish to accelerate
4. Implement the FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim) 
5. System integration (Qsys)
6. Create an FPGA peripheral-aware bootable Linux image
7. Write a device driver (the interface between FPGA peripherals and user space applications)
8. Closing the loop: modify the software to redirect data to the FPGA peripheral for processing
9. Profile, benchmark HW-accelerated system performance

This work can be quite challenging. It's essential to spend time figuring out a routine that works for you and how to maintain mental capacity and creativity over long periods of time. For me, taking breaks when I feel the processor that is my brain overheating definitely helps. Another source of longevity are inspiring words of world-renowned <a href="https://www.youtube.com/watch?v=QGJuMBdaqIw">Katy Perry</a>.

## Prerequisites

### Choosing a development board
The first step is to choose a board that's appropriate for your project. Since my objective was to improve the performance of a datacenter application by building a hardware accelerator for offloading core computation in the software library, I was in search of a board that closely resembles a <a href="https://en.wikipedia.org/wiki/White_box_(computer_hardware)">white box</a> server and that's capable of running Linux. The <a href="https://www.altera.com/products/boards_and_kits/dev-kits/altera/arria-10-soc-development-kit.html">Arria 10 SoC Development Kit</a> seemed to be the perfect fit, and this is the board I chose.

![alt text](resources/arria10_soc_kit.png)

The Arria 10 SoC's two main components are a 20 nm dual-core ARM Cortex-A9 processor (called the Hard Processor System, or HPS) and the Arria 10 FPGA fabric. This combination of an applicaiton processor and FPGA fabric in a single integrated circuit is ideal for implementing a HW-accelerated system where custom RTL implemented and running on the FPGA works closely with a modified version of the datacenter application running on the CPU. The overarching principle is to the offload computationally-intensive components of an algorithm onto custom hardware that [significantly] outperforms the identical sequence of instructions typically executed by the CPU. 

Although it is easiest to replicate and extend this work using an Arria 10 SoC Development Kit, the HW accelerator is written in Verilog and this along with other components of the design are transferable to other ARM-based systems with adjustment (e.g., replacing the Altera IP Cores FIFO components I used with your own FIFO implementation). Note however, this could be very challenging to do and requires ingenuity on the user's end. Therefore, while some aspects of the implementation are inevitably specific to the Arria 10 SoC Development Kit and toolset I used, the high-level concepts in this tutorial are universal to all embedded systems work. 

### Setting up your development environment (Operating System, VNC server/client, EDA tools, licensing)
Before we get to the fun, we need to put our IT hats on. Setting up an environment for designing hardware on a remote server is unfortunately not a trivial task. Fortunately for you, I went through the process myself and will cover the steps below. In my setup, I used:
- <a href="http://www.dell.com/downloads/global/products/pedge/dell-poweredge-r720xd-spec-sheet.pdf">Dell PowerEdge R720xd</a> server
- <a href="https://www.centos.org/download/">CentOS 7</a> operating system
- <a href="http://tigervnc.org/">TigerVNC</a> VNC server
- <a href="https://www.realvnc.com/en/connect/download/viewer/">RealVNC VNC Viewer</a> VNC client

and a MacBook Pro as my main interface to the remote server. The reason why I chose to use a server equipped with two Intel Xeon E5-2670 CPUs (8 cores, 2-way <a href="https://en.wikipedia.org/wiki/Simultaneous_multithreading">SMT</a> each for a total of 32 "cores"), 256 GB of RAM, and 8 TB of storage space is that Quartus Prime (the main <a href="https://en.wikipedia.org/wiki/Electronic_design_automation">EDA</a> tool we'll be using) along with support for the Arria 10 device has the recommended system requirements of 18-48 GB of RAM,  

It's quite a humbling experience to set this up for the first time, and you'll certainly think twice before sending another angry ticket to your organization's IT support desk.


- Download & install necessary tools
- Set up license manager

### Understand the software you wish to accelerate
This is perhaps the most important step in the entire process. Time spent here will directly affect your approach to the problem, your ability to identify critical system components, your FPGA peripheral hardware design, and ultimately your success in imporving overall system performance. A philosophy that I adhere to is that one's understanding of how a system works is directly proportional to that individual's ability to debug issues and improve the system's design. This is especially true when you're attempting to replace components of software with hardware. The key here is to **understand the movement of and operations on data** in your algorithm. Depending on how the software was written, whether you wrote it, and your experience level as a software engineer, this may be easy or difficult to comprehend. Nonetheless, take the time to

## Hardware Development

### Implement the FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim)
- FPGA development flow (Quartus Prime is the main tool in this step, ModelSim for funcitonal verification)
- RTL design is an art
- Choosing an HDL: Verilog-2005(?) vs. SystemVerilog
- Already enough complexity: see which HW modules are available to you in the IP Catalog
- What determine's top-level I/O? - ARM AMBA AXI4 specification

### System integration (Qsys)
- Qsys is the tool used here
- Training that helps: Custom IP Development Using Avalon and AXI Interfaces
- Interfaces (clock, reset, interrupts, Avalon, AXI, conduits)
- Most powerful Qsys tool: auto-generated interconnect (you develop an AXI slave interface, simply connect to AXI master component)

## Software Development

### Creating an FPGA peripheral-aware bootable Linux image
- Discuss why running Linux is important (mimic's real datacenter setting)
- Talk about Yocto Project, embedded Linux, etc.
- Angstrom Linux distribution maintained for the Arria 10, other Altera boards
- Working with Linux source code, configuring, compiling, and zImage for bootable microSD card
- Overview of the boot process
- Rocketboards.org training on creating the U-Boot bootloader, Linux device tree, rootfs, and formatting the microSD card

### Writing a device driver (the interface between FPGA peripherals and user space applications)
- Altera SoC Workshop Series training
- Linux Device Drivers
- misc. device driver

### Closing the loop: modifications to user space applications
- Device driver provides the interface
- Replace functions implementing computaiton w/ statements sending data to FPGA peripheral

### Profiling the HW-accelerated system
- clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &res)
- perf
- symbols, stack traces, cross-compilation
