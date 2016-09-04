# FPGA

- <http://stackoverflow.com/questions/8988629/can-you-program-fpgas-in-c-like-languages>

There are two major vendors as of 2016: Xilinx and Altera.

Third one: Lattice Semiconductor, maker of ICE, which has had the bitstream reversed by the Project IceStorm.

## .bit file

## Bitstream file

FPGA input.

<http://www.fpga-faq.com/FAQ_Pages/0026_Tell_me_about_bit_files.htm>

Xilinx.

Stands for "bit-stream".

Almost always closed: <https://news.ycombinator.com/item?id=10653179>

Generated from VHDL by vendor tools. TODO: automatically or further human intervention needed?

## Simulation

Besides VHDL simulations, FPGA vendors also offer simulation of their hardware, closer to the actual implementation: <http://www.lowrisc.org/docs/untether-v0.2/fpga-sim/>

<http://electronics.stackexchange.com/questions/57220/simulating-fpga-design-without-having-the-actual-hardware>

## PLD

<https://en.wikipedia.org/wiki/Programmable_logic_device>

Reprogrammable devices, one of which are FPGAs.

#### SPLD

https://en.wikipedia.org/wiki/Simple_programmable_logic_device

#### CPLD

https://en.wikipedia.org/wiki/Complex_programmable_logic_device

## Synthesis

<https://github.com/cseed/arachne-pnr>
