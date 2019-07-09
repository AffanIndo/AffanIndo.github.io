---
title: Setting Up AMD For Hybrid Laptop on Ubuntu 16.04
description:
header: Setting Up AMD For Hybrid Laptop on Ubuntu 16.04
---

**I did not know shit about hybrid graphic card.**

They are so confusing and they are pain in the ass to trouble shoot. After month, finally I am able to make it works. Previously I even do gaming on Intel HD, this put so much burden on my laptop so I am grateful to a member in computer group that helps me. Kudos for you, sir.

First of all, classic warning for AMD user on Ubuntu: **AMD STOPPED THE SUPPORT OF PROPRIETARY DRIVER ON UBUNTU 16.04 SO YOU DON'T HAVE TO USE FGLRX ANYMORE. AMD DRIVER CALLED RADEON ALREADY INCLUDED BY DEFAULT.**

Driver is one thing, but activating it is another. Use this script to show installed GPU:  
`lspci -vnnn | perl -lne 'print if /^\d+\:.+(\[\S+\:\S+\])/' | grep VGA`

This is what it shows on my laptop:  
```
00:02.0 VGA compatible controller [0300]: Intel Corporation 2nd Generation Core Processor Family Integrated Graphics Controller [8086:0126] (rev 09) (prog-if 00 [VGA controller])
01:00.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc. [AMD/ATI] Thames [Radeon HD 7500M/7600M Series] [1002:6840] (rev ff) (prog-if ff)
```

If you did not have hybrid GPU, then the command will only show you one graphic card, but since I use 2, it shows two of them. The one that has **VGA controller** is the active GPU. In this context, my Intel HD is activated but my AMD isn't. Here is how to activate it:

1. With root permission (sudo), edit `/etc/default/grub`. You can use `sudo nano /etc/default/grub`, but I use Vim.
2. Search `quiet splash` and append `radeon.dpm=1 radeon.modeset=1` to it so it looks like this:  
`GRUB_CMDLINE_LINUX_DEFAULT="quiet splash radeon.dpm=1 radeon.modeset=1"`

3. Update grub by `sudo update-grub`
4. Restart
5. Now everytime you want to run a program with your AMD GPU, you have to prepend the command with `DRI_PRIME=1`. So `DRI_PRIME=1 "steam"`, `DRI_PRIME=1 "playonlinux"`, etc. You may or may not need the quotation mark, though.

---

You don't really have to run Steam from terminal every single time, though. There is a way to make specific application always run with `DRI_PRIME=1` every time. You can change the desktop file (a kind of launcher) of Steam (or whatever you want) either by:

1. This is the one I used.  
* Find the `.desktop` file (in `/usr/share/applications/`, or `$HOME/.local/share/applications`, or `/usr/local/share/applications/`, or /path/to/where/ever/you/installed/the/software)  
* Then, open it with your text editor.  
* Change `Exec=/usr/games/steam %U` to `Exec=env DRI_PRIME=1 /usr/games/steam %U`  
* (I'm not sure what is that `%U` doing but it's the default one so I'm afraid to remove it).  
* Basically we just need to add `DRI_PRIME=1` to the `Exec=`, but we need to add `env` first.  
* The 2nd and 3rd method is added by a Reddit user [u/war_is_terrible_mkay](https://www.reddit.com/user/war_is_terrible_mkay), I haven't tested it, though.

2. Editing the list of applications in your desktop environment via GUI if youre lucky (e.g. KDE Plasma or XFCE have it) and on the "command" or "exec" line add your `DRI_PRIME=1` before the command. You might need to click a save in this utility as well.

3. Another option is to add a shortcut key to your application (e.g. Steam) in the Desktop Environment (probably in System Settings and then Keyboard or Shortcuts or something). E.g. you can map Meta+Alt+4 to execute `env DRI_PRIME=1 /usr/games/steam %U`

---

**ADDITIONAL INFO**: At first I am afraid that only the main app use the AMD, for example if I open Steam then Dota, only Steam use AMD but Dota didn't. But after some experimenting, both of them use AMD because I launch Dota from Steam. I also try running PlayOnLinux then launch Skyrim from it, the Skyrim also use AMD, so don't worry about it.

**Update 2019-06-23:** You could also copy the `.desktop` file to `~/.local/share/applications`. This way, you have your own modified `.desktop` files without doing `sudo` and messing up system files.

Here is my results:  
[Video](https://www.youtube.com/watch?v=7qlgKn4TqQw)  
![image](/img/skyrim.jpeg "Ultra")

