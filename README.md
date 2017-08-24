## Preface
So, you want to build your very own hardware accelerator (or more precisely, HW-accelerated system). Perhaps this desire stems from bottlenecks in software you routinely use, and the frequent coffee breaks interleaved with consecutive runs is attracting dubious looks from your coworkers. Another possibility is that today, your curiosity has exceeded a certain threshold, and you won't be satisfied until you develop a deep intuition for how sofwtare is executed by the underlying hardware in your system. My last conjecture is that you finally got an FPGA-wielding embedded system and wish to learn more about which system-level optimization knobs are at your disposal. Regardless of the reason, you're here, and I hope this example fulfills your needs as a starting point for further extension, as a template for your own HW accelerator project, or even as fundamental training. For me, I'm just happy knowing that 15 months of work has helped at least one other individiual.

## Introduction
While the knowledge and experience gained will be extremely rewarding, udertaking a project of this size requires commitment, perseverance, and the ability to debug without the assistance of Stack Overflow or similar forums. The last requirement is a necessity (and a good skill to have in general) for two reasons:
1. Development at this low level is not heavily documented. The best resource to my knowledge for community support can be found at https://rocketboards.org/. 
2. This shows you really understand how things work. This is especially important when working with embedded systems where bugs could not only arise from the software applicaiton, but also from incompatible system libraries, device drivers, limited system resources, misinterpreting the timing requirements of handshake signals in a bus protocol, errors in your RTL code, and differences between expected and actual behavior of HW modules to name a few.

After having gone through the experience myself, I've developed the following list of major steps as a guideline for any type of HW acceleration work. The remainder of this tutorial will provide in-depth coverage of each of these steps as their own section:

[Talk about Arria 10, protocol buffers, overview of my project]

#### High-level steps in building a HW-accelerated system:
1. Choose a development board
2. Set up your development environment (EDA software, licensing, RealVNC)
3. Understand the software you wish to accelerate
4. Implement the FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim) 
5. System integration (Qsys)
6. Create an FPGA peripheral-aware bootable Linux image
7. Write a device driver (the interface between FPGA peripherals and user space applications)
8. Closing the loop: modify the software to redirect data to the FPGA peripheral for processing
9. Profile, benchmark HW-accelerated system performance

This work can be quite challenging. It's essential to spend time figuring out a routine that works for you and how to maintain mental capacity and creativity over long periods of time. For me, taking breaks when I can feel the processor that is my brain overheating helps 

## Choose a development board


## Set up your development environment (EDA software, licensing, RealVNC)


## Understand the software you wish to accelerate
This is perhaps the most important step in the entire process. Time spent here will directly affect your approach to the problem, your ability to identify critical system components, your FPGA peripheral hardware design, and ultimately your success in imporving overall system performance. A philosophy that I adhere to is that one's understanding of how a system works is directly proportional to that individual's ability to debug issues and improve the system's design. This is especially true when you're attempting to replace components of software with hardware. The key here is to **understand the movement of and operations on data** in your algorithm. Depending on how the software was written, whether you wrote it, and your experience level as a software engineer, this may be easy or difficult to comprehend. Nonetheless, take the time to

## Implement the FPGA peripheral (top-level I/O: ARM AMBA AXI4, Verilog, Quartus Prime, ModelSim)


## System integration (Qsys)


## Create an FPGA peripheral-aware bootable Linux image


## Write a device driver (the interface between FPGA peripherals and user space applications)


## Closing the loop: modify the software to redirect data to the FPGA peripheral for processing


## Profile, benchmark HW-accelerated system performance

