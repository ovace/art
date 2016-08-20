# Raspberry Pi

2015: Windows 10 will run on RPI for free: <http://www.techrepublic.com/article/windows-10-on-the-raspberry-pi-what-you-need-to-know/>

## Hardware

Broadcom closed source SoC with ARM CPU IP.

PCB schematics open: <https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/README.md> It is interesting how simple they are. The SoC ICs hide so much complexity away.

SoCs called BCM2835, BCM2836, BCM2837 for pi 1, 2, and 3 respectively.

### GPU

GPU IP on core from Broadcom called VideoCore, which they bought with <https://en.wikipedia.org/wiki/Alphamosaic> in 2004, a Cambridge Company.

In 2014, Broadcom gave the source for the GPU driver, a rare move for similar software:

- <https://www.raspberrypi.org/blog/a-birthday-present-from-broadcom/>
- <https://www.raspberrypi.org/blog/open-source-arm-userspace/>

#### Mesa

TODO for some reason only implemented in 2016? Why if driver was available earlier?

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

### Wi-fi

Some models don't on-board, you need an USB dongle. Starting from 6 pounds, and recently there is an official version.

### Browser

GNOME Epiphany is recommended? TODO why? Vs. Firefox, Chromium?

### Games

<http://minecraft.gamepedia.com/Pi_Edition>

## Emulation

Painful to get working on QEMU, haven't managed so far.

QEMU should be the best option since Android uses it.

One reason is that the kernel is not included into the provided image, so you need to cross compile it.

- <http://raspberrypi.stackexchange.com/questions/165/emulation-on-a-linux-pc>
- <http://embedonix.com/articles/linux/emulating-raspberry-pi-on-linux/>
- <https://www.raspberrypi.org/forums/viewtopic.php?f=29&t=37386>
- <http://embedonix.com/articles/linux/emulating-raspberry-pi-on-linux/>

## Operating system

Official image downloads: <https://www.raspberrypi.org/downloads/raspbian/>

The image does not contain the kernel it seems. Mount it with: <http://askubuntu.com/a/352686/52975>

TODO: there is a single image released for all RPIs?

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

## Shocked by RPI

Can't feel 5V: <http://raspberrypi.stackexchange.com/questions/167/is-it-possible-to-receive-an-electric-shock-by-touching-a-raspberry-pi-while-it> Not even 12V it seems unless you lick it.

## Power supply

Micro USB or GPIO. Don't use both. <http://raspberrypi.stackexchange.com/questions/7830/powering-the-raspberry-pi-from-usb-microusb-is-it-safe>

## Use without Micro SD

At some point network boot might get enabled.

## SIM card

- <http://arstechnica.com/information-technology/2013/08/raspberry-pi-and-arduino-to-get-cellular-access-with-sim-card-add-on/>

## History

<https://en.wikipedia.org/wiki/Premier_Farnell> started making RPIs in the UK. Before it was done in China. Swiss Datwyler bid to buy. Avnet bid higher: <http://fortune.com/2016/08/18/daetwyler-bid-premier-farnell/>
