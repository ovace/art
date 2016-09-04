# Synopsys

## Most interesting tools

- RTL synthesis: Design Compiler
- Place and route: ICC: IC Compiler
- Sign-off: PrimeTime
- VCS: (`VerifiCation Simulator`?) Verilog simulator. TODO doesn't Design Compiler do that as well?

Useless official overview: http://www.synopsys.com/Tools/Implementation/Pages/default.aspx

## Learning outlines

- http://www.synopsys.com/Community/UniversityProgram/Pages/Curriculum.aspx
- http://www.synopsys.com/support/training/Pages/default.aspx

## DesignWare

## DW

IP blocks.

https://www.synopsys.com/dw/buildingblock.php

## ICC

Tree:

- `packages`: implement Verilog stdlib
- `lib/linux64`: the main `.so` files
- `linux64/syn/bin`: the main executables?

    Even after `LD_LIBRARY_PATH` to `lib/linux64`,

    - `LD_LIBRARY_PATH=../../../lib/linux64/ ./galaxy_icc_exec` fails because of missing: http://libmng.com/intro.html

        Looks like the major executable?

    - `gcpp` requires libstdc++.5.so

ICC shell: TODO. Commands:

    start_gui

Run:

    cd linux64/syn/bin
    ./galaxy_icc_exec -r /root/of/icc

If you don't point to the license server:

    Fatal: Galaxy-Common+Galaxy-ICC is not enabled. (DCSH-1)
    Exit IC Compiler!

This should be done with the: `LM_LICENSE_FILE`.

### Install Ubuntu 14.04

2016.03:

    sudo apt-get install libstdc++5 libmng2 libjpeg62

MANUAL: compile from source:

- `libtiff.so.3`: <http://askubuntu.com/questions/44132/how-do-i-install-libtiff-so-3/815009#815009>
- `libmng.so.1:`: <http://askubuntu.com/questions/453452/how-to-solve-missing-libmng-so-1-in-trusty-14-04-package-is-no-more-available/815018#815018>

### ICC 2

Same deps as ICC. Then:

    cd linux64/nwtn/bin
    # TODO what is nwtn?

    ./icc2_exec

Gives without license:

    Unable to get shell start-up license keys. Cannot invoke shell. Following license(s) must exist : {ICCompilerII or ICCompilerII-NX}.

## SAIF

Proprietary VCD file format alternative? http://www.synopsys.com/community/interoperability/pages/tapinsaif.aspx

## Tetra Max

APTG

## ev_engine

EV_Engine (R) Hierarchical Design Rule Checker

## syn files

Analysis of input RTL

## Licensing

Based on FLEXnet: <https://www.synopsys.com/Support/Li/Licensing/Pages/default.aspx>


## PrimeTime

2016

## VCS

`simv` is the compiled simulator for a design, much like an `a.out` for `iverilog`.

## Design Compiler

### Design Vision

TODO: old name for the GUI part of Design compiler?
