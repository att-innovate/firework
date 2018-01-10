## Preface

So, you want to build your very own hardware accelerator, or more precisely, hardware-accelerated system. Perhaps the desire stems from bottlenecks in the software you routinely use, and the frequent coffee breaks are beginning to attract dubious looks from your coworkers. Another possibility is that today, your curiosity has exceeded a certain threshold, and satisfaction only comes in the form of a deep intuition for how software is executed by the underlying hardware in a given system. My last conjecture is that you finally got your hands on an FPGA-wielding development kit and wish to learn more about the system-level optimization knobs that are at your disposal. Regardless of the reason, you're here, and I hope this tutorial fulfills your needs as either a starting point for further extension of this work, a template for your own hardware accelerator project, or even as fundamental training. For me, I'm just happy knowing that 15 months of work has helped at least one other individual.

In this tutorial, my goal is to cover *the development of a complete digital system*: from setting up a development environment with the necessary EDA tools to designing a hardware accelerator at the <a href="https://en.wikipedia.org/wiki/Register-transfer_level">RTL level</a> (and implementing the design in an <a href="https://en.wikipedia.org/wiki/Field-programmable_gate_array">FPGA</a>), system integration (establishing communication between the hardware accelerator and an ARM CPU), writing a device driver (providing <a href="https://en.wikipedia.org/wiki/User_space">user space</a> applications access to the newly developed hardware accelerator) and ultimately, to modifying user space applications such that they utilize the hardware accelerator. While the knowledge gained and experience acquired will be extremely rewarding, undertaking a project of this size requires commitment, perseverance, and the ability to debug without the assistance of <a href="https://stackoverflow.com/tour">Stack Overflow</a> or similar forums. I emphasize the last requirement (and it's a good skill to have in general) for two reasons:
1. *Development at this level is not heavily documented in public forums.* A Google search of a specific error message might yield zero results. Often your only source of information will come from sifting through technical reference manuals <a href="https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/arria-10/a10_5v4.pdf">such as this one</a>. Perhaps Firework will help spark a new wave of interest in open sourcing hardware accelerator and system designs by making this work seem less daunting. The best resource to my knowledge for community support can be found at <a href="https://rocketboards.org/">RocketBoards.org</a>, although this may only be useful for <a href="https://rocketboards.org/foswiki/Documentation/Board">a certain set of development boards</a>.
2. *It shows you really understand how things work.* This is especially important when designing hardware and working with embedded systems, where bugs could not only arise from errors in the user space application but also from the use of incompatible system libraries, the device driver, limited system resources, misinterpreting the timing requirements of handshake signals in a bus protocol, functional errors in your RTL code, or, my personal favorite, from differences between expected and actual behavior of hardware blocks.

Before continuing, I'd like to note that I don't claim to be an expert hardware accelerator/system designer *nor that my design is optimal*; the scope of this project alone is enough to lead to several outcomes (and getting the thing to work was a victory as far as I'm concerned). That's the beauty of open source; several minds are greater than one, and I hope that collaboration and the collective knowledge will lead to new and interesting ideas and perhaps better designs. I welcome any and all feedback and recommendations for improvement!

## Introduction

**Firework** is an *open source hardware-accelerated system* designed for offloading <a href="https://developers.google.com/protocol-buffers/">Protocol Buffer</a> serialization from the system's CPU. (That was a loaded sentence, I know. If I did my job correctly, by the end of this tutorial it'll make much more sense.) Generally speaking, Firework demonstrates the process of identifying components of a software application as candidates for hardware acceleration, designing hardware to efficiently perform (and replace) that computation, and building a system that deviates from the traditional paradigm of executing instructions sequentially on a CPU. Before I continue, it's necessary to give the term **system** a precise definition. In the context of hardware acceleration, I define a system as the combination of hardware and software that together perform a specific function. Therefore, the goal of this and any other hardware accelerator project is to improve a system's performance through the co-optimization of the hardware and software that comprise that system. It's also worth noting that the hardware community distinguishes between *hardware acceleration* and *offloading*, although the precise difference is a bit ambiguous. I classify Firework as an attempt to perform the latter since, in my design, I move the computation involved in Protocol Buffer serialization from the system's ARM CPU to a custom processor (i.e., the hardware accelerator) that's implemented in the system's FPGA fabric.

One goal of Firework was to target software that's deployed across a large-scale, production datacenter. That way, the developed hardware-accelerated system could theoretically replace a generic server (or servers) supporting that software. (This work is part of a larger effort to explore the use of specialized hardware in a datacenter setting.) Naturally, the first step was to identify such a candidate software applicaiton. Fortunately, I came across the paper <a href="https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/44271.pdf">Profiling a warehouse-scale computer</a> whose authors essentially performed the search for me and provided motivation for hardware acceleration as well; in a three-year study of the workloads running across Google's fleet of datacenters, they identified a collection of low-level software, which they've coined the **datacenter tax**, that serve as common building blocks for Google's production services. It was found that this datacenter tax *"can comprise nearly 30% of cycles across jobs running in the fleet, which makes its constituents prime candidates for hardware specialization in future server systems-on-chips."* Perfect! The following figure pulled from the paper identifies these constituents and their individual contributions to the datacenter tax:

![alt text](resources/images/figure_4.png)

This led to my choice of <a href="https://developers.google.com/protocol-buffers/">Protocol Buffers</a> (`protobuf` in the figure above, which accounts for ~3-4% of total CPU cycles consumed across Google's datacenters) as the candidate software for hardware acceleration. Protocol Buffers are Google's "language-neutral, platform-neutral extensible mechanism for serializing structured data". In other words, this software, which consists of a *compiler* and *runtime library*, is used to efficiently <a href="https://en.wikipedia.org/wiki/Serialization">serialize</a> structured data (e.g., a C++ object) into a stream of bytes which may be subsequently stored or transmitted over some network to a receiving service that's able to reconstruct the original data structure from that stream of bytes. Before continuing to the [Prerequisites](README.md#prerequisites) section, I recommend reading <a href="https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/44271.pdf">Profiling a warehouse-scale computer</a> for more context, going through the <a href="https://developers.google.com/protocol-buffers/docs/cpptutorial">Protocol Buffers C++ tutorial</a> to understand how Protocol Buffers are used, and learning how Protocol Buffers are <a href="https://developers.google.com/protocol-buffers/docs/encoding">encoded</a>, as this is essential to the design of the hardware accelerator.

I chose to use Altera's (<a href="https://newsroom.intel.com/news-releases/intel-completes-acquisition-of-altera/">now Intel's</a>) <a href="https://www.altera.com/products/boards_and_kits/dev-kits/altera/arria-10-soc-development-kit.html">Arria 10 SoC Development Kit</a> as the platform for implementing Firework (i.e., the hardware-accelerated system). In the section [Choosing a development board](README.md#1-choose-a-development-board), I'll discuss what led to the choice of this specific board.

Firework consists of *six main components* that together implement a hardware-accelerated system and provide a means of measuring its performance. Each of these components are listed below, and I've provided a brief description of what they are and links to their repositories.

#### Firework's six main components

- [protobuf-serializer](protobuf-serializer/): the **hardware accelerator**. This repository contains the RTL design of a *4-stage pipelined, parallel processor* that performs Protocol Buffer serialization, written in Verilog, and packaged as a Quartus Prime project. The nomenclature stems from four pipeline stages in the design, two parallel datapaths for processing incoming varint and raw data, and a controller that consists of seven independent <a href="https://en.wikipedia.org/wiki/Finite-state_machine">finite-state machines</a> (FSMs). Also provided are several <a href="http://www.asic-world.com/verilog/art_testbench_writing1.html">testbenches</a> to verify the logic of each FSM as well as the processor as a whole.
- [a10-soc-devkit-ghrd](a10-soc-devkit-ghrd): the **system design**. This repository contains a modified Arria 10 SoC <a href="https://rocketboards.org/foswiki/Documentation/A10GSRD151GHRDOverview">Golden Hardware Reference Design (GHRD)</a> with the *protobuf-serializer* hardware accelerator added as a memory-mapped FPGA peripheral. This too is packaged as a Quartus Prime project with the main SoC subsystem being a Qsys system design.
- <a href="https://github.com/altera-opensource/linux-socfpga">linux-socfpga</a>: the **Linux kernel**. This repository contains the Linux kernel, modified and maintained by Altera, for use with Arria 10 SoC platforms. We'll configure and compile the kernel from source to enable certain `CONFIG` options (e.g., `CONFIG_KALLSYMS` which provides kernel-level symbols) that are needed to profile the system.
- [driver](driver): the **device driver**. This repository contains the source code of a *platform device driver* for the *protobuf-serializer* hardware accelerator. This driver, a loadable kernel module, provides an interface to the newly developed hardware accelerator and hence, specifies the modifications that need to be made to the *Protocol Buffer runtime library*. It's ultimately responsible for relaying data from/to user space to/from the hardware accelerator that resides in the FPGA.
- [protobuf](protobuf): the **modified Protocol Buffer runtime library**. This repository is a fork of version `v3.0.2` of Google's <a href="https://github.com/google/protobuf">Protocol Buffers</a> open source project. The runtime library is modified to send data from user space memory to the *protobuf-serializer* hardware accelerator for serialization (via the device driver), replacing the code that otherwise performed that serialization on the CPU.
- [profiling](profiling): the Protocol Buffer **test applications** and collected **profiling data**. This directory contains test applications that are executed on the Arria 10 SoC in conjunction with <a href="http://www.brendangregg.com/perf.html">`perf`</a> to collect profiling data. The profiling data gives us the ability to understand and compare the *hardware-accelerated* system's performance to that of a *standard* software/CPU system. Here we finally see how a user space application is executed on top of the *hardware-accelerated* system.

Although Firework specifically covers the design of a hardware accelerator for *Protocol Buffer serialization* using an *Arria 10 SoC Development Kit* as the platform for implementation, I made an effort to generalize the design process. The following sequence of high-level steps serve as a general approach to *any hardware accelerator project*, and the remainder of this tutorial provides in-depth coverage of each of these steps as they pertain to Firework.

#### High-level steps in building a hardware-accelerated system

1. [Choose a development board](README.md#1-choose-a-development-board)
2. [Set up your development environment (OS, VNC server/client, EDA tools, licensing)](README.md#2-set-up-your-development-environment-os-vnc-serverclient-eda-tools-licensing)
3. [Understand the software you wish to accelerate](README.md#3-understand-the-software-you-wish-to-accelerate)
4. [Design and Implement the hardware accelerator (FPGA peripheral)](README.md#4-design-and-implement-the-hardware-accelerator-fpga-peripheral) 
5. [System integration (Arria 10 GHRD)](README.md#5-system-integration-arria-10-ghrd)
6. [Create an FPGA peripheral-aware Linux image](README.md#6-create-an-fpga-peripheral-aware-linux-image)
7. [Write a device driver (interface between FPGA peripheral and user space application)](README.md#7-write-a-device-driver-interface-between-fpga-peripheral-and-user-space-application)
8. [Closing the loop: modify the user space application](README.md#8-closing-the-loop-modify-the-user-space-application)
9. [Profiling the hardware-accelerated system](README.md#9-profiling-the-hardware-accelerated-system)

I have one final note before we continue: this work can be quite challenging. It's essential to figure out a routine that works for you and knowing how to maintain a mental capacity for creativity over long periods of time, as this work is largely an art. For me, taking breaks when I feel the processor that is my brain overheating definitely helps. Another source of longevity are the inspiring words of world-renowned pop star <a href="https://www.youtube.com/watch?v=QGJuMBdaqIw">Katy Perry</a>. Good luck!

## Prerequisites

Although not explicitly listed as a step, you should already have a project in mind or at least an idea of which software or algorithm you wish to accelerate. Otherwise, follow along with my choice of Protocol Buffers as described in the introduction and used throughout this tutorial.

### 1. Choose a development board

The first step is to choose a board that's appropriate for your project and goals. Since my objective was to build a hardware-accelerated system for a *datacenter application* that both, improves performance and *frees the CPU resource*, I was in search of a board that's capable of running Linux and could theoretically replace a <a href="https://en.wikipedia.org/wiki/White_box_(computer_hardware)">white box</a> server in a datacenter setting. The <a href="https://www.altera.com/products/boards_and_kits/dev-kits/altera/arria-10-soc-development-kit.html">Arria 10 SoC Development Kit</a> seemed to fit this description perfectly; it combines an <a href="https://www.altera.com/products/fpga/arria-series/arria-10/features.html">Arria 10 FPGA</a> with a <a href="https://developer.arm.com/products/processors/cortex-a/cortex-a9">dual-core ARM Cortex-A9</a> processor (called the <a href="https://www.altera.com/products/soc/portfolio/arria-10-soc/arria10-soc-hps.html">Hard Processor System, or HPS)</a> in a single <a href="https://en.wikipedia.org/wiki/System_on_a_chip">system-on-chip (SoC)</a> package. The FPGA fabric could be used to implement a custom <a href="https://en.wikipedia.org/wiki/Register-transfer_level">RTL</a> design that performs Protocol Buffer serialization while the HPS could be used to support both Linux and the user space application. Plus, think about how cool you'd look with one of these bad boys sitting on your desk:

![alt text](resources/images/arria10_soc_kit.png)

Although it is easiest to replicate and extend Firework using the Arria 10 SoC Development Kit, the main component - [protobuf-serializer](protobuf-serializer/) (i.e., the *hardware accelerator*) - is written in <a href="https://en.wikipedia.org/wiki/Verilog">Verilog</a> (with the exception of the <a href="https://en.wikipedia.org/wiki/FIFO_(computing_and_electronics)">FIFOs</a> used in the design - I pulled them from <a href="https://www.altera.com/en_US/pdfs/literature/ug/archives/ug-fifo-14.1.pdf">Altera's IP Cores library</a>) and is compatible with other ARM-based systems. The <a href="https://en.wikipedia.org/wiki/Modularity">modularity</a> of the hardware accelerator stems from the fact that it's designed as an <a href="https://www.arm.com/products/system-ip/amba-specifications">ARM AMBA AXI</a> *slave peripheral* (i.e., its top-level I/O ports implement an AXI <a href="https://en.wikipedia.org/wiki/Master/slave_(technology)">slave interface</a>) and ARM CPUs serve as AXI *masters*. More details of the hardware accelerator design and ARM AMBA AXI bus protocol are covered in the sections [Designing and Implementing the hardware accelerator (FPGA peripheral)](README.md#4-design-and-implement-the-hardware-accelerator-fpga-peripheral) and [System integration (Arria 10 GHRD)](README.md#5-system-integration-arria-10-ghrd).

At a minimum, you'll need a board with an FPGA (i.e., programmable logic) to implement a hardware accelerator. Other board requirements are specific to your project and goals. Questions you might ask to determine these requirements include:

- Is it a standalone algorithm or component of a larger software project I wish to accelerate? (i.e., do I need a CPU?)
- Is it a bare metal or Linux application (i.e., do I require the use of an operating system)?
- Am I replacing existing hardware? How does my design fit in to the larger system?
- Does it require network access?
- Am I working with large amounts of data? What are my storage requirements? 
- Which bottlenecks in the algorithm/software do I wish to alleviate?
- Would a custom hardware design outperform the existing CPU/memory architecture?

Don't underestimate the importance of this step. Acquiring a board can be an investment, and its fit with your project will certainly impact its success. Spending time asking and answering questions like these will also help to reaffirm your understanding of your project and goals.

### 2. Set up your development environment (OS, VNC server/client, EDA tools, licensing)

Before we get to the fun, we need to put our IT hats on. The next step is to set up your *hardware development environment*. Your setup is primarily going to be influenced by the development board you choose, the corresponding set of <a href="https://en.wikipedia.org/wiki/Electronic_design_automation">EDA tools</a> needed to implement designs on that board, and the computing resources available to you. The complexity of your project's design could also influence your setup; larger, more complex designs might require you to purchase premium, licensed versions of the EDA tools for full functionality. (Personally, I think this outdated business model is something the hardware industry needs to work on since the cost of the development board and software licenses alone adds yet another barrier to innovation in the hardware space. I'm happy to see Amazon taking steps in the right direction; they've begun rolling out <a href="https://aws.amazon.com/ec2/instance-types/f1/">F1 Instances</a> in their EC2 cloud providing access to Xilinx FPGAs for hardware acceleration. I haven't tried using them myself, but I imagine it makes getting started with a hardware accelerator project much easier and cheaper than via the method I describe below.) 

For me, working with the Arria 10 SoC Development Kit meant installing then-Altera's <a href="http://dl.altera.com/?edition=standard&platform=linux&download_manager=direct">EDA tools</a> on a remote server which I had access to via my company's <a href="https://en.wikipedia.org/wiki/Local_area_network">LAN</a>. As it turns out, setting up a hardware development environment on a remote server is not a trivial task. Fortunately for you, I've gone through the process and will cover the steps below. Although your setup may be different (board, tools, etc.), hopefully this section will give you an idea of what it takes to set up any environment.

I used the following server, operating system, and <a href="https://en.wikipedia.org/wiki/Virtual_Network_Computing">VNC</a> software (for remote desktop access) in my setup:
- <a href="http://www.dell.com/downloads/global/products/pedge/dell-poweredge-r720xd-spec-sheet.pdf">Dell PowerEdge R720xd</a> (server where the EDA tools are installed)
- <a href="https://www.centos.org/download/">CentOS 7</a> (free operating system compatible with the EDA tools)
- <a href="http://tigervnc.org/">TigerVNC</a> (VNC server software running on the server so it can be remotely accessed)
- <a href="https://www.realvnc.com/en/connect/download/viewer/">RealVNC VNC Viewer</a> (VNC client software running on my laptop)

My macbook served as the sole interface to the remote server where the hardware development is performed and to the Arria 10 SoC Development Kit (via a terminal + serial connection) which sat on my desk. Note that any laptop with the proper VNC client and serial communication software (<a href="https://en.wikipedia.org/wiki/Minicom">minicom</a>, <a href="http://www.putty.org/">PuTTY</a>, etc.) installed will work. To this day, I'm still fascinated by the setup I ended up building: 3 computers, 2 geographic locations, and 1 interface to access them all:

![alt text](resources/images/hw-dev-env.png)

In the picture above, the monitor displays the remote server's CentOS 7 desktop with Quartus Prime open, and the terminal opened in the laptop's display shows the Arria 10 SoC booting Linux. The reason why I used a server equipped with two <a href="https://ark.intel.com/products/64595/Intel-Xeon-Processor-E5-2670-20M-Cache-2_60-GHz-8_00-GTs-Intel-QPI">Intel Xeon E5-2670 CPUs</a> (each with 8, <a href="https://en.wikipedia.org/wiki/Simultaneous_multithreading">2-way SMT</a> cores), 256 GB of RAM, and 8 TB of storage is that <a href="https://www.altera.com/products/design-software/fpga-design/quartus-prime/overview.html">Quartus Prime</a> - the main EDA tool we'll be using for hardware development - has a "recommended system requirement" (...is it *recommended* or *required*?) of 18-48 GB of RAM when working with Arria 10 devices. My laptop (and I'm guessing most others) are simply not powerful enough to support this software in a Linux virtual machine. I also know from experience that compiling hardware designs can take quite some time, so 32 parallel <a href="https://en.wikipedia.org/wiki/Thread_(computing)">threads</a> of execution will definitely come in handy if fully utilized (hint: `-j 32` tells `make` to <a href="https://www.gnu.org/software/make/manual/html_node/Parallel.html">execute 32 recipes in parallel</a>).

The reason why I chose CentOS 7 as the operating system to install on the server is less obvious. If you look at the <a href="http://dl.altera.com/requirements/16.1/">Operating System Support</a> for Quartus Prime and other EDA tools we'll be using, notice that only 64-bit variants of the <a href="https://www.microsoft.com/en-us/windows/">Windows</a> and <a href="https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux">Red Hat Enterprise Linux (RHEL)</a> operating systems are supported. Well, unlike most other Linux distributions, RHEL isn't free (thanks to the <a href="https://en.wikipedia.org/wiki/Enterprise_software"'E'</a>) so unless you already have access to it, CentOS is <a href="https://www.centos.org/about/">RHEL's altruistic cousin</a>. Although CentOS 7 is not explicitly supported, it works. Believe me. If you prefer to use Windows, that's fine too (well it's not, but that's beyond the scope of this tutorial).

It's quite a humbling experience to set up a server for the first time, and you'll certainly think twice before sending the next angry ticket to your IT support desk. Without further ado, here are the steps it took to set up my development environment.

#### Remotely installing CentOS 7 on a Dell PowerEdge R720xd server

To access the remote server, we'll initially use its built-in <a href="http://www.dell.com/learn/us/en/15/solutions/integrated-dell-remote-access-controller-idrac">integrated Dell Remote Access Controller (iDRAC)</a>. This tool has many powerful features, including the ability to monitor logged events, power cycle the server, and even install an OS - all remotely. Assuming the server is connected to your <a href="https://en.wikipedia.org/wiki/Local_area_network">LAN</a>, has been assigned an <a href="https://en.wikipedia.org/wiki/IP_address">IP address</a>, and the iDRAC is enabled, open any web browser and enter its IP address to access the iDRAC login screen. It should look something like this:

![alt text](resources/images/iDRAC.png)

If this is your first time using the iDRAC, the <a href="http://en.community.dell.com/techcenter/b/techcenter/archive/2013/07/16/idrac7-now-supports-default-password-warning-feature">default username and password</a> are **root** and **calvin**, respectfully. When you log in, you'll see a summary page with several tabs (on the left side of the page and on the top of some pages) that provide a plethora of stats/info about your server. Now, we're ready to use the iDRAC to remotely install CentOS 7 on the server.

1. Download the <a href="https://www.centos.org/download/">CentOS 7 DVD ISO</a> image. Choose *DVD* instead of *Minimal* since we'll need to install a <a href="https://www.gnome.org/">GNOME Desktop</a> on the server.

2. Log in to the iDRAC and go to the *System Summary* page (default page upon login).

3. In the *System Summary* > *Virtual Console Preview* window, click **Launch**. This will download a Virtual Console Client called *viewer.jnlp*.

![alt text](resources/images/launch.png)

4. Run the *viewer.jnlp* Java application. Your computer may complain about it being from an unidentified developer, but there's a way around this. Right click *viewer.jnlp* > *Open With* > *Java Web Start (default)* and click **Open** in the window that appears.

![alt text](resources/images/viewer-jnlp.png)

5. This will open another window, *Security Warning*. Click **Continue**.

![alt text](resources/images/security-warning.png)

6. You can never be too cautious. This will open a new *Warning - Security* window that asks, *Do you want to run this application?* I think you know the answer. Click **Run**.

![alt text](resources/images/are-you-sure.png)

7. Great, we've finally opened the Virtual Console Client! Click anywhere in the window so that its menu appears in the <a href="https://support.apple.com/en-us/HT201956">OS X menu bar</a> at the top of your screen. Select *Virtual Media* > *Connect Virtual Media*. I couldn't take a screenshot of this step because when the Virtual Console Client is in focus, it captures all keyboard events. See the menu bar in the screenshot below.

![alt text](resources/images/menu-bar.png)

8. Once connected, select *Virtual Media* > *Map CD/DVD ...* and select the CentOS 7 ISO image we just downloaded. Then click **Map Device**.

![alt text](resources/images/select-iso.png)

9. In the Virtual Console Client menu again, select *Next Boot* > *Virtual CD/DVD/ISO*. Click **OK** in the window that appears. This tells the server to boot from the CentOS 7 installer ISO we downloaded on the next boot.

![alt text](resources/images/next-boot.png)

10. In the Virtual Console Client menu, select *Power* > *Reset System (warm boot)*. You'll see "No Signal" appear on the window followed by the CentOS 7 installer screen when the server finishes rebooting. With *Install CentOS 7* highlighted, press **enter** to begin installation.

![alt text](resources/images/hello-centos.png)

11. Follow the promts until you get to the *Software Selection* window. Select *GNOME Desktop* as your Base Environment. Select the *Legacy X Window System Compatibility*, *Compatibility Libraries*, and *Development Tools* add-ons in the list to the right. Click **Done** when your window looks like the one below.

![alt text](resources/images/software-selection.png)

12. Select a disk to install to, select *Automatically configure partitioning.*, and (optionally) encrypt your data; I didn't. Click **Done** and proceed with the installation by selecting **Begin Installation** in the main menu. 

![alt text](resources/images/partition.png)

13. During the installation, it'll ask you to create a user account. Make the user an **administrator** and **set the root password**. DON'T FORGET TO SET THE ROOT PASSWORD. We'll need root access when installing the VNC server <a href="https://en.wikipedia.org/wiki/Daemon_(computing)">daemon</a>. Click **Reboot** when the installation completes and voila!

![alt text](resources/images/users.png)

The server is now running CentOS 7. In the initial boot, it'll ask you to accept a license. Follow the prompts on the screen to accept the license, let it finish booting, and log in as the user you just created. Keep the Virtual Console Client open; we'll use it to set up the VNC server/client software in the next step.

#### Setting up VNC server and client software

If you're not familiar with <a href="https://en.wikipedia.org/wiki/Virtual_Network_Computing">VNC</a>, the basic idea is that you're interacting with a remote computer's desktop environment. That is, your keyboard and mouse events are sent to that computer over the network, and the corresponding GUI actions are relayed back to your screen. This is useful when you need to remotely access an application that has a GUI. As you may have guessed, this is the case of Quartus Prime and other EDA tools we'll be using.

I used <a href="http://tigervnc.org/">TigerVNC</a> as the *server* software running on the Dell PowerEdge R720xd and <a href="https://www.realvnc.com/en/connect/download/viewer/">RealVNC VNC Viewer</a> as the *client* softawre running on my macbook. I followed <a href="https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-remote-access-for-the-gnome-desktop-on-centos-7">this tutorial</a> by Sadequl Hussain to get the VNC setup working for me, and I've summarized the steps below. I recommend going through his tutorial as it does a great job explaining each step in detail!

##### VNC server

1. Using the Virtual Console Client from the previous section, make sure you're logged in as the user you created and open a terminal. First, let's install the TigerVNC server software.

```
sudo yum install tigervnc-server
```

2. The previous step creates a template <a href="https://www.freedesktop.org/software/systemd/man/systemd.service.html">service unit configuration file</a> for the `vncserver` service in `/lib/systemd/system/`. We need to copy this file to `/etc/systemd/system` and make a few modifications in order to have <a href="https://www.freedesktop.org/wiki/Software/systemd/">systemd</a> automatically start this service for the logged in user when the server is reset or turned on.

```
sudo cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:5.service
```

3. Using the text editor of your choice (e.g., `vim`), open the file and replace every `<USER>` instance with the name of the user you created. I created a user with the name `fpga` and highlight where those changes are made in the screenshot below. Also add the option `-geometry 2560x1440` to the `ExecStart=` line replacing `2560x1440` with the resolution of the screen you plan to run the VNC Viewer client on. This will make full screen mode look pretty on your laptop or monitor.

![alt text](resources/images/unit-config.png)

4. Use <a href="https://www.freedesktop.org/software/systemd/man/systemctl.html">systemctl</a> to reload the systemd manager configuration.

```
sudo systemctl daemon-reload
```

5. Enable the `vncserver` unit instance. Note the number `5` in `vncserver@:5.service` was chosen arbitrarily but means the `vncserver` running for this user will be listening for incoming connections on port `5905`.

```
sudo systemctl enable vncserver@:5.service
```

6. Configure the <a href="https://www.linode.com/docs/security/firewalls/introduction-to-firewalld-on-centos">firewall used by CentOS 7</a> to allow traffic through port `5905`.

```
sudo firewall-cmd --permanent --zone=public --add-port=5905/tcp
sudo firewall-cmd --reload
```

7. In the terminal, run `vncserver` and it'll ask you to set a password for opening VNC connections with this user. Note, this should be from the user's CentOS 7 login password.

8. With all the configurations made, let's make sure `vncserver` is running for this user before setting up the VNC Viewer client software.

```
sudo systemctl daemon-reload
sudo systemctl restart vncserver@:5.service
sudo systemctl status vncserver@:5.service 
```

You should see `active (running)` in the output of the last command:

![alt text](resources/images/systemctl-status.png)

##### VNC client

1. Now that we have our VNC server running, let's set up the VNC client software on the device we'll use to remotely access the server (macbook for me). On your laptop, download the <a href="https://www.realvnc.com/en/connect/download/viewer/">RealVNC VNC Viewer</a> client, install, and open it. In the *VNC Server* field, enter `127.0.0.1:5900` but don't click **Connect** just yet. 

![alt text](resources/images/vnc-viewer.png)

If you're familiar with computer networking, you may be wondering why we entered the IP address of the <a href="https://en.wikipedia.org/wiki/Localhost">localhost</a> and port `5900` instead of the IP address of our remote server and port `5905` (the port we set the VNC server to listen to for incoming connections). That's because after the initial authentication, all data communicated between the VNC server and client is unencrypted and hence susceptible to interception. To secure this communication channel, we'll set up an <a href="https://en.wikipedia.org/wiki/Tunneling_protocol">SSH tunnel</a> encrypting the data communicated over the network.

2. Open a terminal and enter the following command, replacing `<ip-address>` with the IP address of your server and `<user>` with the name of user you created when installing CentOS 7. 

```
ssh -L 5900:<ip-address>:5905 <user>@<ip-address> -N
```

It'll ask for the user's CentOS 7 password. Enter the password and it should leave the terminal in a hanging state - this means we've established our SSH tunnel and are ready to connect to the VNC server.

![alt text](resources/images/ssh-tunnel.png)

3. Click **Connect** in the VNC Viewer client and you should see the following warning, which we can now safely ignore. 

![atl text](resources/images/unencrypted-warning.png)

4. Click **Continue**. Enter the passowrd you set up for the VNC server and click **OK**.

![alt text](resources/images/vnc-password.png)

5. Congratulations! We just established our first remote desktop session with the CentOS 7 server! If you hover your curser above the top-middle of the window, a menu will appear. Click on the icon in the middle to enter *Full screen mode*. If you set the `-geometry` option with your screen's resolution, it should take up entire screen. Click on this icon again to exit *Full screen mode*.

![alt text](resources/images/desktop.png) 

Leave the VNC client session open; this is now our main way to interact with the remote server. We'll use it to first install and then use the EDA tools to design our FPGA peripheral hardware.

#### Installing Intel's EDA tools

Some <a href="https://en.wikipedia.org/wiki/Electronic_design_automation">EDA tools</a> are free while others require a paid license to work. There may be free versions of tools that normally require a license with limited features, but the features included may be enough to satisfy your needs. Although I used licensed tools, I recommend using free versions when possible. You may even consider choosing a development board based on the "free-ness" of the tools needed for compiling designs for that board (e.g., I later realized that a licensed version of Quartus Prime was required to work with Arria 10 development boards).

For the hardware development in this project, I used the following EDA tools:
- <a href="https://www.altera.com/products/design-software/fpga-design/quartus-prime/overview.html">Quartus Prime Standard Edition</a>
- <a href="https://www.altera.com/products/design-software/fpga-design/quartus-prime/features/qts-qsys.html">Qsys System Integration Tool</a>
- <a href="https://www.altera.com/products/design-software/model---simulation/modelsim-altera-software.html">ModelSim-Intel FPGA Edition</a> (formerly ModelSim-Altera Edition)

Note that although I used version `16.0` of these tools during initial development, I've since updated my environment with the latest release of these tools (`17.1` at the time of writing this tutorial) and have updated the designs included in this repository work with them. Although the general design process is the same, I've noticed newer versions of the tools are more stable and include some key bug fixes, one of which I take credit for and describe in the [licensing](README.md#setting-up-and-serving-a-license) section.

The following steps should be completed on the CentOS 7 server through your open VNC client session.

1. From Intel's <a href="http://dl.altera.com/?edition=standard&platform=linux&download_manager=direct">Download Center</a>, download `version 17.1` of the *Quartus Prime Standard Edition* software and *device support for the Arria 10* (parts 1, 2, and 3). Select **Linux** as the operating system and **Direct Download** as the download method (setting up the *Akamai DLM3 Download Manager* takes extra effort and is unnecessary for this one-time download). You have a few options for downloading the necessary files. I avoided the *Complete Download* since it's a pretty huge file (26.8 GB) and contains unnecessary device support. Instead, download the following files from the *Multiple File Download* section:
- Quartus Prime Standard Edition Software (Device support not included)
- Quartus Prime Device Package 1 (Arria 10)

2. You should now have the following <a href="https://en.wikipedia.org/wiki/Tar_(computing)">tarballs</a> sitting in your `~/Downloads` (or other default) directory:
- `Quartus-17.1.0.590-linux.tar`
- `Quartus-17.1.0.590-devices-1.tar`

Before we begin extracting and installing the software, it's important to choose a root directory for all of your development; several files and directories will be generated as we progress through the tutorial, and without organization, things can get unwieldy fast. Out of habit, I chose `~/workspace` as my root directory. In all code blocks to follow in this tutorial, replace every instance of `~/workspace` with the location of your root directory.

3. Extract `Quartus-17.1.0.590-linux.tar` and run the `setup.sh` script.

```
cd ~/Downloads
tar -xf Quartus-17.1.0.590-linux.tar
./setup.sh
```

This will open an installer GUI. Click **Next**, accept the the agreement, and click **Next** again to reach the *Installation directory* window. By default, it chooses `~/intelFPGA/17.1`. Replace this path with the root directory you chose followed by `intelFPGA/17.1`. Your window should look similar to the screenshot below, with `fpga` replaced by the name of your user:

![alt text](resources/images/installer.png)

4. Click **Next** to reach the *Select Components* window. Select the following components:

![alt text](resources/images/components.png)

5. Click **Next** twice to proceed with the installation. You'll receive the following *Info* pop-up dialog which you can safely ignore (we'll install Arria 10 device support files next):

![alt text](resources/images/no-devices.png)

When the installation is complete, the following window appears letting you optionally create a desktop shortcut for Quartus Prime. Click **Finish** to exit the installer.

![alt text](resources/images/installation-complete.png)

6. Extract `Quartus-17.1.0.590-devices-1.tar` and run the `dev1_setup.sh` script.

```
tar -xf Quartus-17.1.0.590-devices-1.tar
./dev1_setup.sh
```

An installer similar to the one for Quartus Prime will open, and we'll use it to install Arria 10 device support for Quartus Prime. Click **Next**, accept the agreement, and click **Next** again to reach the *Installation directory* window. Like before, replace the default path with your root directory followed by `intelFPGA/17.1`, and click **Next**. This takes us to the *Select Components* window. Check the **Devices** box which automatically selects **Arria 10 Part 1**, **Arria 10 Part 2**, and **Arria 10 Part 3**: 

![alt text](resources/images/a10-devices.png)

Click **Next** twice to proceed with the installation, and click **Finish** to exit the installer.

We now have Quartus Prime Standard Edition, the Qsys System Integration Tool (embedded in Quartus Prime), and ModelSim-Intel FPGA Edition installed with support for Arria 10 devices on the remote CentOS 7 server. Yay!

8. If you didn't create a desktop shortcut, let's add the Quartus Prime binary (`quartus`) to the `PATH` <a href="https://en.wikipedia.org/wiki/Environment_variable">environment variable</a> so you can simply type `quartus` in a terminal to open the tool. I'll leave it to you to decide whether you want to do this permanently (i.e., editing `~/.bashrc`) or temporarily (i.e., `export PATH=$PATH:<path-to-quartus>` in an open terminal). The path to `quartus` is: `~/workspace/intelFPGA/17.1/quartus/bin/`.

If you were to open Quartus Prime now, a *License Setup Required* pop-up dialog would appear (see screeshot below). In the next section, we'll go over how to serve the license we acquire from Intel which gives us full access to Quartus Prime Standard Edition, ModelSim-Intel FPGA Edition, and Arria 10 device support and eliminates this pop-up dialog (in version Quartus Prime `17.1` at least, earlier version may still require initial setup).

![alt text](resources/images/no-license.png)

#### Setting up and serving a license

Remember when I said setting up an environment for hardware development is a nontrivial task? Well, licensing EDA tools is the crux of its nontrivial-ness. I don't even know where to begin, from the difficulty in identifying which EDA tools or features of these tools (e.g., the MegaCore IP Library in Quartus Prime) require licenses to whether I'll even be using certain tools or features for my project. That's only the beginning; where and how to even acquire a license isn't obvious, there are different license types to choose from (*fixed* and *floating*), and when you finally receive a license, you need to add some not-so-obvious information to the file before it can be properly served by a <a href="https://www.ics.com/files/docs/bx/5/bxref/ref_5f.htm">license manager</a> (that's right, yet another piece of software required to get Quartus Prime and other EDA tools working).

Recall that I mentioned taking credit for a bug that was fixed in later releases of Quartus Prime than the one I originally used (version `16.0`). I'll describe that bug now [queue <a href="https://youtu.be/9jK-NcRmVcw">The Final Countdown</a>]. The license you receive is tied to the <a href="https://en.wikipedia.org/wiki/MAC_address">MAC address</a> of the <a href="https://en.wikipedia.org/wiki/Network_interface_controller">NIC</a> of the computer you're planning to run the software on. The purpose of doing this is to limit the license's use to only one, uniquely-identified computer. That's fine, it's a way of making sure a license only works for the intended user (who paid for it). Well, thanks to an act of incredibly poor engineering, Quartus Prime used to **ONLY recognize NICs that are named `eth0` from Linux's perspective**. <a href="https://en.wikipedia.org/wiki/Consistent_Network_Device_Naming">Upon further investigation</a>, I found out that CentOS 7's choice of `em1`, `em2`, etc. as the names for the network interfaces on my server is actually the modern naming convention used for NICs (the `eth0`, `eth1`, etc. naming convention is obsolete). The only way to get Quartus Prime to recognize I had the proper license being served, <a href="http://www.sysarchitects.com/em1_to_eth0">like this guy</a> I had to rename my `em1` NIC to `eth0`, a non-trivial task. 

Luckily, I complained about this bug and you won't have to worry about it (Quartus now recognizes all NICs on your machine). I'll try to also spare you from reading this <a href="https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/manual/quartus_install.pdf">46-page manual on licensing</a> by summarzing the necessary steps to edit and serve your license below.

1. Acquire a license. I wouldn't bother with the <a href="https://www.altera.com/mal-all/mal-signin.html?targetResource=https%3A%2F%2Fsso.altera.com%2Fpf%2Fadapter2adapter.ping%3FSpSessionAuthnAdapterId%3DOTKSiebel%26TargetResource%3Dhttps%253A%252F%252Fmysupport.altera.com%253A443%252FAlteraLicensing%252Flicense%252Findex.html">Self-Service Licensing Center</a>. Instead <a href="https://www.altera.com/about/contact/contact.html">contact an Intel licensing representative</a> directly and ask for a license for *Quartus Prime Standard Edition* and *ModelSim-Intel FPGA Edition*. Quartus Prime Standard Edition (or Pro) is <a href="https://www.altera.com/products/design-software/fpga-design/quartus-prime/download.html">required when working with Arria 10 devices</a> and is used to implement the FPGA hardware design. I used ModelSim-Intel FPGA Edition to run simulations and perform <a href="http://quartushelp.altera.com/15.0/mergedProjects/reference/glossary/def_funsim.htm">functional verification</a> of each subsystem of the design as well as the hardware accelerator as a whole. Although I haven't tried, you may be able to run the simulations I've included using the free version of ModelSim (ModelSim-Intel FPGA Starter Edition).

2. You should now have received a license from Intel. Create a directory called `license` in your root directory and move the license there. I used `scp` to copy the license from my macbook to the CentOS 7 server (see screenshot below as an example of using this command). Accessing your email from the server directly is another option.

![alt text](resources/images/scp-license.png)

3. We need to edit the license before it can be served. First, **copy** and rename the license to `/usr/local/flexlm/licenses/license.dat`. This is where we'll tell the <a href="https://www.ics.com/files/docs/bx/5/bxref/ref_5f.htm">FLEXlm license manager</a> to look for a license file called `license.dat` to serve.

```
sudo mkdir -p /usr/local/flexlm/licenses
sudo cp ~/workspace/license/1-FQMLCP_License.dat /usr/local/flexlm/licenses/license.dat
```

4. Using the text editor of your choice, open `license.dat` and add the following lines near the top. See the screenshot below to see where I made the changes.

```
SERVER <hostname> <MAC address of NIC>
VENDOR alterad "<your-working-dir>/intelFPGA/17.1/quartus/linux64/alterad"
VENDOR mgcld "<your-working-dir>/intelFPGA/17.1/modelsim_ae/linuxaloem/mgcld"
USE_SERVER
```

![alt text](resources/images/license.png)

To obtain your server's `<hostname>`, run `uname -n` in a terminal.

You should already know the MAC address of your NIC since it was needed to acquire the license. Just in case, run `ifconfig` to list the network interfaces on your machine, identify which one you're actively using (I have `em1` connected to the network), and the MAC address will be the 12-digit, colon-separated hex value following `ether`:

![alt text](resources/images/ifconfig.png)

The next two `VENDOR` lines specify the locations of the Quartus Prime and ModelSim <a href="https://en.wikipedia.org/wiki/Daemon_(computing)">daemons</a> that FLEXlm runs to serve their features. These daemons were included with the Quartus Prime Standard Edition and ModelSim-Intel FPGA Edition installations.

5. Now we're ready to serve our license! Run the following command to start the FLEXlm license manager and serve our license. Note that FLEXlm was also included in the Quartus Prime installation.

```
cd ~/workspace
intelFPGA/17.1/quartus/linux64/lmgrd -c /usr/local/flexlm/licenses/license.dat
```

... and we were so close! I'm referring to the error `/lib64/ld-lsb-x86-64.so.3: bad ELF interpreter: No such file or directory` you probably received the first time running the license manager:

![alt text](resources/images/license-error.png)

Giving credit to <a href="https://software.intel.com/en-us/articles/flexlm-license-manager-20-may-fail-when-lsb-3-is-not-met">this post</a>, there's nothing a simple <a href="https://en.wikipedia.org/wiki/Symbolic_link">symbolic link</a> can't fix! We have a functional 64-bit <a href="https://linux.die.net/man/8/ld-linux">program loader</a> running on the CentOS 7 server, I promise; the <a href="https://stackoverflow.com/questions/1951742/how-to-symlink-a-file-in-linux">symlink</a> we'll create let's FLEXlm call it `ld-lsb-x86-64.so.3` if it likes.

```
sudo ln -s /lib64/ld-linux-x86-64.so.2 /lib64/ld-lsb-x86-64.so.3
```

6. Run the command to start FLEXlm again and voila! You'll see a log of information from FLEXlm `(lmgrd)`, the Altera daemon `(alterad)`, and the ModelSim daemon `(mgcld)`. Completely irrelevant, but I'm guessing `lmgrd` stands for *license manager daemon*.

7. Uh-oh! Upon further inspection, we see that FLEXlm actually failed to launch the ModelSim daemon (`mgcld`) at time `23:42:24`:

![alt text](resources/images/mgcld-error.png)

That's not good. What could be the problem? Well, I tried running the daemon directly and received the following error message: 

![alt text](resources/images/mgcld-bad-ELF.png)

That looks familiar! This time it's the 32-bit version of the program loader that's missing, but why does `mgcld` want to use a 32-bit program loader on a 64-bit architecture? If we revisit the <a href="https://www.altera.com/support/support-resources/download/os-support.html">Operating System Support</a> page and look closely at the *ModelSim-Intel FPGA Edition* entry in the table, there's a supercript on the checkmark - ![alt text](resources/images/check-2.png) - that corresponds to the following note:

![alt text](resources/images/notes.png)

So obvious! Shame on us. Let's install the 32-bit program loader, `ld-linux.so.2`, which belongs to the `glibc` package.

```
sudo yum install ld-linux.so.2
```

Note, `i686` in the output refers to Intel's 32-bit <a href="https://en.wikipedia.org/wiki/X86">x86</a> architecture while `x86_64` refers to <a href="https://en.wikipedia.org/wiki/X86-64">64-bit</a> architecture. Let's run `mgcld` again to confirm we fixed the issue.

![alt text](resources/images/mgcld-fixed.png)

That looks promising!

8. Restart FLEXlm to successfully serve both Quartus Prime and ModelSim features this time. First, use `ps` to identify the currently-running `lmgrd`'s <a href="https://en.wikipedia.org/wiki/Process_identifier">process ID (PID)</a> and kill it with the `kill -9` command.

```
ps aux | grep lmgrd
sudo kill -9 <PID>
```

![alt text](resources/images/ps-aux.png)

Now we can start FLEXlm again:

```
cd ~/workspace
intelFPGA/17.1/quartus/linux64/lmgrd -c /usr/local/flexlm/licenses/license.dat
```

As long as you don't see any error messages in the log, all features of Quartus Prime and ModelSim should now be properly served. Here's what the tail end of my log looks like:

![alt text](resources/images/lmgrd-log-final.png)

9. Open Quartus Prime. Note, if you're using version `17.1` or later, the license should automatically be recognized and you can skip ahead to step 11. Otherwise, you'll see the *License Setup Required* pop-up dialog appear again, but this time we're ready to specify the license we're using. Select *If you have a valid license file, specify the locaiton of your license file* option and click **OK**. 

![alt text](resources/images/license-setup.png)

10. Specify the locaiton of the license file and click **OK**.

![alt text](resources/images/license-location.png)

11. Voila! We now have Quartus Prime Standard Edition running with its (and ModelSim-Intel FPGA Edition's) features properly licensed and activated!

![alt text](resources/images/hello-quartus.png)

That was quite the process, I know. To summarize, we learned how to remotely interact with a Dell PowerEdge R720xd server using its built-in iDRAC controller, install CentOS 7 on the server with a GNOME Desktop environment, install VNC server and client software on the server and macbook respectively, install the EDA tools (Quartus Prime Standard Edition, ModelSim-Intel FPGA Edition) we'll be using with the Arria 10 SoC Development Kit, and acquire and serve a license for the features we need. With our board selected and hardware development environment set up, we're now ready to begin designing the hardware-accelerated system!

### 3. Understand the software you wish to accelerate

*This is perhaps the most important step.* Time spent here will directly impact your approach to the problem, the design of your hardware accelerator, and ultimately your success in improving system performance. A philosophy I adhere to is that one's understanding of how something works is directly proportional to that individual's ability to debug issues or improve upon its design. When you're attempting to replace components of a large software project with specialized hardware, this is especially true. The goal of this step is to fundamentally understand **the movement of and operations on data**. This will help you identify *performance bottlenecks* in the software. Is the system *memory bandwidth-limited*? Is it *computation-limited*? Answering these questions provides insight into what can be tuned to improve performance.

When working with someone else's software, extra time is needed to *understand how the code is structured* and to *identify source files, data structures, functions, etc.* that are relevant to the computation you wish to accelerate. This was my case in choosing to work with <a href="https://developers.google.com/protocol-buffers/">Protocol Buffers</a> and focusing specifically on *Protocol Buffer serialization*. I had no prior experience using the software nor was I familiar with <a href="https://developers.google.com/protocol-buffers/docs/encoding">varint encoding</a> (a mechanism used heavily in the serialization code). The obvious first step was to acquire a basic understanding of how Protocol Buffers are used in applications; I achieved this by going through the online documentation, building and installing the software, and running the example applications provided. After that, I was ready to dig deeper for an understanding of how the *Protocol Buffer serialization* code works.

There are powerful tools available that one can use to navigate the source code of a software project and inspect running applications; using these tools helped me identify the source code responsible for *Protocol Buffer serialization* and understand it to a level at which I was able to begin designing the hardware that would eventually replace it. One such tool is the marriage of <a href="http://www.vim.org/">vim</a> and <a href="http://ctags.sourceforge.net/">ctags</a>. I used this combination to review a Protocol Buffer application line-by-line and jump to the source files containing definitions of class methods as they were invoked. This helped me better understand the relationship between the *compiler-generated code* and *runtime library* that are components of any Protocol Buffer application. I then used the <a href="https://www.gnu.org/software/gdb/">GNU Debugger</a> (`gdb`) to step through the same application and inspect <a href="https://en.wikipedia.org/wiki/Stack_trace">stack traces</a> as it actively serialized a Protocol Buffer <a href="https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.message#Message">Message</a>. This helped me understand the sequence (and frequency) of method invocations involved in the serialization. The last tool I'll mention is <a href="https://perf.wiki.kernel.org/index.php/Main_Page">perf</a> - a powerful <a href="https://en.wikipedia.org/wiki/Profiling_(computer_programming)">profiling</a> tool used in <a href="https://en.wikipedia.org/wiki/Performance_tuning">performance tuning</a>. `perf` makes use of <a href="https://en.wikipedia.org/wiki/Hardware_performance_counter">performance counters</a>, kernel <a href="https://www.kernel.org/doc/Documentation/trace/tracepoints.txt">tracepoints</a>, and even <a href="http://www.brendangregg.com/perf.html#USDT">user-level statically defined tracing (USDT)</a> to periodically sample a running application and provide detailed reports on where it spends its time (i.e., the various code paths taken and what percentage of the total execution time they account for). As demonstrated in section [9. Profiling the hardware-accelerated system](README.md#9-profiling-the-hardware-accelerated-system), we'll use it to profile applications running on both, standard (purely CPU/software model) and hardware-accelerated systems and analyze differences in their execution on the two systems.
    
In the remainder of this section, I'll provide an overview of the Protocol Buffer software, walk through an example of serializing a message, specify which version of the Protocol Buffer software we use in Firework (and show how to build it from source), demonstrate how I used `vim`+`ctags` and `gdb` to identify and understand the source code relevant to *Protocol Buffer serialization*, and discuss how time spent analyzing the `WireFormatLite` and <a href="https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.io.coded_stream#CodedOutputStream">`CodedOutputStream`</a> classes and their relation to the various message <a href="https://developers.google.com/protocol-buffers/docs/proto3#scalar">field types</a> led to a key realization and simplifcation of the hardware accelerator design. I'll conclude this section with a brief discussion about importance of using `perf` at this stage as well, a lesson I learned after-the-fact.

#### Overview of Protocol Buffers and message serialization

From the <a href="https://developers.google.com/protocol-buffers/docs/overview">Developer Guide</a>, "Protocol buffers are a flexible, efficient, automated mechanism for *serializing structured data*". In the land of Protocol Buffers, structured data (or data structures) are called **messages**. Messages consist of a series of key-value pairs called **fields**, similar to <a href="http://www.json.org/">JSON objects</a>. Fields can be basic types (e.g., integers, booleans, strings), arrays, or even other embedded messages. The general idea is that you define the messages you want to use in your application in a `.proto` file and use the Protocol Buffer *compiler* (`protoc`) to generate specialized code that implements these messages in the language of your choice (e.g., C++ classes). The compiler-generated code provides accessors for individual fields along with methods that work closely with the Protocol Buffer *runtime library* (`libprotobuf.so.10.0.0`) to serialize/parse entire messages to/from streams or storage containers. Protocol Buffers are *extensible* in the sense that you can add new fields to messages without disrupting existing applications that use older formats; this is achieved by marking fields as `optional` rather than `required`.

For a more complete understanding of what Protocol Buffers are and how they're used, and to learn about **varint encoding** and how messages are serialized, I recommend going through the following material (which also serves as a prerequisite for the remaining content in this section and subsequent sections in this tutorial):
- <a href="https://developers.google.com/protocol-buffers/">Protocol Buffers</a>: Protocol Buffer home page
- <a href="https://developers.google.com/protocol-buffers/docs/overview">Developer Guide</a>: a good introduction
- <a href="https://developers.google.com/protocol-buffers/docs/cpptutorial">Protocol Buffer Basics: C++ </a>: tutorial on using Protocol Buffers in C++ (language used in Firework)
- <a href="https://developers.google.com/protocol-buffers/docs/encoding">Encoding</a>: describes varint encoding and message serialization

From the <a href="https://developers.google.com/protocol-buffers/docs/encoding">Encoding</a> page, we learned that field keys are actually composed of two values - a **field number** (or **tag**) and a **wire type** - when the containing message is serialized into its *binary wire format*. Field numbers are simply the integers assigned to the fields of a message as defined in the `.proto` file, and wire types, also an integer value, are determined by the type of a field's value (e.g., `int32`, `fixed64`, `string`, `embedded message`). Wire types provide information that's needed to determine the size, in bytes, of a field's encoded value following the key.

To serialize a message, its fields are encoded and written sequentially in ascending field number. A field is written with its encoded key first followed by its encoded value. Finally, keys are encoded as *varints* with the value: `(field number << 3) | wire type`, and the way a field's value is encoded depends on its wire type. To better understand how messages are serialized, let's walk through an example below.

Using the address book example application from the <a href="https://developers.google.com/protocol-buffers/docs/cpptutorial">C++ tutorial</a>, let's serialize, by hand, an `AddressBook` message that contains one `Person` message. Our `Person` message has the following fields:

```
name:       Kevin Durant
id:         35
email:      kd@warriors.com
phones:
    number: 4155551988
    type:   MOBILE
```

First up, we encode the `AddressBook` message's only field:

```
repeated Person people = 1;
```

We see that its field number is **1**, and referring to the table in the *Message Structure* section of the <a href="https://developers.google.com/protocol-buffers/docs/encoding">Encoding</a> page, its wire type is **2** (length-delimited) since the value's type is an embedded message (i.e., a `Person`). With this information, we're now ready to generate the value of the field's key and subsequently encode it as a varint. Left shifting the field number three times gives us `0b00001000`, and `OR`ing this value with the wire type produces the key's value of `0b00001010` (or `0a` in hex, `10` in decimal). Varint encoding this value next will give us our encoded key, the first data to be written when serializing our message.

Recall that base 128 varints use the <a href="https://en.wikipedia.org/wiki/Most_significant_bit">MSB</a> of each byte to indicate whether it's the final byte of data; this means the largest value a single byte of varint data can represent is **127** (i.e., `0b01111111` for the final byte and `0b11111111` for any other byte). With this in mind, the varint encoding algorithm can be described as follows (note, negative integers are treated as very large positive numbers):

*Is the value of this integer less than 128? If yes, append a `0b0` to the least significant 7 bits, and this produces the final byte of data. Otherwise, append a `0b1` to the least significant 7 bits, and this produces the next byte of data. Right shift the integer 7 times and repeat from the beginning.*

Turning back to our example, since the value of our key (**10**) is less than **128**, we append a `0b0` to the least significant 7 bits giving us our 1-byte varint encoded key, `0a` in hex. (Note, I'll use hex notation for all encoded data from this point forward.)

Next we encode the field's value, an embedded `Person` message. For length-delimited fields, encoded values consist of two parts: a varint encoded *length* followed by the specified number of *bytes of data*. The length in this case corresponds to the size of the encoded `Person` message. As I'll demonstrate later, the compiler-generated code provides methods for calculating and caching the sizes of populated messages as an optimization during serialization, so I'll just tell you that the `Person` message with the values above results in 47 bytes of encoded data. You can confirm this number after we've serialized all its fields. 

Since **47** is less than **128**, our varint encoded length is simply `2f`. The next 47 bytes of the length-delimited value consist of the encoded fields (keys and values) of the embedded `Person` message in ascending field number.

The first field of our `Person` message is:

```
required string name = 1;
```

The field number is **1** and wire type is **2** (length-delimited) since the value's type is a `string`. In the same way we arrived at our first varint encoded key, this field's varint encoded key is also `0a`.

The length we need to varint encode is simply the size of the string `Kevin Durant`, which is 12 bytes. Since **12** is less than **128**, our varint encoded length is `0c`. The second part of our length-delimited value consists of the 12 <a href="">UTF-8</a> encoded characters of the string `Kevin Durant`, which are `4b 65 76 69 6e 20 44 75 72 61 6e 74`. We now have our first completely encoded field! 

The next field of our `Person` message is:

```
required int32 id = 2;
```

This time our field number is **2** and wire type is **0** (varint) since the value's type is an `int32`. Following the same procedure, our varint encoded key is `10`.

The value of an `int32` field is also varint encoded. Since **35** less than **128**, our varint encoded value is `23` (and as fate would have it, Kevin Durant's number in hex matches that of Michael Jordan's in decimal).

The third field of our `Person` message is:

```
optional string email = 3;
```

The field number is **3** and wire type is **2** (length-delimited) giving us a varint encoded key of `1a`. (Hopefully at this point you've recognized that integers 0-127 result in 1-byte varints.) The string `kd@warriors.com` has 15 characters giving us a varint encoded length of `0f`, and following this are the UTF-8 encoded characters `6b 64 40 77 61 72 72 69 6f 72 73 2e 63 6f 6d`.

The fourth and final field of our `Person` message is also an embedded message:

```
repeated PhoneNumber phones = 4;
```

The field number is **4** and wire type is **2** (length-delimited) giving us a vaint encoded key of `22`.

The size of this embedded message is 12 bytes which gives us a varint encoded length of `0c`, but this isn't so obvoius. Jumping into the `PhoneNumber` message, as usual we encode its first field:

```
required string number = 1;
```

The field number is **1** and wire type is **2** giving us a varint encoded key of `0a`. The phone number `4155551988` has 10 characters giving us a varint encoded length of `0a`, and this is followed by the UTF-8 encoded characters `34 31 35 35 35 35 31 39 38 38` (don't confuse the phone number for a number, remember it's a string). But wait a minute... encoding the first field already gives us 12 bytes which I claimed was the size of the entire embedded `PhoneNumber` message. What about its second field:

```
optional PhoneType type = 2 [default = HOME];
```

Since this field is marked as `optional` and has `HOME` specified as the default value of `type`, it means that a serialized `PhoneNumber` message missing this field is assumed to have a `PhoneType` value of `HOME`. In other words, we don't have to include this field and a parser would still be able to reconstruct this message's corresponding C++ object, even if `type` was explicitly set as `HOME`. This field would have to be included if `type` was assigned a value other than the default (i.e., `MOBILE` or `WORK`).

With that said, we've finished serializing the embedded `PhoneNumber` message which means we've also finished serializing the embedded `Person` message which means we've also also finished serializing our `AddressBook` message! To summarize, the following bytes of data comprise the entire serialized `AddressBook` message:

```
0a 2f 0a 0c 4b 65 76 69 6e 20 44 75 72 61 6e 74 10 23 1a 0f 6b 64 40 77 61 72 72 69 6f 72 73 2e 63 6f 6d 22 0c 0a 0a 34 31 35 35 35 35 31 39 38 38
```

#### Building the Protocol Buffer compiler and runtime libraries from source, running the example C++ applications

Now that we're familiar with how Protocol Buffers are used and understand how messages are serialized, let's build the software from source and run the example applications provided. As an overview, we're going to clone the <a href="https://github.com/google/protobuf">google/protobuf</a> repository, see which versions of the software are available, create a new branch corresponding to release `v3.0.2` of the Protocol Buffers software, and finally, build it from source. `v3.0.2` was the latest version available at the time I worked on Firework and hence the version I forked and modified for use in the hardware-accelerated system. (The modified protobuf repository is located here: [firework/protobuf](protobuf).) We'll use both, the modified and unmodified protobuf libraries later to profile the *hardware-accelerated* and *standard* systems, respectfully. Note, I performed the following steps on the CentOS 7 server.

1. Download the Protocol Buffer source code repository found <a href="https://github.com/google/protobuf">here</a>.

```
git clone https://github.com/google/protobuf.git
```

2. Using `git tag`, let's list the tags included in the `protobuf` repository we just downloaded. These tags correspond to different releases of the software. Since we're interested in release `v3.0.2`, we'll create and checkout a new branch corresponding to the tag `v3.0.2`, all in one command.

```
cd protobuf
git tag
git checkout -b protobuf-v3.0.2 v3.0.2
git branch -v
```

Inspecting the output of `git branch -v`, we see that we've indeed switched to the new branch. The output should look something like this: 

![alt text](resources/images/branch.png)

3. Follow the <a href="https://github.com/google/protobuf/blob/master/src/README.md">C++ Installation - Unix</a> instructions to build and install the Protocol Buffer compiler (`protoc`) and runtime libraries from source. Stop when you reach the *Compiling dependent packages* section. Here are some helpful notes on building:

- To install the build tools in the first step, replace `apt-get` with `yum` since we're using CentOS and not Ubuntu. There is no `g++` package in the CentOS repositories; the package you're insterested in is `gcc-c++` (which I think is more appropriately named). We should already have these tools installed since we selected *Development Tools* when installing CentOS, but it doesn't hurt to run this command anyway in case any tools are missing or there are updates
- Figure out how many threads your server can execute in parallel and use the `-j <num>` <a href="https://www.gnu.org/software/make/manual/html_node/Parallel.html">option</a> when running `make` for a faster build (e.g., `make -j 32` for me)
- Here's the output you want to see after running `make -j <num> check`:

![alt text](resources/images/make-check.png)

- Running `sudo make install`, places `protoc` in `/usr/local/bin/` and the runtime libraries in `/usr/local/lib/`:

![alt text](resources/images/installed.png)

4. Now that we have the Protocol Buffer compiler and runtime libraries built and installed, let's use them to compile and run the C++ example applications, `add_person.cc` and `list_people.cc`. First we have to use `protoc` to generate C++ classes for the messages defined in `addressbook.proto`. Following the instructions from the section *Compiling Your Protocol Buffers* in the <a href="https://developers.google.com/protocol-buffers/docs/cpptutorial">Protocol Buffer Basics: C++</a> tutorial:

```
cd ~/workspace/protobuf/examples
protoc -I=./ --cpp_out=./ addressbook.proto
```

This generates two new files, `addressbook.pb.h` and `addressbook.pb.cc`:

![alt text](resources/images/protoc.png)

5. Now we have all the necessary components for compiling the C++ applications: the Protocol Buffer runtime libraries (e.g., `libprotobuf.so.10.0.0`), the compiler-generated C++ class definitions for the messages `AddressBook`, `Person`, and `PhoneNumber` used in our applications, and of course the applications themselves: `add_person.cc`, `list_people.cc`. Resuming where we left off in the <a href="https://github.com/google/protobuf/blob/master/src/README.md">C++ Installation - Unix</a> guide, the section *Compiling dependent packages* shows how to use `pkg-config` to compile and link applications against a package called `protobuf`. First, we need to tell `pkg-config` where it can find the file `protobuf.pc`:

```
pkg-config --cflags --libs protobuf
ls /usr/local/lib/pkgconfig/
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/
pkg-config --cflags --libs protobuf
```

The sequence above shows how `pkg-config` fails to find the `protobuf` package at first and what you need to do to fix it. The second time  `pkg-config --cflags --libs protobuf` is run, we see the compiler and linker flags used for building any protobuf application: 

![alt text](resources/images/pkg-config.png)

6. Finally, let's build the C++ example applications.

```
g++ add_person.cc addressbook.pb.cc `pkg-config --cflags --libs protobuf` -o add_person
g++ list_people.cc addressbook.pb.cc `pkg-config --cflags --libs protobuf` -o list_people
```
Your `protobuf/examples` directory should now contain two new binaries, `add_person` and `list_people`.

7. Let's run `add_person` to create a new `Person`, add it to a new `AddressBook`, and serialize and store the entire `AddressBook` message in a file called `my_addressbook`.

```
./add_person my_addressbook
```

Uh-oh! You probably received the following error message:

![alt text](resources/images/error-loading-shared-libs.png)

This error message means the <a href="https://en.wikipedia.org/wiki/Dynamic_linker">program loader</a> (`ld-linux-x86-64.so.2` on my system) was unable to find the runtime library (i.e., <a href="https://en.wikipedia.org/wiki/Library_(computing)#Shared_libraries">shared object</a> file) called `libprotobuf.so.10` that `add_person` needs to run. To solve this problem, we need to set the `LD_LIBRARY_PATH` environment variable with the path containing `libprotobuf.so.10`:

```
echo $LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/lib
echo $LD_LIBRARY_PATH
```

Now we should be able to run our application error-free. Run `./add_person my_addressbook` once more and follow the prompts to create a `Person` with the following fields:

```
name:       Kevin Durant
id:         35
email:      kd@warriors.com
phones:
    number: 4155551988
    type:   MOBILE
```

![alt text](resources/images/add-kd.png)

If you're unfamiliar with `LD_LIBRARY_PATH`; the difference between `ld` (the poorly-named <a href="https://en.wikipedia.org/wiki/Linker_(computing)">linker</a>) and `/lib/ld-linux.so.2` (the program loader); the directories `/lib`, `/usr/lib`, and `/usr/local/lib`; and/or the difference between files named `libprotobuf.so`, `libprotobuf.so.10`, and `libprotobuf.so.10.0.0` then I HIGHLY RECOMMEND you read <a href="http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html">this page on shared libraries</a> through section *3.3.2. LD_DEBUG* before continuing.

8. Now let's run `list_people` to parse the serialized `AddressBook` message contained in the file `my_addressbook` and list its contents. 

```
./list_people my_addressbook
```

![alt text](resources/images/list_people.png)

Great! We see the `Person` message we just created in the last step. Actually, this isn't that exciting. We can do better. Let's use the <a href="https://www.freebsd.org/cgi/man.cgi?query=hexdump&sektion=1">hexdump</a> utility to inspect the contents of `my_addressbook`, which contains the serialized `AddressBook` message (i.e., binary data):

```
hexdump -C my_addressbook
```

![alt text](resources/images/hexdump.png)

Lo and behold, we see 49 bytes of data, starting with `0a` and ending in `38`. If you compare this byte-for-byte with the `AddressBook` message we serialized earlier, you'll see they match. Incredible! Now that we're confident in our abilities to compile and run Protocol Buffer applications and serialize Protocol Buffer messages, let's see *how* the Protocol Buffer runtime library and compiler-generated code work together to perform serialization.

#### Stepping through add_person.cc: `vim` + `ctags`

In this section, we'll use `vim` and `ctags` to take a closer look at `add_person.cc` and dive into the code responsible for *Protocol Buffer serialization*. If you've never used it before, <a href="http://ctags.sourceforge.net/">ctags</a> is the holy grail of navigating large software projects that contain several source files. Used in conjunction with <a href="http://www.vim.org/">vim</a>, this creates a powerful, GUI-free method of understanding how an application's source code is structured. This is particularly useful when working with embedded systems or accessing a remote computer via `ssh` where a terminal may be your only interface (i.e., you can't use more powerful <a href="https://en.wikipedia.org/wiki/Integrated_development_environment">IDEs</a> like <a href="https://www.eclipse.org/">Eclipse</a>, <a href="https://atom.io/">Atom</a>, etc.).

If you've never used `vim` before, take some time to become familiar with the keyboard commands. In fact, a keyboard is your only way of interacting with `vim`. Find a tutorial that covers the various modes of operation and basic navigation; perhaps <a href="https://www.howtoforge.com/vim-basics">this</a> is a good starting point. Once you've got the basics down, here's the <a href="https://courses.cs.washington.edu/courses/cse451/10au/tutorials/tutorial_ctags.html">tutorial</a> I used to learn how to use `ctags` with `vim`. It may be difficult to internalize all the relevant commands in such little time; a useful thing to do is to make your own cheat sheet of commands frequently used or that you're trying to learn and keep it somewhere accessible. I placed Post-it notes on my monitor for basic `vim` navigation and `ctags`-specific commands:

![alt text](resources/images/vim.jpg)

Off the top of my head, here are some other fundamental commands you'll find yourself using:

Command | What it does
:--- | :--- 
`i` | enters insert mode (i.e., you can begin editing the file. Hit `ESC` to exit this or any other mode)
`u` | undo
`ctrl + r` | redo
`dd` | deletes a line
`p` | paste whatever's stored in `vim`'s buffer (try `dd p` and see what happens)
`:w` | save
`:wq` | save and quit
`:set nu` | displays line numbers
`:set nonu` | hides line numbers
`/ <reg_exp>` | search the file for every instance of `<reg_exp>`
`n` | jump to the next match of `<reg_exp>`
`? <reg_exp>` | search the file for every instance of `<reg_exp>`
`n` | jump to the previous match of `<reg_exp>` :)
`:f` | display the file that's currently open
`:sp <file>` | opens `<file>` and splits the window (note, only one file is in focus at a time)
`ctrl + w`, `ctrl + w` | toggles focus between split windows
`ctrl + w`, `up arrow` | switches context to the window above the one currently in focus
`ctrl + w`, `down arrow` | I think you're smart enough to infer its function
`:q` | quit (exit's the split window in focus or all of `vim` if only one file is open)

Without further ado, let's dive into `add_person.cc` and learn how messages are serialized.

1. In the `protobuf/src` directory (i.e., the root directory containing the Protocol Buffer runtime library's source code), let's use `ctags` to generate an index of all <a href="http://en.cppreference.com/w/cpp/language/identifiers">identifiers</a> used in the source code. This creates a new `tags` file which maps identifiers to their containing source file(s). Note, we should still be on branch `protobuf-v3.0.2`.

```
cd ~/workspace/protobuf/src
ctags -R *
``` 

2. From the same directory, open `add_person.cc` with `vim`:

```
vim ../examples/add_person.cc
```

Note that if you switch to another directory (e.g., `protobuf/examples`) and open `add_person.cc`, the tag-search commands we're going to use wouldn't work. You need to open a file with `vim` or invoke `vim -t <tag>` from the directory containing the `tags` file.

3. You should already be familiar with what `add_person.cc` does and how it's used. If not, revisit the <a href="https://developers.google.com/protocol-buffers/docs/cpptutorial">Protocol Buffer Basics: C++</a> tutorial. We want to focus on the code that's involved in serializing messages. Fortunately, there's only one line in the entire program that we care about: **line 85**. Navigate to this line and place your cursor anywhere over the identifier `SerializeToOstream()`, not `address_book` or `(&output)`. Note, I use the notation `FooBar()` to refer to functions or methods, purposely excluding any parameter list to avoid clutter. (Pro tip: try entering the command `:85` in `vim`.)

![alt text](resources/images/SerializeToOstream.png)

4. With the cursor over `SerializeToOstream()`, enter the command `ctrl + ]` to jump to its definition. This takes us to **line 175** of the file, `google/protobuf/message.cc`:

![alt text](resources/images/ctags-1.png)

This marks our first use of `ctags`, and we immediately learn a few things:
- `SerializeToOstream()` is a method of the `Message` class, not `AddressBook` (i.e., the <a href="http://www.cplusplus.com/doc/tutorial/inheritance/">base class</a> that `AddressBook` is derived from and whose accessible members it inherits)
- Because `SerializeToOstream()` belongs to `Message`, we're looking at code that constitutes the *Protocol Buffer runtime library*, not *compiler-generated code*
- `SerializeToOstream()` is simply a wrapper function around `SerializeToZeroCopyStream()`, which we'll jump to next

5. Place the cursor anywhere over `SerializeToZeroCopyStream()` on **line 178**, and enter `ctrl + ]` once more. This takes us to **line 272** of the file, `google/protobuf/message_lite.cc`:

![alt text](resources/images/ctags-2.png)

Alright, things are starting to get interesting. We see that `SerializeToZeroCopyStream()` is a method of the `MessageLite` class - the base class that `Message` is derived from (as seen <a href="https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.message#Message">here</a> in the C++ API). This method instantiates a `CodedOutputStream` object and in turn calls `SerializeToCodedStream()`.

6. Place your cursor anywhere over `SerializeToCodedStream()` and enter `ctrl + ]`. This takes us to **line 234** of the same file. This method simply checks that the message object has been initialized (i.e., all required fields have been assigned values) and calls `SerializePartialToCodedStream()`. Place your cursor over this method and enter `ctrl + ]` once more. We see that it's defined right below starting on **line 239**:

![alt text](resources/images/ctags-3.png)

`SerializePartialToCodedStream()` is the first method with relevant content, and it's actually central to message serialization. It's in this method where the Protocol Buffer runtime library finally interacts with the compiler-generated code. As you may recall, I previously mentioned that the compiler-generated code provides methods for calculating and caching the sizes of populated messages as an optimization during serialization. Well, on **line 241** we call one such method, `ByteSize()`, of the `AddressBook` class. If you try jumping to `ByteSize()`'s definition with `ctrl + ]` like we've done so far, you'll see that `vim` + `ctags` yields several hundred options, and none of these options are actually useful. This makes sense since we only created an index (i.e., `tags` file) of the runtime library's source code, and I just said `ByteSize()` comes from the compiler-generated code. It took me quite some time to realize that not only does `ByteSize()` come from the compiler-generated code, it's also defined multiple times - once for each message in your `.proto` file. Since back in `add_person.cc` it was an `AddressBook` object that invoked `SerializeToOstream()`, it's `AddressBook::ByteSize()` that's invoked here which is defined on **line 1174** of the file, `protobuf/examples/addressbook.pb.cc`.

After the message object's size is cached, `SerializePartialToCodedStream()` then accesses the `CodedOutputStream` object's buffer, determines if it has enough room for the serialized message, and if so, calls `SerializeWithCachedSizesToArray()` to write the message to it directly. Otherwise, it calls `SerializeWithCachedSizes()` and passes it the entire `CodedOutputStream` object to write the message. Both methods perform the same function, but the former is optimized. Like `ByteSize()`, the methods `SerializeWithCachedSizesToArray()` and `SerializeWithCachedSizes()` also are part of the compiler-generated code and have multiple definitions, one for each message in the `.proto` file.

I'll demonstrate in the next section how `gdb` makes it very easy to identify the exact codepaths taken on each function or method invocation, fixing this deficiency of `vim` + `ctags`.

7. Let's step into `SerializeWithCachedSizesToArray()` to begin learning about the compiler-generated code's role in serializing messages. As mentioned, this method is defined once for each message; we'll look at the `Person` class's since it's more informative than the `AddressBook`'s and `PhoneNumber`'s definitions. For completeness, place your cursor over `SerializeWithCachedSizesToArray()` on **line 250** and enter `ctrl + ]`. This displays several options; enter `f` repeatedly until you've reached option `69`:

![alt text](resources/images/ctags-4.png)

This is the source file we're interested in; it contains the definition of this member of the `MessageLite` class. Continue entering `f` until you've reached the bottom and are prompted to enter the number of the entry you wish to jump to:

![alt text](resources/images/ctags-5.png)

Enter `69` and press `enter`. This takes us to **line 257** of the file, `google/protobuf/message_lite.h`: 

![alt text](resources/images/ctags-6.png)

Ah-ha! Here we see that this method is a <a href="http://www.cplusplus.com/doc/tutorial/polymorphism/">virtual member</a> of the `MessageLite` class. This means derived classes can redefine this method, so hopefully now you believe me when I say this is where `AddressBook` and other compiler-generated message classes take over. Actually, if you look at the `Person` class's implementation of this method (**lines 198-200** of the file `addressbook.pb.h`), you'll see that it's identical to `MessageLite`'s and also calls `InternalSerializeWithCachedSizesToArray()`. We'll jump into `Person::InternalSerializeWithCachedSizesToArray()` next.

8. Enter `:q` to exit vim. Still in `~/workspace/protobuf/src`, open the file, `../examples/addressbook.pb.cc`. This is the source file that the compiler (i.e., `protoc`) spits out defining the three messages, `AddressBook`, `Person`, and `PhoneNumber`, and hence it's where we'll find `Person::InternalSerializeWithCachedSizesToArray()`.

9. Once open, let's display line numbers and search for the method.

```
:set nu
/ Person::InternalSerializeWithCachedSizesToArray
```

This brings us to the method's defintion on **line 677**:

![alt text](resources/images/ctags-7.png)

Don't let Google's extensive use of <a href="http://www.cplusplus.com/doc/oldtutorial/namespaces/">namespaces</a> and the <a href="https://docs.microsoft.com/en-us/cpp/cpp/scope-resolution-operator">scope resolution operator</a> frighten you; this method is actually very straightforward. Recall that the `Person` message has four fields as defined in the `.proto` file, copied below for convenience:

![alt text](resources/images/person-message.png)

In the order of ascending field number, `Person::InternalSerializeWithCachedSizesToArray()`, calls a `WireFormatLite::Write*ToArray()` method for each field, where the particular `Write*ToArray()` method corresponds to the field value's type:
- `WireFormatLite::WriteStringToArray()` for `name`
- `WireFormatLite::WriteInt32ToArray()` for `id`
- `WireFormatLite::WriteStringToArray()` for `email`
- `WireFormatLite::InternalWriteMessageNoVirtualToArray()` for `phones`

`WireFormatLite` is a class that's internal to the Protocol Buffer runtime library, and its `Write*ToArray()` methods are used to serialize individual fields of a message and write them to an output buffer. As you can see, the compiler-generated code specifies *the order in which fields are written* and the runtime library *performs the actual writing*. Let's see how the `id` field is serialized by jumping into `WireFormatLite::WriteInt32ToArray()`.

10. Place your cursor over the identifier `WriteInt32ToArray()` and enter `ctrl + ]`. This takes us to **line 672** of the file, `google/protobuf/wire_format_lite_inl.h`: 

![alt text](resources/images/ctags-8.png)

We see that this method calls two other `WireFormatLite` methods: `WriteTagToArray()` and `WriteInt32NoTagToArray()`. This should be intuitive now since we previously learned that a field is written key first followed by its encoded value (*key* and *tag* are synonyms). Let's look at `WriteInt32NoTagToArray()` next.

11. Place your cursor over the identifier `WriteInt32NoTagToArray()` and enter `ctrl + ]`. This takes us to **line 608** of the same file:

![alt text](resources/images/ctags-9.png)

We see that this method is simply a wrapper function that calls the `CodedOutputStream` class's `WriteVarint32SignExtendedToArray()` method. From the <a href="https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.io.coded_stream#CodedOutputStream">C++ API</a>, the `CodedOutputStream` class *"encodes and writes binary data which is composed of varint-encoded integers and fixed-width pieces"*. This sounds very promising; let's jump into `WriteVarint32SignExtendedToArray()` next. By the way, if we're comparing this call stack to the movie Inception, I think time is moving backwards at this point.

12. Place your cursor over the identifier `WriteVarint32SignExtendedToArray()` and enter `ctrl + ]`. This takes us to **line 1164** of the file, `google/protobuf/io/coded_stream.h`:

![alt text](resources/images/ctags-10.png)

In this method, we see that the path taken next depends on the sign of the `int32` field's value. Let's take the <a href="http://popkey.co/m/rwmb7-red+pill-blue+pill-matrix">red pill</a> and venture down the `WriteVarint32ToArray()` rabbit hole. Proceed with caution; we may actually create a black hole in this next jump.

13. Place your cursor over the identifier `WriteVarint32ToArray()` and enter `ctrl + ]`. This takes us to **line 1145** of the same file:

![alt text](resources/images/ctags-11.png)

And with this my friend, I'm proud to say we've FINALLY reached what we've been (secretly) looking for: the code that actually performs varint encoding. Take some time to go through this method and confirm it implements the varint-encoding algorithm I described in English in the section, [Overview of Protocol Buffers and message serialization](README.md#overview-of-protocol-buffers-and-message-serialization).

To summarize, we've used `vim` and `ctags` to navigate our way through the Protocol Buffer runtime library and compiler-generated code, starting with an example application (`add_person.cc`) that initiates message serialization. We've learned that the runtime library and message classes defined in the compiler-generated code work hand-in-hand to encode and serialize individual fields, looking at how `int32` fields are varint encoded and serialized as an example. Although not explicitly stated, we've also learned that two classes central to serializing messages are `WireFormatLite` and `CodedOutputStream`, partially-defined in the files, `google/protobuf/wire_format_lite_inl.h` and `google/protobuf/io/coded_stream.h`, respectfully. I don't expect this next bit to be immediately intuitive, but it's actually quite significant that **all** message serialization and encoding logic is contained in these two classes (and really just the latter) and **not** in the compiler-generated code. I'll elaborate further on this in the section, [Analyzing the Protocol Buffer serialization code](README.md#analyzing-the-protocol-buffer-serialization-code).

I'm jumping ahead of myself, but it's `WriteVarint32ToArray()` and other methods of the `CodedOutputStream` class that we'll be modifying after we build the hardware accelerator, integrate it into the larger SoC system, and write a device driver that enables user space access to the newly developed FPGA peripheral. It's actually the device driver that creates an interface for the modifications we'll need to make!

Before we get there, let's see how using `gdb` to step through the same application and inspecting <a href="https://en.wikipedia.org/wiki/Stack_trace">stack traces</a> along the way provides a straightforward way of identifying relevant code paths and containing source files.

#### Stepping through add_person: `gdb`

In the last section, we used `vim` and `ctags` to navigate our way through `add_person.cc`, learning more about the soure code that's responsible for serializing messages. While this combo was very effective, it wasn't perfect. We were sometimes left with several hundred options to choose from in identifying the next codepath to take, and sometimes none of these paths were the one we needed. The <a href="https://www.gnu.org/software/gdb/">GNU Project Debugger</a> (a.k.a., the GNU Debugger, or simply `gdb`) fixes this problem, providing the ability to easily identify the exact codepaths taken and eliminating any guesswork. This powerful tool allows you to walk through an application as it executes, insert breakpoints, halt execution, inspect the values of variables, step into functions and methods as they're called, and inspect the <a href="https://en.wikipedia.org/wiki/Call_stack">call stack</a> among other things. While this tool's primary use is in debugging, it can also be effectively used to understand how a program works. In this section, we'll use `gdb` to walk through `add_person`, providing the same information for the `Person` message we previously serialized by hand, and make use of `gdb`'s <a href="https://sourceware.org/gdb/onlinedocs/gdb/Backtrace.html">backtrace</a> feature to take a closer look at the codepaths that ultimately lead to `WriteVarint32ToArray()` and other methods of the `CodedOutputStream` class.

If you've never used `gdb` before, here are some useful tutorials that cover everything from how to compile your program to include debugging information needed by `gdb`, to basic commands for the `gdb` command-line interface and retrieving information about call stack:
- <a href="http://web.eecs.umich.edu/~sugih/pointers/summary.html">GDB Tutorial</a>: a good intro, quick tutorial covering basics
- <a href="http://www.unknownroad.com/rtfm/gdbtut/">RMS's gdb Debugger Tutorial</a>: a more comprehensive tutorial (and the one I used to learn `gdb`)
- <a href="https://sourceware.org/gdb/onlinedocs/gdb/Backtrace.html">8.2 Backtraces</a>: using `gbd`'s backtrace feature to inspect the call stack

Once you're confident in your abilities to use `gdb`, continue below to step through `add_person`. Note, I'm using the CentOS 7 server with the Protocol Buffer runtime library already built and installed, as well as `add_person`. I also assume you didn't permanently set the `PKG_CONFIG_PATH` or `LD_LIBRARY_PATH` environment variables; you can safely skip these steps below if they're already set. Also note that we should still be on branch `protobuf-v3.0.2` of the `protobuf` respository.

1. `gdb` should already be installed on your machine, but just in case, run the following:

```
sudo yum install gdb
```

2. As you know, applications need to be compiled with the `-g` <a href="https://gcc.gnu.org/onlinedocs/gcc-3.0/gcc_3.html#SEC12">flag</a> in order for `gdb` to be able to step through them properly. This flag tells the compiler to include *debugging information* in the executable (or shared object file, as in the case of the Protocol Buffer runtime library, `libprotobuf.so.10.0.0`) it generates. Note that both `libprotobuf.so.10.0.0` and `add_person` are simply variants of an <a href="https://docs.oracle.com/cd/E19683-01/817-3677/chapter6-46512/index.html">object file</a>, and debugging information is added to these files in the form of additional `.debug_*` sections. Therefore, we can use the <a href="https://sourceware.org/binutils/docs/binutils/objdump.html">objdump</a> utility to list the sections contained in these files and look for the inclusion of `.debug_*` sections, confirming they were compiled with `-g`.

```
objdump -h /usr/local/lib/libprotobuf.so.10.0.0 | grep debug
```

![alt text](resources/images/gdb-1.png)

I used <a href="https://www.gnu.org/software/grep/manual/grep.html">`grep`</a> to filter the output, listing only lines that contain the string: `debug`. Here, we see that the Protocol Buffer runtime library was indeed compiled with `-g`. Now, let's check `add_person`.

```
cd ~/workspace/protobuf/examples
objdump -h add_person | grep debug
```

![alt text](resources/images/gdb-2.png)

Uh-oh, we don't see any `.debug_*` sections in the output! That's ok, luckily it's an easy fix. Let's compile another version with debugging symbols and name it `add_person_dbg`.

```
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
g++ add_person.cc addressbook.pb.cc `pkg-config --cflags --libs protobuf` -g -o add_person_dbg
objdump -h add_person_dbg | grep debug
```

![alt text](resources/images/gdb-3.png)

... and we're all set! I encourage you to compare the size of the two binaries, `add_person` and `add_person_dbg`, using `ls -lh`. This should provide insight as to why production software is stripped of debugging symbols.

3. Now we're ready to invoke `gdb` and pass it `add_person_dbg` as the program we wish to "debug".

```
export LD_LIBRARY_PATH=/usr/local/lib
gdb add_person_dbg
run
```

![alt text](resources/images/gdb-4.png)

Since we didn't provide the name of an address book file, `add_person_dbg` prints a `Usage: ` statement and exits, as expected. If you look at `gdb`'s output following this statement (highlighted in the screenshot above), we see that we're missing debugging information for the <a href="https://www.gnu.org/software/libc/">GNU C Library</a> (`glibc`), <a href="https://gcc.gnu.org/onlinedocs/gccint/Libgcc.html">GCC low-level runtime library</a> (`libgcc`), and <a href="https://gcc.gnu.org/onlinedocs/libstdc++/faq.html#faq.what">GNU Standard C++ Library</a> (`libstdc++`), all of which `add_person_dbg` uses.

4. Let's exit the current `gdb` session and install these libraries' missing debugging symbols. Let's also remove `my_addressbook` (if it exists) such that the next invocation of `add_person_dbg` creates a new one that'll only contain the `Person` message we enter.

```
q
sudo debuginfo-install glibc libgcc libstdc++
rm my_addressbook
```

5. With debugging symbols for the executable, Protocol Buffer runtime library, and core libraries they use, we're now ready to step through `add_person_dbg`. Before we `run` the application under `gdb`, let's insert a breakpoint at **line 85** of `add_person.cc`. This is where `SerializeToOstream()` is called, and hence where the `AddressBook` message's serialization is initiated.

```
gdb add_person_dbg
break 85
run my_addressbook
```

Following the prompts, enter the information of our example `Person` message from before (see below). After the last field is entered, `gdb` will continue executing `add_person_dbg` and halt when it reaches the first instruction corresponding to **line 85** of the source file `add_person.cc`.

![alt text](resources/images/gdb-5.png)

6. Run the `list` command without any arguments. This displays the 10 lines of code centered around where the program was halted (i.e., **line 85**). We already knew that we want to step into `SerializeToOstream()`, but `list` comes in handy when you've stepped into a function and need to figure out where to go next. Running `list` again displays the next 10 lines of code, and so on.

![alt text](resources/images/gdb-6.png)

7. Run the `step` command to instruct `gdb` to step into `SerializeToOstream()`. This takes us to **line 175** of the file, `google/protobuf/message.cc`. Note that if we ran `next` instead, `gdb` would've executed the subroutine completely, returned, and halted execution at the instruction immediatedly following the call to `SerializeToOstream()`.

![alt text](resources/images/gdb-7.png)

Inspecting the output of `list`, we see that `SerializeToZeroCopyStream()` is on **line 178**, and this is the method we want to jump into next. One way of getting there is to set another breakpoint at **line 178** and run the command, `continue`. 

8. Set a breakpoint at **line 178** and run the commands `continue`, `step`, and `list`. This takes us into the method `SerializeToZeroCopyStream()` at **line 273** of the file, `google/protobuf/message_lite.cc`.

![alt text](resources/images/gdb-8.png)

9. Next, we want to jump into `SerializeToCodedStream()` at **line 275**. Before we do this, however, let's run the command `backtrace` (or `bt`, or `info stack`) to see what our <a href="https://en.wikipedia.org/wiki/Call_stack">call stack</a> looks like at this point.

![alt text](resources/images/gdb-9.png)

We see `SerializeToZeroCopyStream()` at the top of the stack (entry `#0`) which is currently the active <a href="http://www.cs.uwm.edu/classes/cs315/Bacon/Lecture/HTML/ch10s07.html">stack frame</a>. Underneath are stack frames for `SerializeToOstream()` of the `Message` class and `main()` of `add_person.cc`, neither of which have finished executing. Take some time to become familiar with reading the output of this command. It's `gdb`'s ability to step into functions and provide informative <a href="https://en.wikipedia.org/wiki/Stack_trace">stack traces</a> that allows us to eventually reach `CodedOutputStream::WriteVarint32ToArray()` without any guesswork. Let's continue on that journey!

10. Set a breakpoint at **line 275**, `continue` to this breakpoint, and `step` into `SerializeToCodedStream()`. This takes us to **line 236** of the same file. Repeating this pattern, continue stepping into the following methods (where each one is called somewhere in the body of the one prior):

- `MessageLite::SerializePartialToCodedStream()`
- `AddressBook::SerializeWithCachedSizesToArray()`
- `AddressBook::InternalSerializeWithCachedSizesToArray()`
- `WireFormatLite::InternalWriteMessageNoVirtualToArray()`
- `WireFormatLite::WriteTagToArray()`
- `CodedOutputStream::WriteTagToArray()`
- `CodedOutputStream::WriteVarint32ToArray()`

Once in `CodedOutputStream::WriteVarint32ToArray()`, set a breakpoint at **line 1147** (the first line of this method's body). This way, we can subsequently run `continue` to reach this method again, run a `backtrace`, and inspect the call stack to see which field's tag, length-delimited size, or value is actively being varint encoded.

![alt text](resources/images/gdb-10.png)

Note, **it is not trivial** to reach this point. It might take several tries for you to figure out when to `step`, when to run `next`, and when to `continue`, as some method invocations span several lines and call other methods themselves, using the return value as a parameter. If you've properly navigated your way to the *first time* `CodedOutputStream::WriteVarint32ToArray()` is called, running `bt` should result in the following call stack:

![alt text](resources/images/gdb-11.png)

Let's take a look at what's happening at this point in the program's execution. Starting with `AddressBook::InternalSerializeWithCachedSizesToArray()` (`#4` in the call stack), this compiler-generated method calls the runtime library's `WireFormatLite::InternalWriteMessageNoVirtualToArray()` once for each embedded `Person` message it needs to serialize. This makes sense; recall that an `AddressBook` message only has one field, a `repeated Person people = 1;`. As for any field, first we encode and write this `embedded message` field's key. With a field number of **1** and wire type of **2** (length-delimited), the value we need to varint encode (giving us our key) is `10` in decimal. Correspondingly, `WireFormatLite::InternalWriteMessageNoVirtualToArray()` calls `WireFormatLite::WriteTagToArray()`, setting its parameters `type` and `field_number` to `WireFormatLite::WIRETYPE_LENGTH_DELIMITED` and `1`, respectfully. (Again, note that `Tag` in `WriteTagToArray()` is synonymous to my use of the word *key*; this method is for writing field keys.) This method in turn calls `CodedOutputStream::WriteTagToArray()`, setting its parameter `value` to `10`. Last, `CodedOutputStream::WriteTagToArray()` calls `CodedOutputStream::WriteVarint32ToArray()`, also setting its parameter `value` to `10`, which is where the number `10` is varint encoded into the hex value `0a`, finally producing our first byte of serialized data: the first varint encoded key of the first field of our `AddressBook` message. Cool, eh? :)

11. We expect the program to varint encode the *size* (in bytes) of the embedded `Person` message next, since it's a length-delimited field. Let's run `continue` to take us to the next invocation of `CodedOutputStream::WriteVarint32ToArray()`, and inspect the stack.

![alt text](resources/images/gdb-12.png)

Highlighted above, we see that the number `47` is being varint encoded next; recall that this is the size of our example `Person` message.

12. Run `continue` followed by `bt` once more, and let's take a look at what the stack is telling us: 

![alt text](resources/images/gdb-13.png)

We see that `WireFormatLite::InternalWriteMessageNoVirtualToArray()` (`#5` in the call stack) calls `Person::InternalSerializeWithCachedSizesToArray()`, which is the compiler-generated method we analyzed in the last section and know is responsible for serializing the `Person` class's individual fields! This method calls `WireFormatLite::WriteStringToArray()` first, setting its parameters `value` and `field_number` to `"Kevin Durant"` and `1`, respectfully, to proceed with serializing the `Person` message's first field: `required string name = 1;`. As usual, we write this field's key first which leads to varint encoding the value `10` in `CodedOutputStream::WriteVarint32ToArray()`. Before we conclude this section, let's see which methods are responsible for serializing the value (`"Kevin Durant"`) of our `name` field.

13. Set a breakpoint at **line 736** of the file, `google/protobuf/io/coded_stream.cc`, run `continue`, and run `bt` one final time.

```
break coded_stream.cc:736
continue
bt
```

![alt text](resources/images/gdb-14.png)

Here, we see that `WireFormatLite::WriteStringToArray()` (`#1` in the call stack) calls `CodedOutputStream::WriteRawToArray()`, setting its parameter `size` to `12`: the length of the string `"Kevin Durant"`. This method in turn calls <a href="http://man7.org/linux/man-pages/man3/memcpy.3.html">`memcpy()`</a> on **line 736** (highlighted above), instructing the system to copy 12 bytes of data from the memory area pointed to by `data` to the memory area pointed to by `target`. For those brave enough, let's jump into `memcpy()` next.

14. Run `step` and `list`.

![alt text](resources/images/memcpy().png)

Here we see that we've now entered code that belongs to the GNU C Library, `glibc`. We also see that `memcpy()` is implemented in <a href="https://en.wikipedia.org/wiki/X86_assembly_language">x86 assembly</a>. Details of this method's <a href="https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/x86_64/multiarch/memcpy-ssse3.S;h=9642ceecd90f35a918ed96981836c5a8cdf8f0fa;hb=HEAD">implementation</a> are beyond the scope of this tutorial, but the important takeaway is that this is where the Protocol Buffer runtime library hands off execution to the system for copying *raw bytes of data* from one memory location to another (i.e., to our output stream).

In the next section, we'll see how keys and values of all field types can be categorized into two high-level types of data: *varint data* and *raw data*.

#### Analyzing the Protocol Buffer serialization code

In the previous two sections, we saw that the compiler-generated code works very closely with the Protocol Buffer runtime library to serialize fields of a message. We took a closer look at `Person::InternalSerializeWithCachedSizesToArray()` and saw that it makes a sequence of calls to `WireFormatLite::Write*ToArray()` methods to serialize its fields in order of ascending field number. I like to call `InternalSerializeWithCachedSizesToArray()` the *"lowest high-level serialization method"*; its purpose is to provide the *order* in which fields of a message (e.g., a `Person` message) are encoded and written to an output buffer. Next, we looked at the `WireFormatLite::Write*ToArray()` methods that it calls and saw that they in turn call `CodedOutputStream::Write*ToArray()` methods which actually *perform the encoding and writing* of field keys and values. Finally, we learned that `CodedOutputStream::WriteVarint32ToArray()` is the method responsible for varint encoding 32-bit integers.

As it turns out, there are six methods of the `CodedOutputStream` class that contain all the logic for encoding and writing keys and values of **all field types**:

1. `WriteVarint32ToArray()`

![alt text](resources/images/WriteVarint32ToArray().png)

2. `WriteVarint64ToArrayInline()`

![alt text](resources/images/WriteVarint64ToArrayInline().png)

3. `WriteLittleEndian32ToArray()`

![alt text](resources/images/WriteLittleEndian32ToArray().png)

4. `WriteLittleEndian64ToArray()`

![alt text](resources/images/WriteLittleEndian64ToArray().png)

5. `WriteRaw()`

![alt text](resources/images/WriteRaw().png)

6. `WriteRawToArray()`

![alt text](resources/images/WriteRawToArray().png)

This brings us to the first of two *key realizations* I had when analzying the code:

*1. All logic for serializing fields of any message is contained within the Protocol Buffer runtime library, **NOT** in the compiler-generated code*

This is significant because it means that we don't have *specialized encoding logic* in the compiler-generated code for messages defined in a `.proto` file but rather *a consistent mechanism for serializing fields*: calling one of the six `CodedOutputStream` methods above. It's these methods that serve as templates for designing the <a href="https://en.wikipedia.org/wiki/Datapath">datapath</a> of the hardware accelerator. They also shed light on how data would eventually be communicated from the SoC's ARM Cortex-A9 CPU to the hardware accelerator, leading to my choce of designing the peripheral as an <a href="https://github.com/att-innovate/firework/blob/master/resources/AMBA%20AXI%20and%20ACE%20Protocol%20Specification.pdf">ARM AMBA AXI4</a> slave peripheral. Had the logic been part of the compiler-generated code, it may have been much more difficult or not possible to design a single hardware accelerator that supports serialization of all Protocol Buffer applications.

The second key realization came from thinking about how all the supported field types map to these six methods:  

*2. Keys are encoded as varints, and values of all field types can be categorized as either **varints** or **raw data***

Let's look more closely at how the supported *field types* map to one of six *wire types* in the following table, pulled from the <a href="https://developers.google.com/protocol-buffers/docs/encoding">Encoding</a> page:

![alt text](resources/images/wire-types.png)

Note, I chose to omit support for wire types `3` and `4` from the hardware accelerator design because `groups` have been depreciated starting with the **proto3** version of the Protocol Buffers language, and we're working with version `v3.0.2`. 

Wire type `0` is used for field *keys*; the following field types (from the table): `int32`, `int64`, `uint32`, `uint64`, `sint32`, `sint64`, `bool`, `enum`; and the *size* of length-delimited fields. All of these are encoded as **varints**. 

Wire type `2` is used for length-delimited fields (`string`, `bytes`, `embedded messages`, `packed repeated fields`), and their values can be thought of as *variable-sized* **raw data** that simply needs to be copied byte-for-byte to an output buffer. Wire type `1` is used for 64-bit data (`fixed64`, `sfixed64`, `double`) whose payload is always *8 bytes*, and wire type `5` is used for 32-bit data (`fixed32`, `sfixed32`, `float`) whose payload is always *4 bytes*. Values of these two wire types are also copied byte-for-byte, so you can classify them as **raw data** as well.

This second insight that all serialized data could be classified into two broad categories led to a major simplificaiton and optimization in the hardware accelerator design: I could build a datapath that consists of two parallel channels for processing incoming **varints** and **raw data** and stitch together the encoded data into a unified output buffer, presesrving the order in which the fields are serialized. There isn't a precise way for me to explain how I came to this, and it's a prime example of how RTL design is an art. I took the time to fundamentally understand the *operations being performed on data* and *how the data is moving* at a level even lower than the abstraction provided above by the Protocol Buffer language.

I elaborate further on the hardware accelerator design and how it supports the various field types in the section, [Design and Implement the hardware accelerator (FPGA peripheral)](README.md#4-design-and-implement-the-hardware-accelerator-fpga-peripheral).

#### A brief note on `perf`

If I could go back, I would also use `perf` at this stage to learn more about the *frequency at which different methods are invoked* and the *percentage of total execution time* the various codepaths, focusing on those belonging to message serialization, account for. `perf` also yields important information on time spent in the *user space application* vs. *core libraries* and even time spent *executing <a href="https://github.com/torvalds/linux">kernel</a> code*. It may very well be the case that a considerable amount of the execution time is spent in areas you weren't aware of and hence didn't target for acceleration (e.g., the overhead of calling `memcpy()` in the `CodedOutputStream::Write*()` methods when serializing raw data). With this information, you can guage whether specialized hardware could even outperform the software, and if so, which codepaths you should target for optimization (i.e., design hardware to replace). It was a combination of lacking experience in analyzing system performance, thinking the <a href="https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/44271.pdf">paper</a> provided sufficient motivation, and being overwhelmed with too many other unknowns in this project that led to me skip this step.

## Hardware Development

If you've made it this far, congratulations! Now that we have our board selected, our development environment set up with the necessary EDA tools installed, and understand how Protocol Buffer serialization (and the code that performs it) works, we're ready to begin designing our hardware accelerator. It took a lot of preparation to get to this point, and in the following sections, we'll finally begin to realize our vision.

First, let's see how the six `CodedOutputStream::Write*()` methods identified in the last section are translated into a hardware accelerator (i.e., an RTL design or FPGA peripheral). Then, we'll integrate the newly developed FPGA peripheral into the larger Arria 10 <a href="https://rocketboards.org/foswiki/Documentation/GSRDGhrd">Golden Hardware Reference Design (GHRD)</a> where it'll serve as a co-processor to the ARM Cortex-A9 CPU onboard.

### 4. Design and Implement the hardware accelerator (FPGA peripheral)

In the last section, I claimed that understanding the software was *the most important step* of the process. Well, I think designing the hardware accelerator is *the most interesting (and challenging) step* as much of it relies on problem solving, piecing together information from various sources, and creativity. Before I could begin designing the hardware accelerator (i.e., the top-level I/O ports, FSMs, and datapath of the RTL design), I needed to first understand **how it would integrate into the larger Arria 10 SoC** such that I've established communication with the ARM Cortex-A9 CPU onboard and could interact with it via software running in a Linux environment. Knowing this would essentially define the interface (i.e., top-level I/O ports or external facing signals) our hardware accelerator would have to implement and leave its internal design to our creativity.

If you've worked with <a href="https://en.wikipedia.org/wiki/Field-programmable_gate_array">FPGAs</a> in the past to build simple digital designs, perhaps in the lab section of an introductory course on logic design, it's important to understand that building a hardware accelerator requires a different train of thought. It's not a *standalone piece of hardware* that we're implementing in the FPGA (e.g., a counter whose input is connected to a push button and output is displayed on a <a href="https://en.wikipedia.org/wiki/Seven-segment_display">7-segment display</a>); we're designing an FPGA peripheral that's just *one small component of a much larger, complex digital system*: a computer. Specifically, we're designing a custom processor that performs *Protocol Buffer serialization* as instructed by an ARM Cortex-A9 CPU which in turn executes a Protocol Buffer application. In this configuration, the hardware accelerator serves as a *co-processor* to the ARM CPU and is viewed as a *memory-mapped FPGA peripheral* from its perspective. What differentiates our FPGA design from other standalone projects is that, aside from the complexity of what we're building, its top-level I/O ports are solely connected to the <a href="https://www.altera.com/products/design-software/fpga-design/quartus-prime/features/qts-platform-designer.html">system interconnect</a> (i.e., system bus) which enables its *discovery* and *access* by the ARM CPU. That is, we're not interacting with the hardware accelerator directly but rather via software running on the ARM CPU. It may be troubling at frist to think you're going to build a very sophisticated digital circuit whose only means of interaction is via instructions executed on an ARM CPU (sorry, no <a href="https://en.wikipedia.org/wiki/DIP_switch">dip switches</a> or LEDs here!), but rest assured, I'll show you how to methodically approach the problem and make it seem less like a leap of faith, like it was for me.

How did I come to realize that this is the role our hardware accelerator would play within the larger Arria 10 SoC? It required a lot of patience and piecing together information from various sources. The following is a list of separate initiatives I undertook that, although not comprehensive, I later identified as key contributors to obtaining the information I needed to begin designing the hardware accelerator:
- Going through several courses Intel provides for free in their <a href="https://www.altera.com/support/training/curricula.html">online FPGA Technical Training</a> curricula which covers everything from the general FPGA design process to how their EDA tools are used at the various stages of design, simulation, and testing (functional verificaiton, static timing analysis, etc.) and more
- Going through the <a href="https://rocketboards.org/foswiki/Documentation/AlteraSoCWorkshopSeries">Altera SoC Workshop Series</a> presentations on software development for Altera SoCs and writing Linux device drivers for *memory-mapped FPGA peripherals*
- Spending time to fundamentally understand the <a href="https://rocketboards.org/foswiki/Documentation/GSRDGhrd">Arria 10 GHRD</a> architecture, design files, Quartus Prime and Qsys projects, example FPGA peripherals and how they're accessed from Linux. I realized the GHRD would be the starting point for my own *Qsys system design*, and the hardware accelerator would be added to it as a component 
- Learning about the *FPGA-to-HPS*, *lightweight HPS-to-FPGA*, and *HPS-to-FPGA* interfaces that provide a means of connecting the Arria 10 SoC's <a href="https://www.altera.com/products/soc/portfolio/arria-10-soc/arria10-soc-hps.html">Hard Processor System (HPS)</a> (~synonymous to "ARM CPU") to designs residing in the FPGA fabric. Here I learned that certain <a href="https://en.wikipedia.org/wiki/Address_space">address spaces</a> are reserved for communicating with FPGA peripherals over these interfaces and how to assign addresses to said peripherals in the <a href="https://www.altera.com/products/design-software/fpga-design/quartus-prime/features/qts-platform-designer.html">Qsys system</a>
- Going through <a href="https://www.altera.com/support/training/course/oqsys3000.html"> one course in particular</a> from the *Advanced Hardware* series of Intel's online FPGA Technical Trianing which connected all the information I had acquired up to this point and finally answered the question of how the hardware accelerator would integrate into the larger Arria 10 SoC
- Reading the <a href="https://github.com/att-innovate/firework/blob/master/resources/AMBA%20AXI%20and%20ACE%20Protocol%20Specification.pdf">AMBA AXI and ACE Protocol Specification</a> to learn about the *<a href="https://en.wikipedia.org/wiki/Bus_(computing)">system bus</a>* (or interconnect) used to build ARM-based SoCs and specifically, the signals that comprise *<a href="https://www.xilinx.com/products/intellectual-property/axi.html#details">AXI4 interfaces</a>* - the interface our hardware accelerator's top-level I/O ports would have to implement!

The remainder of this section is broken down into three parts. First, I'll elaborate on the above initiatives and walk the reader through understanding how hardware accelerators are built on Arria 10 SoC platforms. I'll conclude this part with a discussion on the course that [put all the pieces together](README.md#iv-putting-the-pieces-together) followed by an overview of the [AMBA AXI4 interface](README.md#v-amba-axi-and-ace-protocol-specification) the hardware accelerator implements. Next, I'll go over the hardware accelerator's RTL design: its high-level architecture, various pipeline stages, datapaths, FSMs, and how it's designed to communicate with an ARM CPU. Finally, I'll show how to implement the RTL design as a Quartus Prime project (using <a href="https://en.wikipedia.org/wiki/Verilog#Verilog_2001">Verilog</a> to capture its behavior) and verify its functional correctness by running gate-level simulations using the ModelSim-Intel FPGA simulation tool.

#### a. Relevant training, examples, and other online resources

Let's take a look at the online training, examples, resources, etc. that were prerequisites for being able to design the hardware accelerator, starting with Intel's online training.

##### i. Intel FPGA (and other) online training

The <a href="https://www.altera.com/support/training/curricula.html">Intel FPGA Technical Training</a> provides free online courses on almost every aspect of the FPGA design process and using their EDA tools at the various stages. Of the courses available, below are the ones that I found relevant to this project. Some provided necessary context for what we're trying to achieve, others were simply review material, and others I needed to understand how and when to use their EDA tools at the various stages of design. Go through them as necessary; if you're already familiar with a particular topic or tool, then feel free to skip the training. At a minimum, I recommend going through the bolded courses as a refresher on how to use Quartus Prime to *implement RTL designs* and Qsys to *build complete systems*.

(*Optional*) Background information on programmable logic and FPGAs
- <a href="https://www.altera.com/support/training/course/odsw1005.html">Basics of Programmable Logic: History of Digital Logic Design</a>
- <a href="https://www.altera.com/support/training/course/odsw1006.html">Basics of Programmable Logic: FPGA Architecture</a>
- <a href="https://www.altera.com/support/training/course/odsw1010.html">How to Begin a Simple FPGA Design</a>

HDLs, Verilog
- <a href="https://www.altera.com/support/training/course/ohdl1120.html">Verilog HDL Basics</a>
- <a href="http://www.asic-world.com/verilog/veritut.html">Verilog Tutorial - ASIC World</a>

Quartus Prime
- **<a href="https://www.altera.com/support/training/course/odsw1100.html">Using the Quartus Prime Software: An Introduction</a>**
- <a href="http://www.eecs.umich.edu/courses/eecs270/270lab/270_docs/tutorial.html">EECS 270: Quartus Software Tutorial</a>

ModelSim-Intel FPGA, writing Verilog testbenches
- <a href="https://www.altera.com/support/training/course/odsw1120.html">Overview of Mentor Graphic's ModelSim Software</a>
- **<a href="http://www.eecs.umich.edu/courses/eecs270/270lab/270_docs/tutorial.html">EECS 270: Quartus Software Tutorial</a>** (focusing on section **C. Simulation**) 

TimeQuest Timing Analyzer, performing static timing analysis
- <a href="https://www.altera.com/support/training/course/odsw1115.html">TimeQuest Timing Analyzer: Introduction to Timing Analysis</a>
- <a href="https://www.altera.com/support/training/course/odsw1116.html">TimeQuest Timing Analyzer: TimeQuest GUI</a>
- <a href="https://www.altera.com/support/training/course/odsw1117.html">TimeQuest Timing Analyzer: Quartus Prime Integration & Reporting </a>
- <a href="https://www.altera.com/support/training/course/odsw1118.html">TimeQuest Timing Analyzer: Required SDC Constraints</a>

Qsys System Integration Tool
- **<a href="https://www.altera.com/support/training/course/oqsys1000.html">Introduction to Qsys</a>**
- **<a href="https://www.altera.com/support/training/course/oqsyscreate.html">Creating a System Design with Qsys</a>**

##### ii. RocketBoards.org

<a href="https://rocketboards.org/">RocketBoards.org</a> is a site that provides a multitude of resources and information you'll need for your own SoC/FPGA project, including access to a community of other Intel SoC FPGA developers. The site includes a <a href="https://forum.rocketboards.org/">forum</a> where you can ask fellow developers questions or for help on solving certain issues, example FPGA designs, Intel FPGA development kit reference designs (e.g., Arria 10 <a href="https://rocketboards.org/foswiki/Documentation/A10GSRDV171UserManual">GSRD</a> and <a href="https://rocketboards.org/foswiki/Documentation/A10GSRD151GHRDOverview">GHRD</a>), Arria 10-specific and other <a href="https://rocketboards.org/foswiki/Documentation/WebHome">documentation</a>, and a series of *Getting Started* tutorials that show you how to get up and running with the Arria 10 SoC Development Kit:

![alt text](resources/images/rocketboards.png)

Take some time to go through this website and become familiar with the various resources available. Once you've done that, I recommend going to the *<a href="https://rocketboards.org/foswiki/Main/GettingStarted">Getting Started</a>* page, selecting the proper **Board** and **Tool Version**, and going through the various **Tasks** to become familiar with using the Arria 10 SoC Development Kit and its various hardware and software components. Although all tasks provide useful information, I recommend completing:

- **1 - Booting Linux from SD Card**
- **2 - Sample Linux Applications** 

for now to boot and interact with Linux on the Arria 10 SoC Development Kit for the first time and to see how the Arria 10 GHRD's example FPGA peripherals are accessed from software running in Linux. Tasks **4, 5, 7, 8, and 9** are also relevant, but hold off on them for now. We'll revisit them in later sections of the tutorial after we've built the hardware accelerator.

Once you've gone through tasks **1** and **2** above and have successfully interacted with the Arria 10 GHRD's example FPGA hardware (e.g., LED PIO module) via the provided Linux applications, a useful exercise now is to apply what you've learned in the previous section on using Quartus Prime and Qsys to **successfully compile the Arria 10 GHRD's Quartus Prime project and go through its Qsys system design**. The GHRD project files can be downloaded <a href="https://rocketboards.org/foswiki/Documentation/GSRD171ReleaseNotes#Release_Contents">here</a> (for version `17.1` of Quartus Prime/Qsys tools):

![alt text](resources/images/ghrd-0.png)

Become intimate with its architecture, various components, connections, interfaces, signals, top-level I/O, addresses assigned to FPGA peripherals ("soft IP"), and design files. For example, you should leave this stage knowing not only how to toggle the LEDs ON/OFF via the provided Linux applications, but also understanding the connections in the Arria 10 GHRD between the *<a href="https://www.altera.com/products/soc/portfolio/arria-10-soc/arria10-soc-hps.html">HPS</a>* and *LED PIO* IP core and address mapping that enable this interaction. Refer to *Chapter 22 - PIO Core* of the <a href="https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/ug/ug_embedded_ip.pdf">Embedded Peripherals IP User Guide</a> to learn more about Paralell Input/Output (PIO) IP cores and how one is used in the Arria 10 GHRD to control the external LEDs.

![alt text](resources/images/ghrd-1.png)

![alt text](resources/images/ghrd-2.png)

This is an important prerequisite for the next section, [System integration (Arria 10 GHRD)](README.md#5-system-integration-arria-10-ghrd), as we'll add the hardware accelerator we develop here to the Arria 10 GHRD!

##### iii. Altera SoC Workshop Series
You should now be familiar with the FPGA design process, using Quartus Prime and Qsys to implement FPGA and system designs, running Linux on the Arria 10 SoC Development Kit, and the Arria 10 GHRD architecture. Next, it's important to understand *how Linux applications interact with "soft IP", or user-defined peripherals (e.g., our protobuf-serializer hardware accelerator) in the Arria 10 SoC's FPGA fabric*. The <a href="https://rocketboards.org/foswiki/Documentation/AlteraSoCWorkshopSeries">Altera SoC Workshop Series</a> is your one-stop shop for learning about the **mechanisms** that enable user space access of custom FPGA peripherals, including:

- the ARM CPU's **<a href="https://en.wikipedia.org/wiki/Physical_address">physical</a> address map** and specifically, the address space reserved for **<a href="https://en.wikipedia.org/wiki/Memory-mapped_I/O">memory-mapped I/O</a> peripherals**
- the **HPS2FPGA** and other bridges (i.e., interfaces) between the <a href="https://www.altera.com/products/soc/portfolio/arria-10-soc/arria10-soc-hps.html">Arria 10 HPS</a> and FPGA fabric
- and **Linux device drivers** for memory-mapped FPGA peripherals in Altera SoCs (general Linux driver development techniques and walk-throughs of example drivers written for the Arria 10 GHRD's FPGA peripherals)

The Altera SoC Workshop Series consists of 3 workshops:
- <a href="https://rocketboards.org/foswiki/Documentation/WS1IntroToAlteraSoCDevices">WS1 - Altera SoC Devices Introduction for SW Developers</a>
- <a href="https://rocketboards.org/foswiki/Documentation/WS2LinuxKernelIntroductionForAlteraSoCDevices">WS2 - Linux Kernel Introduction for Altera SoC Devices</a>
- <a href="https://rocketboards.org/foswiki/Documentation/WS3DevelopingDriversForAlteraSoCLinux">WS3 - Developing Drivers for Altera SoC Linux</a>

Each workshop consists of *presentation material* (i.e., slides in the form of a .pdf file) and a *take-home lab*; don't bother with the labs - they're geared towards a different development board and this tutorial essentially replaces them anyway. While all three workshops provide useful information, there's a lot of overlap, irrelevant information, and information that applies to later steps in this tutorial, so I'll do my best to summarize key slides/info relevant to this step. Regardless, it may be a good idea to skim through the presentations anyway, but don't worry about trying to understand every little detail. Note, I'll discuss material from **workshops 1 and 2** for now; **workshop 3 covers essential information for driver development** and is the main material of the later section, [7. Write a device driver (interface between FPGA peripheral and user space application)](README.md#7-write-a-device-driver-interface-between-fpga-peripheral-and-user-space-application).

Honestly, some of the information in these presentations is so fundamental to understanding *how to build FPGA designs that interact with the Arria 10 HPS* that it makes me wonder why it's buried in such an obscure location. If all the relevant information I've identified in this and other subsections of [a. Relevant training, examples, and other online resources](README.md#a-relevant-training-examples-and-other-online-resources) were succinctly contained in some `README` file, "Quick Start Guide", or a "What You Need to Know for Building FPGA Designs on the Arria 10 SoC" tutorial when you first open the box, it would've literally shaved months off of all the searching and prep work/learning I had to do before I could begin working on my design. Without further ado, let's discuss the important information drawn from workshops 1 and 2.

Below are four different diagrams of the Arria 10 SoC architecture (why there are four, I'm not quite sure). Each one presents slightly different details about the various hardware blocks in the design, connections, and bus information. Let's see what we can learn from each and try to connect the dots, starting with the first one:

![alt text](resources/images/arria-10-soc-1.png)

Hopefully at this point you're already familiar with the Arria 10 SoC's architecture. If not, spend some time <a href="https://www.altera.com/products/soc/portfolio/arria-10-soc/features.html">here</a> going over the Arria 10 SoC Block Diagram and list of its features. In the diagram above, we see the two main components of the Arria 10 SoC: the HPS (light blue) and FPGA (light green). We also see several hardware blocks that constitute the HPS. Enclosed in the red rectangle are the ones of interest: the **HPS to FPGA** and **FPGA to HPS** interfaces. Knowing that we'll eventually want the Protocol Buffer application (running in the HPS) to send data to our hardware accelerator (running in the FPGA) for it to serialize, it appears we'll have to send data over one or more of these interfaces. Let's take a look at the next diagram to see what else we can learn about them:

![alt text](resources/images/arria-10-soc-2.png)

In this diagram, we can infer more details about these interfaces. Starting at the **ARM Cortex-A9 MPCore** block, we see its **L2 Cache** is connected to an external block, the system **Interconnect**, and the **Interconnect** is in turn connected to the **HPS to FPGA** and **FPGA to HPS** interfaces (which here, incorrectly appear to be blocks of the FPGA; don't let that bother you). What does this tell us? If you're familiar with basic principles of <a href="https://www.amazon.com/Computer-Organization-Design-MIPS-Fifth/dp/0124077269">computer organization and design</a> and <a href="https://en.wikipedia.org/wiki/Memory_hierarchy">memory hierarchies</a>, then it appears that the ARM CPUs running the Protocol Buffer applicaiton will have to send serialization data to the hardware accelerator by *executing instructions that store data in the system's memory*. The data propegates through the CPU's L1 cache to the shared L2 chache, and instead of making its way to the **Multi-port DDR SDRAM Controller** to be stored in the system's memory, it would be directed to the **Interconnect** and eventually to the hardware accelerator via the **HPS to FPGA** interface. Alright, now we're getting somewhere! Let's see how we can build on this in the next diagram.

![alt text](resources/images/arria-10-soc-3.png)

Notice that in the previous two diagrams, there are *two arrows* extending from the **HPS to FPGA** interface. Here we see that it actually consists of two separate interfaces: a (lightweight) **LW HPS to FPGA** interface and (full or high-performance) **HPS to FPGA** interface. Note, "CORE" is synonymous to "FPGA" in the diagram; they were lazy when labeling it. We're also given new information about all three interfaces: 

- **LW HPS to FPGA** is labeled *AXI 32*
- **HPS to FPGA** is labeled *AXI 32/64/128 300 MHz*
- **FPGA to HPS** is also labeled *AXI 32/64/128 300 MHz*

In the labels, "AXI" refers to the ARM Advanced Microcontroller Bus Architecture (<a href="https://en.wikipedia.org/wiki/Advanced_Microcontroller_Bus_Architecture">AMBA</a>) Advanced eXtensible Interface (<a href="https://en.wikipedia.org/wiki/Advanced_Microcontroller_Bus_Architecture#Advanced_eXtensible_Interface_(AXI)">AXI</a>). It's an interface specifciation that *functional blocks* (e.g., our hardware accelerator) of an SoC design implement to facilitate communication over the system's interconnect. The **LW HPS to FPGA** implements a 32-bit AXI interface, and both **HPS to FPGA** and **FPGA to HPS** are configurable *32-*, *64-*, or *128-bit AXI* interfaces operating at 300 MHz (I'm guessing the lightweight interface does too). Great, we've learned quite a bit about the interfaces that connect the HPS and custom FPGA peripherals. Let's see what we can learn from the last diagram:

![alt text](resources/images/arria-10-soc-4.png)

This block diagram presents the most detailed (and accurate) information yet. Here we see the **L3 Interconnect**'s inner components, including an **L3 Main Switch** that has a 64-bit AXI bus connecting it to the **HPS-to-FPGA Bridge** and an **L3 Slave Peripheral Switch** that has a 32-bit AXI bus connection to the **Lightweight HPS-to-FPGA Bridge**. I've marked the paths from the HPS (~synonymous to the **MPU subsystem** in this diagram) to the respective interfaces in red and blue rectangles for clarity.

We gain another key insight from this diagram: the **HPS-to-FPGA Bridge** and **Lightweight HPS-to-FPGA Bridge** components are designed to communicate with *slave peripherals* in the FPGA, whereas and the **FPGA-to-HPS Bridge** facilitates communication with FPGA *master peripherals*. This means we have the choice of designing the hardware accelerator as an AXI slave or master FPGA peripheral depending on the bridge we choose as the interface to the HPS. I'm getting ahead of myself, but in the next section I'll reveal the one Intel online training that, together with my knowledge of the Arria 10 GHRD and high-level understanding of how the hardware accelerator should function, led me to realize the HPS (i.e., ARM CPUs) is actually an *AXI master component* that'll issue *write or read transactions* to send data to the hardware accelerator for it to serialize or read serialized data from its output buffer, respectfully. Therefore, the hardware accelerator should implement an *AXI slave* interface and communicate with the HPS over either the lightweight or high-performance **HPS-to-FPGA Birdge**, and I chose the latter.

Earlier, I mentioned that the ARM CPU sends data to the hardware accelerator by executing instructions that *store data in the system's memory*. From its perspective, any address it writes to is a location in the system's <a href="https://en.wikipedia.org/wiki/Computer_data_storage#Primary_storage">main memory</a>. That is, it's completely unaware of the **L1** and **L2 Cache**, **L3 Interconnect**, **SDRAM Controller Subsystem** and even the fact that it's using <a href="https://en.wikipedia.org/wiki/Virtual_address_space">virtual addresses</a> which the SDRAM controller translates into actual physical addresses (i.e. memory locations) of the <a href="https://en.wikipedia.org/wiki/Synchronous_dynamic_random-access_memory">SDRAM</a> chips that constitute the main memory. In this abstraction, let's see how data is directed to FPGA periperals over the **Lightweight HPS-to-FPGA bridge** and **HPS-to-FPGA bridge** rather than system's memory.

![alt text](resources/images/memory-map-1.png)

The graphic above displays the Arria 10 SoC's physical <a href="https://en.wikipedia.org/wiki/Memory_map">memory map</a> from various perspectives, including the **L3 Interconnect**, the **MPU**, and the **FPGA**'s direct view of SDRAM (different from that of the **FPGA-to-HPS Bridge**). Note, I'm not exactly sure what the acronym **MPU** stands for (perhaps **M**ulti**p**rocessor **U**nit?), and to avoid confusion, I'll refer to it as the **HPS**. Based on our interest in the lightweight and high-performance **HPS-to-FPGA** bridges and knowledge of how the **HPS** is connected to the **L3 Interconnect**, we can essentially treat their views of the physical memory map (i.e., the first two columns) as identical. We learn something significant from the physical memory map: certain <a href="https://en.wikipedia.org/wiki/Address_space">address spaces</a> are reserved for *communicating with FPGA slaves over the HPS-to-FPGA bridge (light-blue region) and lightweight HPS-to-FPGA bridge (orange region)*. That is, **the HPS views FPGA peripherals as <a href="https://en.wikipedia.org/wiki/Memory-mapped_I/O">memory-mapped I/O</a>**, and accesses them by writing (reading) to (from) addresses within these ranges! The next slide gives us the sizes of these address ranges (which oddly isn't shown in the one above), and hence we can deduce their boundaries:

![alt text](resources/images/memory-map-2.png)

With *960 MB* of address space reserved for FPGA slave peripherals over the **HPS-to-FPGA bridge**, and *2 MB* reserved for the **lightweight HPS-to-FPGA bridge**, we arrive at the following:

Interface | Size of Address Space | Start Address | End Address | Calculation
--- | :---: | --- | --- | :---: 
**HPS-to-FPGA** | 960 MB | `0xc0000000` |  `0xfbffffff` | <a href="https://www.google.com/search?safe=off&ei=odE6WvaSEJajjwS9_5_oCw&q=%283*2%5E30+%2B+960*2%5E20%29+-+1+in+hex&oq=%283*2%5E30+%2B+960*2%5E20%29+-+1+in+hex&gs_l=psy-ab.3...112750.119476.0.119869.16.11.5.0.0.0.97.793.11.11.0....0...1c.1.64.psy-ab..0.0.0....0.GmIxoou2B3Q">(3\*2^30 + 960\*2^20) - 1</a>
**LW HPS-to-FPGA** | 2 MB | `0xff200000` |  `0xff3fffff` | <a href="https://www.google.com/search?safe=off&ei=htM6WvG0I6mijwSKn7XIDw&q=%280xff200000+%2B+2*2%5E20%29+-+1+in+hex&oq=%280xff200000+%2B+2*2%5E20%29+-+1+in+hex&gs_l=psy-ab.3...39088.59015.0.60953.10.10.0.0.0.0.80.680.10.10.0....0...1c.1.64.psy-ab..0.1.67...35i39k1.0.fqE5rE8dESY">(0xff200000 + 2\*2^20) - 1</a>

A funny sidenote - I noticed at the time of creating this tutorial that the slide above (from *Workshop 1*) also appears in *Workshop 2*, however the title and last bullet convey more specific information and two additional bullets are inserted, also providing useful information:

![alt text](resources/images/memory-map-3.png)

The picture of how our hardware accelerator fits into the larger Arria 10 SoC is much clearer now. Now we know that the HPS (ARM CPUs) running the Protocol Buffer applicaiton will send data to the hardware accelerator by writing to certain addresses within these ranges. There are still a few details that remain unsolved (e.g., how to assign addresses within these ranges to our hardware accelerator, how to access these addresses from user space applications, etc.), but rest assured, we'll find answers in the next section and in *Workshop 3* as the last bullet above suggests.

##### iv. Putting the pieces together
- Custom IP Development Using Avalon and AXI Interfaces --> "ah-ha! moment": develop hardware accelerator as an AXI4 slave, integrate into Arria 10 GHRD system as a memory mapped FPGA peripheral communicating via HPS2FPGA bridge :D
- <a href="https://www.altera.com/support/training/course/oqsys3000.html">Custom IP Development Using Avalon and AXI Interfaces</a>

The ARM CPU (**AXI master**) initiates a sequence of *write transactions* sending data to the hardware accelerator (**AXI slave**) for it to serialize. The hardware accelerator must also be capable of responding to subsequent *read transactions*, sending serialized data from its output buffer to the ARM CPU.

##### v. AMBA AXI and ACE Protocol Specification
- Read the ARM AMBA AXI4 specification

Now that we know *what needs to be done/how it fits*, we're ready to design the hardware accelerator.

#### b. The hardware accelerator RTL design: an AXI4 slave peripheral (top-level I/O, FSMs, and datapath)
As a prerequisite to understanding the hardware accelerator design in the following section, I'm assuming you have a background in or basic understanding of the principles of logic design and digital systems, combinational vs. sequential logic, controllers (<a href="https://en.wikipedia.org/wiki/Finite-state_machine">FSMs</a>), <a href="https://en.wikipedia.org/wiki/Datapath">datapaths</a>, <a href="https://en.wikipedia.org/wiki/Register-transfer_level">RTL design</a>, the use of <a href="https://en.wikipedia.org/wiki/Hardware_description_language">HDLs</a> to implement hardware at a behavioral level, the concept of <a href="https://en.wikipedia.org/wiki/Pipeline_(computing)">pipelining</a>, and designing custom processors. I've essentially listed material covered in the book, <a href="https://www.amazon.com/Digital-Design-RTL-VHDL-Verilog/dp/0470531088">Digital Design</a> by Frank Vahid, and I recommend reviewing this material before proceeding. If at any point you find yourself unfamiliar with a particular topic, you can refer to this book or other sources to learn more and continue with the tutorial.

- Began designing FSM... quickly realized read/write transactions are independent, require separate FSMs --> pipelined processor design
- Go over the design of the processor in detail (processor architecture, FSMs, datapaths :D)

#### c. Implementation using Quartus Prime, ModelSim-Intel FPGA, and Qsys

- Writing custom RTL vs. OpenCL?
- Verilog-2001 vs. SystemVerilog?
- Already enough complexity: see what's available in the IP Catalog (used FIFO IP Cores)
- What determine's top-level I/O?: Qsys-generated HDL skeleton for AXI4 slave interface :D
- Quartus Prime project 'protobuf-serializer' --> design entry (Verilog), compilation
- ModelSim-Intel FPGA Edition: testbenches + gate-level simulation for functional verification
- Woo hoo! Time to integrate...

1. Open a terminal and download the entire Firework repository.

```
cd ~/workspace
git clone https://github.com/att-innovate/firework.git
```

2. Open the Quartus Prime Standard Edition software.

```
quartus &
```

3. Luckily, we don't have to create a new project using the **New Project Wizard**. `protobuf-serializer` from the Firework repository is a complete Quartus Prime project that we can open, containing the RTL for our hardware accelerator, Quartus Prime Project File (.qpf), and Quartus Prime Settings File (.qsf) which contains all project-wide assignments and settings (e.g., the `10AS066N3F40E2SG` device we're targeting). Note that for historic reasons, the (.qpf) and (.qsf) files are named `varint-encoder.qpf` and `varint-encoder.qsf`, instead of `protobuf-serializer.qpf` and `protobuf-serializer.qsf`, respectfully. `varint-encoder` is the name I originally gave to the hardware accelerator thinking it would only process 32-bit varint data before it eventually morphed into a much more sophisticated piece of hardware. From the *Home* screen, select **Open Project**. 

![alt text](resources/images/hw-acc-1.png)


### 5. System integration (Arria 10 GHRD)

- Intro
    - Arria 10 GHRD, Qsys
    - Training that helps: Custom IP Development Using Avalon and AXI Interfaces
    - Interfaces (clock, reset, interrupts, Avalon, AXI, conduits)
    - Most powerful Qsys tool: auto-generated interconnect (you develop an AXI slave interface, simply connect to AXI master component)
- Training (Intel online training)
    - Intel online training
      - https://www.altera.com/support/training/course/oqsys1000.html
      - https://www.altera.com/support/training/course/oqsyscreate.html
      - https://www.altera.com/support/training/course/oqsys3000.html
    - Rocketboards.org
      - https://rocketboards.org/foswiki/Documentation/A10GSRDV160CompilingHardwareDesign
- Tutorial
    - [a10-soc-devkit-ghrd]
    - Adding protobuf-serializer to the GHRD!

## Software Development

The operating system, device driver, user space application

### 6. Create an FPGA peripheral-aware Linux image

- Intro
    - Discuss why running Linux is important (mimic's real datacenter setting)
    - Talk about Yocto Project, embedded Linux, etc.
    - Angstrom Linux distribution maintained for the Arria 10, other Altera boards
    - Working with Linux source code, configuring, compiling, and zImage for bootable microSD card
    - Overview of the boot process
    - Rocketboards.org training on creating the U-Boot bootloader, Linux device tree, rootfs, and formatting the microSD card
- Training
    - Rocketboards.org
      - https://rocketboards.org/foswiki/Documentation/A10GSRDV160GeneratingUBootAndUBootDeviceTree
      - https://rocketboards.org/foswiki/Documentation/A10GSRDV160GeneratingTheLinuxDeviceTree
      - https://rocketboards.org/foswiki/Documentation/A10GSRDV160CreatingAndUpdatingTheSDCard
- Tutorial
    - [linux-socfpga]
    - Configure and compile Linux kernel (cross-compile, see link below)
      - https://rocketboards.org/foswiki/Documentation/A10GSRDV160CompilingLinuxKernel
    - Steps to create bootable microSD card (Rocketboards.org training, repeat here or tell user to follow?)

### 7. Write a device driver (interface between FPGA peripheral and user space application)

- Intro
    - Overview of the driver I wrote (misc device driver)
    - Journey from writing to memory address --> input at hw-acc
- Training
    - Altera SoC Workshop Series
      - https://rocketboards.org/foswiki/Documentation/AlteraSoCWorkshopSeries
      - https://rocketboards.org/foswiki/Documentation/WS1IntroToAlteraSoCDevices
      - https://rocketboards.org/foswiki/Documentation/WS2LinuxKernelIntroductionForAlteraSoCDevices
      - https://rocketboards.org/foswiki/Documentation/WS3DevelopingDriversForAlteraSoCLinux
- Tutorial
    - [driver]
    - Setting up driver environment on the Arria 10
    - Installing linux-socfpga source (same source used to create zimage in step 6.)!
    - setting up kbuild environment

### 8. Closing the loop: modify the user space application

- Intro
    - Device driver provides the interface
    - Replace functions implementing computaiton w/ statements sending data to FPGA peripheral
- Training
    - http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html
- Tutorial
    - [att-innovate/protobuf]
    - building & installing google/protobuf on the Arria 10
    - building & installing att-innovate/protobuf on the Arria 10

## Measuring System Performance

We're done building the hardware-accelerated system. Now let's see how see how its performance compares to that of the standard system.

### 9. Profiling the hardware-accelerated system

- Training
    - http://www.brendangregg.com/perf.html
- Intro
    - clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &res)
    - perf
    - symbols, stack traces, cross-compilation
- Tutorial
    - [profiling]
    - switching between std & hw-acc libraries
