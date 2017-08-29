## Preface
So, you want to build your very own hardware accelerator, or more precisely, HW-accelerated system. Perhaps the desire stems from bottlenecks in software you routinely use, and the frequent coffee breaks are beginning to attract dubious looks from your coworkers. Another possibility is that today, your curiosity has exceeded a certain threshold, and satisfaction only comes in the form of a deep intuition for how sofwtare is executed by the underlying hardware in a given system. My last conjecture is that you finally got an FPGA-wielding embedded system and wish to learn more about which system-level optimization knobs are at your disposal. Regardless of the reason, you're here, and I hope this example fulfills your needs as a starting point for further extension, as a template for your own HW accelerator project, or even as fundamental training. For me, I'm just happy knowing that 15 months of work has helped at least one other individiual.

While the knowledge and experience gained will be extremely rewarding, udertaking a project of this size requires commitment, perseverance, and the ability to debug without the assistance of Stack Overflow or similar forums. The last requirement is a necessity (and a good skill to have in general) for two reasons:
1. Development at this low level is not heavily documented. The best resource to my knowledge for community support can be found at https://rocketboards.org/. 
2. This shows you really understand how things work. This is especially important when working with embedded systems where bugs could not only arise from the software applicaiton, but also from incompatible system libraries, device drivers, limited system resources, misinterpreting the timing requirements of handshake signals in a bus protocol, errors in your RTL code, and differences between expected and actual behavior of HW modules to name a few.

## Introduction
- Talk about Arria 10, protocol buffers, overview of my project
- Training/resources available (Altera/Intel free online training, rocketboards.org, Altera SoC Workshop Series, manuals)
- Writing your own RTL vs. OpenCL
- Concepts/development process transfers to other boards, other projects

After having gone through the experience myself, I've developed the following list of major steps as a guideline for any type of HW acceleration work. The remainder of this tutorial will provide in-depth coverage of each of these steps as their own section:

#### High-level steps in building a HW-accelerated system:
1. Choosing a development board
2. Set up your development environment (EDA software, licensing, RealVNC)
3. Understand the software you wish to accelerate
4. Implement the FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim) 
5. System integration (Qsys)
6. Create an FPGA peripheral-aware bootable Linux image
7. Write a device driver (the interface between FPGA peripherals and user space applications)
8. Closing the loop: modify the software to redirect data to the FPGA peripheral for processing
9. Profile, benchmark HW-accelerated system performance

This work can be quite challenging. It's essential to spend time figuring out a routine that works for you and how to maintain mental capacity and creativity over long periods of time. For me, taking breaks when I can feel the processor that is my brain overheating definitely helps. Another source of longevity are inspiring words of world-renowned Katy Perry: https://www.youtube.com/watch?v=QGJuMBdaqIw. 

## Choosing a development board
The first step is to choose a board that's appropriate for your project. Since my objective was to improve the performance of a datacenter application by building a hardware accelerator for offloading core computation in the software library, I was in search of a board that closely resembles a <a href="https://en.wikipedia.org/wiki/White_box_(computer_hardware)">white box</a> server and that's capable of running Linux. The <a href="https://www.altera.com/products/boards_and_kits/dev-kits/altera/arria-10-soc-development-kit.html">Arria 10 SoC Development Kit</a> seemed to be the perfect fit, and this is the board I chose.

![alt text](https://rocketboards.org/foswiki/pub/Documentation/Arria10SoCDevelopmentKit/arria10_soc_kit.png)

The Arria 10 SoC's two main components are a 20 nm dual-core ARM Cortex-A9 processor (called the Hard Processor System, or HPS) and the Arria 10 FPGA fabric. This combination of an applicaiton processor and FPGA fabric in a single integrated circuit is ideal for implementing a HW-accelerated system where custom RTL implemented and running on the FPGA works closely with a modified version of the datacenter application running on the CPU. The overarching principle is to the offload computationally-intensive components of an algorithm onto custom hardware that [significantly] outperforms the identical sequence of instructions typically executed by the CPU. 

Although it is easiest to replicate and extend this work using an Arria 10 SoC Development Kit, the HW accelerator is written in Verilog and this along with other components of the design are transferable to other ARM-based systems with adjustment (e.g., replacing the Altera IP Cores FIFO components I used with your own FIFO implementation). Note however, this could be very challenging to do and requires ingenuity on the user's end. Therefore, while some aspects of the implementation are inevitably specific to the Arria 10 SoC Development Kit and toolset I used, the high-level concepts in this tutorial are universal to all embedded systems work. 

## Set up your development environment (EDA software, licensing, RealVNC)
- Working with a remote server (CentOS 7, RealVNC)
- Download & install necessary tools
- Set up license manager

## Understand the software you wish to accelerate
This is perhaps the most important step in the entire process. Time spent here will directly affect your approach to the problem, your ability to identify critical system components, your FPGA peripheral hardware design, and ultimately your success in imporving overall system performance. A philosophy that I adhere to is that one's understanding of how a system works is directly proportional to that individual's ability to debug issues and improve the system's design. This is especially true when you're attempting to replace components of software with hardware. The key here is to **understand the movement of and operations on data** in your algorithm. Depending on how the software was written, whether you wrote it, and your experience level as a software engineer, this may be easy or difficult to comprehend. Nonetheless, take the time to

## Implement the FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim)
- FPGA development flow (Quartus Prime is the main tool in this step, ModelSim for funcitonal verification)
- RTL design is an art
- Choosing an HDL: Verilog-2005(?) vs. SystemVerilog
- Already enough complexity: see which HW modules are available to you in the IP Catalog
- What determine's top-level I/O? - ARM AMBA AXI4 specification

## System integration (Qsys)
- Qsys is the tool used here
- Training that helps: Custom IP Development Using Avalon and AXI Interfaces
- Interfaces (clock, reset, interrupts, Avalon, AXI, conduits)
- Most powerful Qsys tool: auto-generated interconnect (you develop an AXI slave interface, simply connect to AXI master component)

## Create an FPGA peripheral-aware bootable Linux image
- Discuss why running Linux is important (mimic's real datacenter setting)
- Talk about Yocto Project, embedded Linux, etc.
- Angstrom Linux distribution maintained for the Arria 10, other Altera boards
- Working with Linux source code, configuring, compiling, and zImage for bootable microSD card
- Overview of the boot process
- Rocketboards.org training on creating the U-Boot bootloader, Linux device tree, rootfs, and formatting the microSD card

## Write a device driver (the interface between FPGA peripherals and user space applications)
- Altera SoC Workshop Series training
- Linux Device Drivers
- misc. device driver

## Closing the loop: modify the software to redirect data to the FPGA peripheral for processing
- Device driver provides the interface
- Replace functions implementing computaiton w/ statements sending data to FPGA peripheral

## Profile, benchmark HW-accelerated system performance
- clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &res)
- perf
- symbols, stack traces, cross-compilation
