---
title: Trying Arch Openbox
description:
header: Trying Arch Openbox
---

For this week's sunday afternoon, rather than doing nothing, I try to built an Openbox Arch Linux.

As you may know, I've tried Arch Linux several times, but I still amazed because I learn many things from each installing attempts. Today I will share my experience today and listing all of the weird stuff happened and how I fixed it. This is not a tutorial, just my musings haha.

## Now... what?

Openbox is very minimalistic, when you start an Openbox session, you just sit there waiting for it to load meanwhile actually Openbox already loaded. Yes, Openbox loads almost instantly and there is no indicator it has been loaded. It just shows gray background as it's default wallpaper. The first time I start it, I just stood there, dumbfounded and just... "Wat?". Turned out this is just how Openbox is. Minimalistic. If you want to open menu, you have to right click on the desktop. That's where I learned my lesson.

I forgot to install a terminal emulator so I can't really do anything at that time, initially I want to install some packages but realized I can't type it anywhere. And then I try to logout so I will use my X-less desktop to download stuff, but I can't write command `logout` anywhere since I don't have terminal emulator installed. Eventually I open a new TTY then login as root (since I set auto startx on my normal user) to download a terminal emulator (it is `rxvt-unicode`).

Yay! happy ending. I thought I was a sort of genius prodigy. But wait, there is a logout button in Openbox menu. I face palmed myself.

## Startx error and stuff

I encountered a problem which I can't find the answer in Google. It is `Xorg.wrap: Only console users are allowed to run the X server`. There is many answers out there but none helped me. Except one. It only says I have a problem with the way I started my X server. But the thing that I confused is, this problem only happened when I run `tmux`.

I started it from my `.zlogin`. This is the root of this problem. When I removed the `exec startx` from this, the problem gone. But I can't auto `startx` this way.

Sure this is confusing, but I realized there is a program that manage this auto `startx` and login thingy. **lightdm**. I installed lightdm and then it runs fine!

## What time is it?
I don't know if this problem happened because of my faulty time configuration in Arch or because of Arch run on VirtualBox.

You see, I didn't turn off my machine, I just *save state* it. Maybe when Arch loaded it was confused because of the sudden change in time or something.

I don't want to confuse myself with clock and time settings or some sort of like that so I just installed an app to fetch the internet time then run it.

The program is `ntp`. Install it by `pacman -Syu ntp`. To run it, execute command `ntpd -qg`. This will fetch the time then set your time according to that.

This is a nice application. By the way, I created a similar program for my Windows computer too :) Some good guy on internet create a website that just return time, so I scrape that time then add 7 because I use GMT+7.

## Removing Firefox
I installed Firefox out of habit. But I think, since I try something new, it might be a good idea to try out a new browser too! I want to try Qutebrowser because it is made with Vim in mind. A good match for a vim guy like me. But there is a slight problem, how do I remove Firefox completely? As far as I know, browser has a lot of hidden files, things like cookie, password, and other files so I think it might be a pain in the a$$ to remove them completely.

Turned out Firefox put this file in differents folder, not in built storage or some advanced stuff like that. So to delete them, just go to the folder and delete the folder. First of all delete Firefox by:

`pacman -Rsn firefox`

 After that, this is the folder lists I deleted

```
~/.mozilla
~/.macromedia
~/.flash
/etc/firefox
/usr/lib/firefox
/usr/lib/firefox-addons
And there is another one in ~/.cache/ but I forgot the name.
```

## Package Corrupted?

When installing Qutebrowser, there is an error happened. All dependencies installed without any problems but the browser itself throw an error.

```
:: File /var/cache/pacman/pkg/qutebrowser-1.0.2-1-any.pkg.tar.xz is corrupted (invalid or corrupted package (PGP signature)).
Do you want to delete it? [Y/n]
```

I followed the guide to fix this from [here.](https://www.reddit.com/r/archlinux/comments/781m2u/qutebrowser1021anypkgtarxz_is_corrupted_invalid/)

But The download mirror isn't a file so I don't know how to download it to my machine. So I searched another site that offer the site directly and I found [this.](https://archlinux.pkgs.org/rolling/archlinux-core-x86_64/archlinux-keyring-20171020-1-any.pkg.tar.xz.html) After it I just `wget` it then installed it using `pacman -U <file>`

## End
So that's the end of this article :)

I encourage you to give Arch Linux a try. It is a good way to expand your linux knowledge.
