# The Zeta-bot

![alt tag](topview.jpg)

What is the Zeta-Bot?

The Zeta-Bot is an open-source robot platform that uses the:

 - Raspberry PI 5,
 - [Parallax's Continuous Rotation Servo Motors](https://www.parallax.com/product/parallax-continuous-rotation-servo/),
 - [C1 LIDAR](https://www.slamtec.com/en/c1),
 - [OV9281 global shutter camera](https://www.inno-maker.com/product/cam-mipi9281raw-v2/)
 - [a standard mobile phone 1700mAh power bank](https://uk.rs-online.com/web/p/power-banks/2498449).

It's based on years and years of experience making single PCB
Raspberry PI based robots. Every part has been chosen because of
extensive lab use proving its reliability over the years and because
of its solid hard- and software support.

## Hardware

The KiCad design files and BOM are in [hardware](hardware).

## Software

 - Motor control libraries: [wheeleddrive](wheeleddrive).
 - Camera driver: https://github.com/berndporr/libcamera2opencv with a demo to display the camera image.
 - LIDAR driver: https://github.com/berndporr/c1lidar

## Credits

 - (c) 2026, Bernd Porr, mail@berndporr.me.uk
 - (c) 2025, Saleh AlMulla
 - (c) 2025, Yixuan Zha
