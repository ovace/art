# Raspberry Pi

Tested on RPI 2.

2015: Windows 10 will run on RPI for free: <http://www.techrepublic.com/article/windows-10-on-the-raspberry-pi-what-you-need-to-know/>

## Hardware

Broadcom closed source SoC with ARM CPU IP.

PCB schematics open: <https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/README.md> It is interesting how simple they are. The SoC ICs hide so much complexity away.

SoCs called BCM2835, BCM2836, BCM2837 for pi 1, 2, and 3 respectively.

Overview: <http://elinux.org/RPi_Hardware>

<https://en.wikipedia.org/wiki/Raspberry_Pi#Specifications>

### GPIO

<https://www.raspberrypi.org/documentation/usage/gpio-plus-and-raspi2/>

EEPROM: <http://raspberrypi.stackexchange.com/questions/50348/what-are-the-id-eeprom-pins-and-what-can-they-be-used-for>

Why 3.3V? <http://raspberrypi.stackexchange.com/questions/46765/why-do-the-pi-gpio-pins-use-give-3-3v-and-not-5v>

Max current: <http://raspberrypi.stackexchange.com/questions/9298/what-is-the-maximum-current-the-gpio-pins-can-output>

Max switching frequency: <http://raspberrypi.stackexchange.com/questions/26166/count-rpm-frequency-pulses-on-gpio-ports-maximum>

<http://raspberrypi.stackexchange.com/questions/5559/raspberry-pi-video-output>

Power: <http://raspberrypi.stackexchange.com/questions/1617/how-do-i-supply-power-through-the-gpio>

Bash control: <http://raspberrypi.stackexchange.com/questions/15283/how-to-get-the-state-of-a-gpio-pin-bash>

### GPU

GPU IP on core from Broadcom called VideoCore, which they bought with <https://en.wikipedia.org/wiki/Alphamosaic> in 2004, a Cambridge Company.

In 2014, Broadcom gave the source for the GPU driver, a rare move for similar software:

- <https://www.raspberrypi.org/blog/a-birthday-present-from-broadcom/>
- <https://www.raspberrypi.org/blog/open-source-arm-userspace/>

OpenGL is still a bit shaky, even though we have an open source driver:

- *this* is how it looks currently: <https://youtu.be/lQYlIn1BEfk?t=1136>
- <https://www.youtube.com/watch?v=EXDeketJNdk>
- <https://youtu.be/WMfgXOHWAnc?t=118> got it to work on 2016-03, but you need to enable a configuration option

### SoC

Pinout: appears undocumented, but reversed:

- <http://elinux.org/RPi_BCM2835_Pinout>. Is an 18 x 18 matrix!

## Compute module

element14 Raspberry Pi Compute Module Showcase <https://www.youtube.com/watch?v=k0L-pmf5mVg>

Exposes all CPU pins.

## Accessories

Official products: <https://www.raspberrypi.org/products/>

Astro Pi: <https://www.youtube.com/watch?v=utlN9ztenEM>

### Cameras

Infra-red camera: <https://www.raspberrypi.org/products/pi-noir-camera-v2/>

### Display

Official one in 2015, 74 dollars:

- <https://www.raspberrypi.org/products/raspberry-pi-touch-display/>
- <https://www.raspberrypi.org/blog/the-eagerly-awaited-raspberry-pi-display/>

Almost the same price as full size desktop monitor: <https://www.amazon.com/Monitors-Computers-Accessories/b?ie=UTF8&node=1292115011>, so only worth it for the portability.

Laptop-like dock adapted from Motorola: <https://www.youtube.com/watch?v=yZkz_a52I6s>

#### No display

<http://raspberrypi.stackexchange.com/questions/14611/how-to-set-up-raspberry-pi-without-a-monitor#comment80927_14611> TODO convert to answer after I get 10 rep in that crappy website. Also add: <https://www.raspberrypi.org/documentation/remote-access/vnc/linux.md>

SSH `-X` forwarding works for some applications, but may fail, e.g. with OpenGL.

### Wi-fi

Some models don't on-board, you need an USB dongle. Starting from 6 pounds, and recently there is an official version.

### Browser

GNOME Epiphany is recommended? TODO why? Vs. Firefox, Chromium?

### Games

<http://minecraft.gamepedia.com/Pi_Edition>

## Emulation

You need to modify the default image a bit and a cross compiled patched kernel... but it does work.

QEMU should be the best option since Android uses it.

- <http://raspberrypi.stackexchange.com/questions/165/emulation-on-a-linux-pc/53991#53991>
- <http://embedonix.com/articles/linux/emulating-raspberry-pi-on-linux/>
- <https://www.raspberrypi.org/forums/viewtopic.php?f=29&t=37386>
- <http://embedonix.com/articles/linux/emulating-raspberry-pi-on-linux/>

LED and GPIO state on QEMU:

- <http://raspberrypi.stackexchange.com/questions/56373/is-it-possible-to-get-the-state-of-the-leds-and-gpios-in-a-qemu-emulation-like-t>

## Operating system

Official image downloads: <https://www.raspberrypi.org/downloads/raspbian/>

The image does not contain the kernel it seems. Mount it with: <http://askubuntu.com/a/352686/52975>

TODO: there is a single image released for all RPIs?

### Raspbian

4GiB n 2016! There must be so much educational trash in that thing:

- <https://www.raspberrypi.org/forums/viewtopic.php?t=129483&p=865272>
- <https://ubuntuforums.org/showthread.php?t=2264330>

Jessie Lite: 1.2GiB. Tiny Core: less than 100M.

### Software

- <http://www.wolfram.com/raspberry-pi/> free Mathematica

### Ubuntu

- <https://wiki.ubuntu.com/ARM/RaspberryPi>
- <https://ubuntu-mate.org/raspberry-pi/>

### Android

<http://arstechnica.com/gadgets/2016/05/google-to-bring-official-android-support-to-the-raspberry-pi-3/>

<https://www.reddit.com/r/linux/comments/4pw2ia/raspand_601_marshmallow_for_raspberry_pi_3_and_pi/>

Boots, but nothing serious works properly?

- <https://www.youtube.com/watch?v=aSgQDhM84Ko>

## Clones

Hard to make, as Broadcom has a deal with RPI Foundation for the SoC, and the RPIF does not release directly manufacturable schematics:

<https://www.reddit.com/r/raspberry_pi/comments/3z86lb/why_are_there_no_raspberry_pi_clones/>

This is in contrast to the Arduino, which can be built off the shelf.

## Getting started

You need more than a Bare PI to get started, at least a power supply, but other things will make it much more fun to play with.

### Reuse your displays

The display is the most expensive part, so it would be great to find an alternative for it:

- <http://raspberrypi.stackexchange.com/questions/848/connect-pi-to-an-old-laptop-screen/849>
- <https://www.raspberrypi.org/blog/use-your-desktop-or-laptop-screen-and-keyboard-with-your-pi/>
- <http://raspberrypi.stackexchange.com/questions/14611/how-to-set-up-raspberry-pi-without-a-monitor>

## Alternatives

Be warned, Google trends shows how all alternatives are infinitely less popular than the RPI, so expect less support as well: <https://www.google.com/trends/explore?date=all&q=ODROID,banana%20pi,orange%20pi,raspberry%20pi>

- Orange Pi. <http://liliputing.com/2016/01/orange-pi-one-is-a-tiny-quad-core-pc-for-10-plus-4-shipping.html> By Allwinner, who also makes the SoC (Chinese) Mali GPUs. Buildroot 2016.05 support.
- ODROID. By Hardkernel Co (Korea). Looks like Broadcom stopped selling them SoCs? Now using Exynos (Samsung) and Amlogic (USA). Mali GPUs. Buildroot 2016.05 support.
- Banana Pi. Allwinner SoC. By <http://www.lemaker.org/> (China) <http://www.bananapi.org/> Mali GPU.

## Without SD Card

USB:

- http://raspberrypi.stackexchange.com/questions/43531/raspberry-3-boot-from-usb-but-how
- 2013 says not possible: https://www.stewright.me/2013/05/install-and-run-raspbian-from-a-usb-flash-drive/

At some point network boot might get enabled. TODO source.

## Flash SD card without removing it from RPI

<http://raspberrypi.stackexchange.com/questions/38107/how-to-install-raspbian-without-an-sd-card-reader>

## Battery

- <http://raspberrypi.stackexchange.com/questions/40181/what-can-i-use-to-power-my-raspberry-pi-zero-with-rechargeable-battery>

## JTAG

TODO

## Turn on after shutdown

On a raw PI, you have to shutdown the power cable somehow, and then restart.

<htt://raspberrypi.stackexchange.com/questions/5489/how-do-i-turn-on-my-raspberry-pi-after-shutdown/19659>

## SSH

Username: `pi`.

Password: `raspberry`.

### SSH without router

There is of course UART, but it is not simple to forward X over it?

- <http://stackoverflow.com/questions/16040128/hook-up-raspberry-pi-via-ethernet-to-laptop-without-router/39086537#39086537>
- <http://raspberrypi.stackexchange.com/questions/3867/ssh-to-rpi-without-a-network-connection/53823#53823>

### Find IP without display

- <https://www.raspberrypi.org/documentation/remote-access/ip-address.md>
- <http://raspberrypi.stackexchange.com/questions/38/prepare-for-ssh-without-a-screen?rq=1>
- <http://raspberrypi.stackexchange.com/questions/6714/how-to-get-the-raspberry-pis-ip-address-for-ssh?rq=1>

Best options: on laptop:

    sudo nmap -sV --open 192.168.0.0/24 -p22

Or go to your home router if you have access.

Use hostname instead: <http://raspberrypi.stackexchange.com/questions/7640/raspberry-pi-not-reachable-via-its-hostname-in-lan>

## UART

Watch out, many chips sell with the pins unsoldered, like this: https://ae01.alicdn.com/kf/HTB1rvhjLpXXXXalXpXXq6xXFXXX1/CJMCU-CP2102-MICRO-font-b-USB-b-font-to-UART-font-b-TTL-b-font-Module.jpg

This video shows how to solder everything: <https://www.youtube.com/watch?v=dfOfZ2TssVU>, including USB connector and other components.

## Shocked by RPI

Can't feel 5V: <http://raspberrypi.stackexchange.com/questions/167/is-it-possible-to-receive-an-electric-shock-by-touching-a-raspberry-pi-while-it> Not even 12V it seems unless you lick it.

## Power supply

Micro USB or GPIO. Don't use both. <http://raspberrypi.stackexchange.com/questions/7830/powering-the-raspberry-pi-from-usb-microusb-is-it-safe>

## SIM card

- <http://arstechnica.com/information-technology/2013/08/raspberry-pi-and-arduino-to-get-cellular-access-with-sim-card-add-on/>

## History

<https://en.wikipedia.org/wiki/Premier_Farnell> started making RPIs in the UK. Before it was done in China. Swiss Datwyler bid to buy. Avnet bid higher: <http://fortune.com/2016/08/18/daetwyler-bid-premier-farnell/>

## Power consumption

- <http://raspberrypi.stackexchange.com/questions/43285/raspberry-pi-3-vs-pi-2-power-consumption-and-heat-dissipation>

## OpenGL

- Maynard Raspberry Pi <https://www.youtube.com/watch?v=QQfMGlmfbjA>

## Cross compile a single executable

- <http://stackoverflow.com/questions/19162072/installing-raspberry-pi-cross-compiler>
- <http://stackoverflow.com/questions/10973020/cross-compilation-for-raspberry-pi-in-gcc-where-to-start>
- <http://raspberrypi.stackexchange.com/questions/1/how-do-i-build-a-gcc-4-7-toolchain-for-cross-compiling>
