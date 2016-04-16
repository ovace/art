# Open source hardware

<https://123d.circuits.io/>

<https://www.reddit.com/r/hardware/comments/2r12dm/why_doesnt_intel_make_a_gpu_or_nvidia_make_a_cpu/>

## x86

<https://en.wikipedia.org/wiki/X86> partly open because of age.

<https://www.quora.com/Why-doesnt-Intel-license-out-its-X86-chip-architecture-like-ARM>

## GPU

Nyuzi <http://nyuzi.org/> <https://en.wiktionary.org/wiki/nyuzi>

MIAOW <http://miaowgpu.org/> <https://github.com/VerticalResearchGroup/miaow> AMD Southern Islands ISA based.

## Movements

<http://opensourceecology.org/>

<https://www.ted.com/talks/marcin_jakubowski?language=en>

<https://en.wikipedia.org/wiki/Microprocessor_Report>

## Open source CPU

### RISC-V

https://en.wikipedia.org/wiki/RISC-V

They have a full working software toolchain:

- https://github.com/riscv/riscv-linux GCC
- https://github.com/riscv/riscv-tools
- http://riscv.org/software-tools/riscv-qemu/

Created in 2010. BSD license.

Userspace fixed in 2014, but kernel land not yet as of 2016. So the Linux port may have to change.

Google, HP and Oracle recently joined founding members https://www.reddit.com/r/opensource/comments/3ykeuo/google_hp_oracle_and_12_others_join_the_riscv/

UC Berkley.

TODO: any real hardware produced besides FPGA?

Debian port: <https://wiki.debian.org/RISC-V>

2016 India investment: <http://www.eetimes.com/document.asp?doc_id=1328790>

<http://riscv.org/2016/04/risc-v-offers-simple-modular-isa/>

#### Rocket

<https://github.com/ucb-bar/rocket-chip>

Written in Chisel, which is Scala based: <https://github.com/ucb-bar/chisel>

By Berkley people.

2015 presentation by Yunsup Lee <https://www.youtube.com/watch?v=Ir3h3qWcNlg>

A single source coce + some input parameters can generate:

- C++ simulator code
- FPGA Verilog
- ASIC Verilog

#### lowRISC

- http://www.lowrisc.org/
- https://github.com/lowRISC/lowrisc-chip

RISC-V ASIC and FPGA implementation.

RISC-V is only the API.

2016: mass production planned <http://www.lowrisc.org/about/>

By Cambridge people.

Mostly in System Verilog.

#### SiFive

http://sifive.com/

Startup around RISC-V tech by Berkley people, contributors to <https://github.com/riscv/riscv-tools>

More linked to Rocket.

### OpenRISC

https://en.wikipedia.org/wiki/OpenRISC

LGPL / GPL. TODO: history?

RISC-V says it is better than them.

### MIPS

TODO Is it open?

<https://en.wikipedia.org/wiki/MIPS_instruction_set>

<http://arstechnica.com/gadgets/2015/04/imagination-technologies-battles-x86-and-arm-with-free-and-open-mipsfpga/>

### CPU reverse engineer

6502:

-   <http://www.visual6502.org/>, presentation: <http://media.ccc.de/browse/congress/2010/27c3-4159-en-reverse_engineering_mos_6502.html#video&t=2089>

    Was used by NES.

    Removing the epoxy from chip carrier to expose the die: <https://www.youtube.com/watch?v=mT1FStxAVz4>

    Transparent packaging: <https://en.wikipedia.org/wiki/File:Microchips.jpg>

-   8080 (from the Soviet reversed clone) <http://zeptobars.ru/en/read/KR580VM80A-intel-i8080-verilog-reverse-engineering>

-   SEM view <https://www.youtube.com/watch?v=Fxv3JoS1uY8>

## Tools

<https://en.wikipedia.org/wiki/C_to_HDL>

### FPGA

- <http://stackoverflow.com/questions/8988629/can-you-program-fpgas-in-c-like-languages>

### GDS

https://en.wikipedia.org/wiki/GDSII

### VHDL

### Verilog

Main hardware design languages are VHDL and Verilog: <http://electronics.stackexchange.com/questions/16767/vhdl-or-verilog>

Implementations:

- <http://electronics.stackexchange.com/questions/22596/vhdl-ide-for-a-gnu-linux-environment>
- <http://askubuntu.com/questions/130588/is-there-a-vhdl-simulator>

The only open source one looks like GHDL, but it is not good enough to compete: <http://www.sigasi.com/content/why-ghdl-currently-not-good-enough> Written in ADA (looks like VHDL).

<http://electronics.stackexchange.com/questions/85053/how-verilog-or-vhdl-projects-are-implement-as-physical-chips>

### Arch C

http://www.archc.org/

### Chisel

Scala based.

## Concepts

<https://en.wikipedia.org/wiki/Popek_and_Goldberg_virtualization_requirements>

David Patterson, chip research superstar, 2015 <https://www.youtube.com/watch?v=mD-njD2QKN0>

## Open source hardware

<https://en.wikipedia.org/wiki/Open_Compute_Project> server hardware, by Facebook and others joined, but not Google.
