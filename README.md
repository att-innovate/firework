## Preface
So, you want to build your very own hardware (HW) accelerator, or more precisely, HW-accelerated system. Perhaps this desire stems from bottlenecks in the software (SW) you routinely use, and the frequent coffee breaks are beginning to attract dubious looks from your coworkers. Another possibility is that today, your curiosity has exceeded a certain threshold, and satisfaction only comes in the form of a deep intuition for how sofwtare is executed by the underlying hardware in a given system. My last conjecture is that you finally got your hands on an FPGA-wielding embedded system and wish to learn more about which system-level optimization knobs are at your disposal. Regardless of the reason, you're here, and I hope this tutorial fulfills your needs as either a starting point for further extension of this work, a template for your own HW accelerator project, or even as fundamental training. For me, I'm just happy knowing that 15 months of work has helped at least one other individiual.

In this tutorial, my goal is to cover the development of a complete system - from desigining a HW accelerator block at the RTL level (implemented and running in the FPGA fabric) to system integration (with an ARM CPU, system memory, etc.) to writing a device driver (which provides a kernel-level interface to the newly developed HW) and ultimately, the necessary modifications to user space applications. While the knowledge gained and experience acquired will be extremely rewarding, udertaking a project of this size requires commitment, perseverance, and the ability to debug without the assistance of Stack Overflow or similar forums. The last requirement is a necessity (and a good skill to have in general) for two reasons:
1. Development at this level is not heavily documented. A Google search for specific error messages might yield zero results. Perhaps Firework will spark a new wave of interest in system design by making the task seem less daunting. Often your only source of information will be technical reference manuals. The best resource to my knowledge for community support can be found at <a href="https://rocketboards.org/">RocketBoards.org</a>.
2. It shows you really understand how things work. This is especially important when working with embedded systems where bugs could not only arise from the <a href="https://en.wikipedia.org/wiki/User_space">user space</a> applicaiton, but also from incompatible system libraries, a device driver, limited system resources, misinterpreting the timing requirements of handshake signals in a bus protocol, errors in your RTL code, or (my personal favorite) even from differences between expected and actual behavior of HW blocks.

## Introduction
Firework is an *open source HW-accelerated system design* built for offloading <a href="https://developers.google.com/protocol-buffers/">Protocol Buffer</a> serialization code from the system's CPU. (That was a loaded sentence, I know. If I did my job correctly, by the end of this tutorial it'll be crystal clear.) Generally speaking, Firework demonstrates the process of identifying components of some software as candidates for HW acceleration, designing HW to efficiently perform (and replace) that computation, and building a computer system that deviates from the traditional paradigm of executing instructions sequentially on a CPU. Before I continue, its necessary to give the term *system* a precise defintion. In the context of HW acceleration, I define a system as the combination of hardware and software that together perform a specific function. Therefore, the goal of this and any other HW accelerator project is to improve a system's performance through the co-optimization of the HW and SW that comprise the system. It's also worth nothing that the HW community distinguishes between *HW acceleration* and *offloading*, although the precise difference is a bit ambiguous. I classify Firework as an attempt to perform the latter since I move the computation of Protocol Buffer serialization from the system's CPU to a custom processor implemented in the FPGA fabric that's built for this task.

One of the goals of Firework was to target not just any software, but an application belonging to a production datacenter. That way, the developed HW-accelerated system could theoretically replace a generic server(s) supporting that application. The first step naturally was to identify such an application. Fortunately, I came across the paper <a href="https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/44271.pdf">Profiling a warehouse-scale computer</a> whose authors essentially did the search for me - they performed a three-year study on the workloads running across Google's datacenters and were able to identify common building blocks (i.e., low-level software) which they've coined the *datacenter tax*. This datacenter tax "can comprise nearly 30% of cycles across jobs running in the fleet, which makes its constituents prime candidates for hardware specialization in future server systems-on-chips". Perfect! The following figure pulled from the paper shows these constituents and their individual contributions to CPU cycles consumed:

![alt text](resources/figure_4.png)

This is what led to my choice of Protocol Buffers ('protobuf' in the figure) as the candidate software for HW acceleration. This software, which accounts for ~3-4% of all CPU cycles consumed across its datacenters, is Google's "language-neutral, platform-neutral extensible mechanism for serializing structured data". In other words, the Protocol Buffer software (compiler + runtime library) is used to <a href="https://en.wikipedia.org/wiki/Serialization">serialize</a> structured data (e.g., a C++ object) into a stream of bytes that could then be stored or sent (via a <a href="https://en.wikipedia.org/wiki/Remote_procedure_call">RPC</a>) to a receiving service that's capable of translating the stream of bytes into the original C++ object. I'll leave it as an exercise for the reader to determine how significant 3-4% freed CPU at Google-scale is in terms of the ability to support additional services in the modern virtualized, resource-sharing world. Before continuing, I recommend reading *Profiling a warehouse-scale computer*, going through the <a href="https://developers.google.com/protocol-buffers/docs/cpptutorial">Protocol Buffers C++ tutorial</a>, and understanding <a href="https://developers.google.com/protocol-buffers/docs/encoding">how Protocol Buffers are encoded</a>.

To implement Firework (i.e., the HW-accelerated system), I used Altera's (<a href="https://newsroom.intel.com/news-releases/intel-completes-acquisition-of-altera/">now Intel's</a>) <a href="https://www.altera.com/products/boards_and_kits/dev-kits/altera/arria-10-soc-development-kit.html">Arria 10 SoC Development Kit</a>. I discuss the reasoning behind choosing this board later in the tutorial in section 1. [Choosing a development board](README.md#1-choosing-a-development-board).

Firework consists of six main components that, together, implement a HW-accelerated system and provide a means of measuring its performance. These components are listed below.

#### Firework's six main components
- [protobuf-serializer](protobuf-serializer/): the RTL design of a *4-stage pipelined, parallel processor* that performs Protocol Buffer serialization, written in Verilog, and packaged as a Quartus Prime project. The nomenclature stems from four pipeline stages in the design, two parallel datapaths for processing incoming varint and raw data, and a controller that consists of seven independent <a href="https://en.wikipedia.org/wiki/Finite-state_machine">finite-state machines</a> (FSMs). Provided also are <a href="http://www.asic-world.com/verilog/art_testbench_writing1.html">testbenches</a> for each of the FSMs as well as the processor as a whole.
- [a10-soc-devkit-ghrd](a10-soc-devkit-ghrd): the Arria 10 SoC <a href="https://rocketboards.org/foswiki/Documentation/A10GSRD151GHRDOverview">Golden Hardware Reference Design (GHRD)</a> modified with the protobuf-serializer processor added as a memory-mapped FPGA peripheral. This too is packaged as a Quartus Prime project (the main SoC subsystem is a Qsys component, more on that later).
- <a href="https://github.com/altera-opensource/linux-socfpga">linux-socfpga</a>: the Linux kernel for the Arria 10 SoC board developed and maintained by Altera. We configure and compile the kernel from source to ensure certain CONFIG options are enabled (e.g., CONFIG_KALLSYMS which provides kernel-level symbols used in system profiling).
- [driver](driver): a platform device driver for the protobuf-serializer FPGA peripheral implemented as a loadable kernel module. This driver provides an interface for modifications necessary to the protobuf runtime library and is ultimately responsible for relaying data from user space memory to the HW peripheral residing in the FPGA.
- [protobuf](protobuf): a fork of Google's <a href="https://github.com/google/protobuf">Protocol Buffers</a> open source project. The runtime library is modified to send data from user space memory to the protobuf-serializer FPGA peripheral for processing rather than the library itself.
- [profiling](profiling): sample protobuf applications and instructions on how to use <a href="http://www.brendangregg.com/perf.html">perf-events</a> on the Arria 10 SoC Development Kit to profile the *HW-accelerated* and *standard* (software/CPU) systems, giving you the ability to compare their performance. Here we "close the loop" (i.e., we finally see how a user space application, compiled once, is executed in both, the *standard* and *HW-accelerated* systems).

Firework describes the implementation of a HW-accelerated system for Protocol Buffer serialization using the Arria 10 SoC Development Kit as a means of implementation. After having gone through this experience myself, I've developed the following list of *general steps involved in any HW accelerator project*, and the remainder of this tutorial provides in-depth coverage of each of these steps as they pertain to my specific project:

#### High-level steps in building a HW-accelerated system
1. [Choosing a development board](README.md#1-choosing-a-development-board)
2. [Setting up your development environment (Installing an OS, VNC server/client, EDA tools, licensing)](README.md#2-setting-up-your-development-environment-installing-an-os-vnc-serverclient-eda-tools-licensing)
3. [Understanding the software you wish to accelerate](README.md#3-understanding-the-software-you-wish-to-accelerate)
4. [Implementing an FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim)](README.md#4-implementing-an-fpga-peripheral-top-level-io-arm-amba-axi4-verilog-quartus-prime-modelsim) 
5. [System integration (Qsys)](README.md#5-system-integration-qsys)
6. [Creating an FPGA peripheral-aware bootable Linux image](README.md#6-creating-an-fpga-peripheral-aware-bootable-linux-image)
7. [Writing a device driver (interface between FPGA peripheral and user space application)](README.md#7-writing-a-device-driver-interface-between-fpga-peripheral-and-user-space-application)
8. [Closing the loop: modifying the user space application](README.md#8-closing-the-loop-modifying-the-user-space-application)
9. [Profiling the HW-accelerated system](README.md#9-profiling-the-hw-accelerated-system)

As a final note, this work can be quite challenging. It's essential to spend time figuring out a routine that works for you and knowing how to maintain mental capacity and creativity over long periods of time. For me, taking breaks when I feel the processor that is my brain overheating definitely helps. Another source of longevity are the inspiring words of world-renowned pop star <a href="https://www.youtube.com/watch?v=QGJuMBdaqIw">Katy Perry</a>.

## Prerequisites

### 1. Choosing a development board
The first step is to choose a board that's appropriate for your specific project and goals. Since my objective was to build a HW-accelerated system that both improves the performance of a datacenter application and alters its execution (freeing the CPU resource), I was in search of a board that could theoretically replace a <a href="https://en.wikipedia.org/wiki/White_box_(computer_hardware)">white box</a> server running Linux in a datacenter environment. The <a href="https://www.altera.com/products/boards_and_kits/dev-kits/altera/arria-10-soc-development-kit.html">Arria 10 SoC Development Kit</a> seemed to be the perfect fit, combining an <a href="https://www.altera.com/products/fpga/arria-series/arria-10/features.html">Arria 10 FPGA</a> with an application processor (a 20 nm dual-core ARM Cortex-A9 MPCore processor) called the <a href="https://www.altera.com/products/soc/portfolio/arria-10-soc/arria10-soc-hps.html">Hard Processor System (HPS)</a> in a single <a href="https://en.wikipedia.org/wiki/System_on_a_chip">system-on-chip (SoC)</a> package. The FPGA fabric could be used to implement a custom <a href="https://en.wikipedia.org/wiki/Register-transfer_level">RTL</a> design and the HPS could be used to support both Linux and an application with which one wishes to accelerate, willfully. Plus, think about how cool you look with one of these bad boys sitting on your desk:

![alt text](resources/arria10_soc_kit.png)

Although it is easiest to replicate and extend this work using an Arria 10 SoC Development Kit, the main component - the *HW accelerator* (or *custom HW* or *custom processor* or *RTL design* or *FPGA peripheral* or [protobuf-serializer](protobuf-serializer/)) - is written in Verilog, and with a few minor modifications, it can be used in other ARM-based systems. This modularity stems from the fact that the FPGA peripheral was designed as an ARM AMBA AXI4 slave peripheral (i.e., its top-level I/O ports implement an ARM AMBA AXI4 slave interface). More details of the design are covered later in section 4. [Implementing the FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim)](README.md#4-implementing-the-fpga-peripheral-top-level-io-arm-amba-axi4-verilog-quartus-prime-modelsim). Note however, using another platform for development would require ingenuity on the user's end.

### 2. Setting up your development environment (Installing an OS, VNC server/client, EDA tools, licensing)
Before we get to the fun, we need to put our IT hats on. Setting up an environment for HW development is primarily influenced by the board you choose, as it'll come with (or recommend) a specific set of <a href="https://en.wikipedia.org/wiki/Electronic_design_automation">EDA tools</a> to use for implementing designs on the board. A secondary influencer are the resources available to you (engineering workstation, remote server, cloud access, etc.). For me, working with the Arria 10 SoC Development Kit meant using <a href="http://dl.altera.com/16.1/?edition=standard&platform=linux&download_manager=direct">Altera's EDA tools</a> on a remote server with which I had access via my <a href="https://en.wikipedia.org/wiki/Local_area_network">LAN</a>. Setting up an environment for designing HW on a remote server is, unfortunately, not a trivial task. Fortunately for you, I went through the process myself and will cover the steps below. Although I'll cover setting up Altera's EDA tools on a remote server in this example, reading though this section will hopefully give you a sense of what it generally takes to set up any HW development environment.

I use the following server, operating system, and <a href="https://en.wikipedia.org/wiki/Virtual_Network_Computing">VNC</a> software (remote desktop) in my setup:
- <a href="http://www.dell.com/downloads/global/products/pedge/dell-poweredge-r720xd-spec-sheet.pdf">Dell PowerEdge R720xd</a> server
- <a href="https://www.centos.org/download/">CentOS 7</a> operating system
- <a href="http://tigervnc.org/">TigerVNC</a> VNC server
- <a href="https://www.realvnc.com/en/connect/download/viewer/">RealVNC VNC Viewer</a> VNC client

and a MacBook Pro as my main interface to the server. Any laptop with the proper VNC client software will suffice, as the development will take place on the server we control remotely. 

The reason why I chose to use a server equipped with two <a href="https://ark.intel.com/products/64595/Intel-Xeon-Processor-E5-2670-20M-Cache-2_60-GHz-8_00-GTs-Intel-QPI">Intel Xeon E5-2670 CPUs</a> (each with 8, <a href="https://en.wikipedia.org/wiki/Simultaneous_multithreading">2-way SMT</a> cores for a total of 32 parallel <a href="https://en.wikipedia.org/wiki/Thread_(computing)">threads</a> of execution), 256 GB of RAM, and ~8.5 TB of storage is that <a href="https://www.altera.com/products/design-software/fpga-design/quartus-prime/overview.html">Quartus Prime</a> - the main EDA tool we'll be using - with support for Arria 10 devices has a recommended system requirement of 18-48 GB of RAM, which my and most other laptops do not have. 

The choice of CentOS 7 as our operating system is less obvious. If you look at the <a href="http://dl.altera.com/requirements/16.1/">Operating System Support</a> for Quartus Prime and other software we'll be using, notice only 64-bit variants of Windows and Red Hat Enterprise Linux (RHEL) are listed as supported operating systems. Well, RHEL isn't free unlike most other Linux distributions (thanks to the 'E') so unless you already have access, CentOS is <a href="https://www.centos.org/about/">RHEL's charitable, upbeat cousin</a>. Although it's not strictly supported, it works. Believe me. If you prefer to use Windows, that's fine; well it's not, but that's beyond the scope of this tutorial and I won't get into it.

It's quite a humbling experience to set up a server for the first time, and you'll certainly think twice before sending the next angry ticket to your organization's IT support desk. Without further ado, here are the steps necessary to set up my development environment.

#### a. Remotely installing CentOS 7 on a Dell PowerEdge R720xd server


#### b. Setting up VNC server and client software

#### c. Installing Altera's EDA tools
1. Download the Quartus Prime Standard Edition version 16.1 tools and supporting Arria 10 device files from <a href="http://dl.altera.com/16.1/?edition=standard&platform=linux&download_manager=dlm3"></a>

#### d. Setting up a license manager


### 3. Understanding the software you wish to accelerate
This is perhaps the most important step in the entire process. Time spent here will directly affect your approach to the problem, your ability to identify critical system components, your FPGA peripheral hardware design, and ultimately your success in imporving overall system performance. A philosophy that I adhere to is that one's understanding of how a system works is directly proportional to that individual's ability to debug issues and improve the system's design. This is especially true when you're attempting to replace components of software with hardware. The key here is to **understand the movement of and operations on data** in your algorithm. Depending on how the software was written, whether you wrote it, and your experience level as a software engineer, this may be easy or difficult to comprehend. Nonetheless, take the time to

## Hardware Development

### 4. Implementing an FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim)
- Writing your own RTL vs. OpenCL
- FPGA development flow (Quartus Prime is the main tool in this step, ModelSim for funcitonal verification)
- RTL design is an art
- Choosing an HDL: Verilog-2005(?) vs. SystemVerilog
- Already enough complexity: see which HW modules are available to you in the IP Catalog
- What determine's top-level I/O? - ARM AMBA AXI4 specification
- Training/resources available (Altera/Intel free online training)

### 5. System integration (Qsys)
- Qsys is the tool used here
- Training that helps: Custom IP Development Using Avalon and AXI Interfaces
- Interfaces (clock, reset, interrupts, Avalon, AXI, conduits)
- Most powerful Qsys tool: auto-generated interconnect (you develop an AXI slave interface, simply connect to AXI master component)
- Training/resources available (Altera/Intel free online training)

## Software Development

### 6. Creating an FPGA peripheral-aware bootable Linux image
- Discuss why running Linux is important (mimic's real datacenter setting)
- Talk about Yocto Project, embedded Linux, etc.
- Angstrom Linux distribution maintained for the Arria 10, other Altera boards
- Working with Linux source code, configuring, compiling, and zImage for bootable microSD card
- Overview of the boot process
- Rocketboards.org training on creating the U-Boot bootloader, Linux device tree, rootfs, and formatting the microSD card

### 7. Writing a device driver (interface between FPGA peripheral and user space application)
- Altera SoC Workshop Series training
- Linux Device Drivers
- misc. device driver

### 8. Closing the loop: modifying the user space application
- Device driver provides the interface
- Replace functions implementing computaiton w/ statements sending data to FPGA peripheral

## Measuring System Performance 
### 9. Profiling the HW-accelerated system
- clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &res)
- perf
- symbols, stack traces, cross-compilation
