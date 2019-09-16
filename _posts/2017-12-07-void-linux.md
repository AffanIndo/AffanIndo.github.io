---
title: First Look at Void Linux
description:
header: First Look at Void Linux
---

A lot of folks out there hate `systemd`. When Arch Linux use it, there is breakout and all people raging. Luckily, if you are one of those folks and you like the DIY feeling of Arch, there is Void Linux.

![image](https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Void_Linux_logo.svg/1200px-Void_Linux_logo.svg.png "Void")
*source: wikimedia.org*

Void Linux is an independent Linux distribution that run on `runit` instead of `systemd` like many other distributions do. Void Linux use `xbps` as its package manager. Just like Arch, it has a very minimal installation, just bare bones without even Vim installed. This way, you can built it the way you want, just like Arch.

One of the difference I've seen, that it has a little difference in the packages. When I want to install `xorg`, Void also has `xorg-minimal` as an option, so you can specify if you want all the packages or just the minimal. If you choose the latter, you could install the driver later. It has a significant size, though. Normal `xorg` is 80 MB meanwhile `xorg-minimal` just 25 MB. But since I install it in VirtualBox and I don't know which driver I should use, I choose the regular `xorg`. Another difference I've seen is, `xorg` already include `xorg-xinit` so you don't have to specify both of them when you want to install X server. From what we've seen, it has many differences between the package so I think you might be better use Void Wiki instead of Arch's.

## Downloading

Even I was confused at the download link.

On the [installation page](https://wiki.voidlinux.eu/Installation) at the wiki, it has a link to the download page, but the download page looks like this:

![image](img/void/download.png "Download Page" )

I was surprised when I saw that. I mean, which one to pick? Guides on the internet didn't say a thing about this. So I figured it out myself. There a re a lot of files there, like `void-armv6l-blablabla`, `void-beaglebone-blablabla`, etc.

But the files you want to download is the Live ISO. So just look at the `void-live-blablalba`. Now we already narrowed the files. There are like, 10 or 20 files on Live ISO, but we can narrow it further by looking at the bit. `i686` is 32 bit and `x86_64` is 64 bit. From now on, our files is clear, we just need to pick the desktop environment. If you are planning to use DE like Cinnamon, XFCE, etc. Then pick the Live ISO of them. But since I migrate from Arch, I pick `void-live-x86_64-20171007.iso`. It is 300 MB without DE installed. The one with DE is 600 MB.

## Installation

Uh uh... Not gonna type it out for you. But the first thing I'd say is, there is a login screen before you open the live session, look at the screen carefully and you may see the username and password for the live session.

I use 3 websites to guide me for the Installation. The official one is [here](https://wiki.voidlinux.eu/Installation), but it is not informative enough. There is no screenshots too :/ But I found a better tutorial for the installation, [here it is](http://www.troubleshooters.com/linux/void/quickinst.htm). I was skeptical because the sites looks aged. But damn, that was the most informative tutorial I've ever seen. They even listed some unexpected behavior, like cursor misbehaving, misplaced highlight, etc. You should use that instead of the official. I hope the one charged with Wiki could work it out a little bit :)

And [this](https://wiki.voidlinux.eu/Post_Installation) the post-installation guide. It is really informative, it shows you how to use the `xbps` package manager, installing `xorg`, enabling `lightdm` service (it is a lot different from `systemd`, you know. I was grateful that they show how to enable it on `runit`).

## Post-Installation

And here we are, there are no flashy apps nor lot of tools. It is basically just a Linux that you can build. From now on, just built it the way you wanted. I just installed Vim, Xorg, i3, and several necessary tools. I want to try i3 again because I keep looking at unixpron haha!

And that's it folks. I hope you want to try it, 'cause it was a hell of experience. See you at the next post.





