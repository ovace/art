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
