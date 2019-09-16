---
title: Install Razor1911's Skyrim on Linux
description:
header: Install Razor1911's Skyrim on Linux
---

I've been pulling my hair for past weeks because there is no documentation on installing Skyrim on Ubuntu, the only one works is using Steam on Wine. But finally I got it working, thank you myself.

I use the latest Wine (2.0.3 today) on PlayOnLinux, OS is Ubuntu 16.04, DE is XFCE.

The first mistake I made is mounting the ISO. Wine can't read from ISO yet even though it showed up on the list of drives. You have to extract the ISO. After this, create a new drive on POL, set latest Wine, and press `run a.exe on this drive`. Then just run the `install.exe`.

After this, the Razor installation is blank white. But the installer work, don't worry. Just press enter on your keyboard. At this point, we don't know if the installer run or not, so check the drive, the default installation is on program files in your Skyrim drive. If the installation run, the files on there keeps adding up until it is 6 GB.

After the installation successfull, Wine will pop an explorer to set where do you want to put the shortcut, just close this dialog. And the installatin is done. After this, just put the updates and you are good to go :)


