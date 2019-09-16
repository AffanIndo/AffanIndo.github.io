---
title: Setting up Windows Terminal Emulator Color
description: 
header: Setting up Windows Terminal Emulator Color
---

We all know Windows's CMD is terrible (I don't talk about PowerShell in here). I prefer working in Linux's terminal. It include POSIX and so many goodies. That's why I use **Git Bash** + **MinGW** to makes my PC better. Git Bash include many apps from linux AND it include MinTTY Terminal. MinGW is there to complete the missing apps, for example is GCC and several other compilers.

I've been using Git Bash for my terminal for a pretty long time and it looks horrendous. I mean, black background with very bright yellow, green and purple surely makes your eyes hurt. I've changed the background to mimic the blue background in Solarized. Sure, it makes it slightly better, but after a while I got tired (literally) from it. That's why I searching how to meddling with the terminal color. This is the end results:

![image](/img/setting-up-windows-terminal-emulator-color/term.jpg "Terminal Color")
![image](/img/setting-up-windows-terminal-emulator-color/vim.jpg "Vim Color")

Ahh.. That's better. Just for notes, on both of them I use Tomorrow-Night colorscheme. It is good for your eyes because it uses low contrast color.

Okay, so here is how to set it up:

First of all, enable the 256 color support on your terminal:

![image](/img/setting-up-windows-terminal-emulator-color/set.jpg "The Setting")

This setting makes your terminal support 256 colors. Basically, default terminal only support 8 or 16 colors. But nowadays colorscheme is made up from 256 colors so the maker have plenty of options to choose several shades of color. This is why it is better, because with the default 16 color, there is only bright color so the colorscheme can only put bright colors there. Hence why the default color scheme makes your eyes hurt.

After I set the 256 colors. Then, type `cd ~`, edit the `.minttyrc` with settings you want from [here.](https://github.com/oumu/mintty-color-schemes) It is best to append them on the end of the line instead of replacing them, because some of your settings already put there. Just delete the same command first, because maybe you changed the background-color on the past.

For the Vim, I use Tomorrow-Night. Grab it [here.](https://github.com/chriskempson/vim-tomorrow-theme.) Just move `*.vim` files in the `colors` folder to your `~/.vim/colors`. After that, put `set colorscheme=Tomorrow-Night` or whatever color scheme you fancy. By default, vim can auto detect your terminal, so you don't need to set the terminal to 256 colors again.

Allright, so here is a quick recap:  
* Set the Git Bash terminal to 256 color
* Edit the `.minttyrc`
* Download Vim color scheme
* Edit the `.vimrc`

And... finished! I hope you enjoy reading this blog post. Until next time!
