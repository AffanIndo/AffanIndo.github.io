---
title: Basic Tmux Tutorial
description:
header: Basic Tmux Tutorial
---

Tmux is a terminal multiplexer. What is a terminal multiplexer, you ask? A terminal multiplexer is a software application that can be used to multiplex several separate pseudoterminal-based login sessions inside a single terminal display. I don't know what that means but it sounds awesome.

If you decided to learn how to use Tmux using this tutorial. I advise you to follow along with me. There are plenty of commands and I think it is easier to remember if you practice them rather than skimming through my tutorial.

If you just want to know the key. Just visit my [Linux cheatsheet :)](https://gist.github.com/AffanIndo/a95921b7139f2965401d637ca4acba2a)

## Why Tmux?

Maybe you might think "My work is fine even though I don't use it, why should I care?" Here are the reasons why you should care.

**Detaching**

50% of people use Tmux for this solely reason. Let's say you are connecting through SSH to some machine, and you do some work in it. And then you lost connection and when you SSH'd back, you find that your work is gone because when you log out, the shell is terminated.

This is not the case if you use Tmux. You can "detach" the shell, log out, get some sleep or take a walk, log in again, and your stuff is still there! running without intervention.

**Sharing Sessions**

Again SSH. 2 computer can connected together and using Tmux you can see in real time what your partner is doing, vice versa. This makes pair programming great because you can see what each other doing.

A lot of you probably doesn't do SSH and don't care. And frankly, so do I. Even though a lot of people use it for these first 2 reason, people can still benefit using Tmux even if they don't use SSH, like me!

**Manage Many Stuff at Once**

![image](/img/tmux-tutorial/split.png "Split")

The other strength of Tmux is, you can make splits and running many stuff from one terminal emulator window. Do you ever have to open new terminal window when you are working in terminal just because you don't want the new task to get in the way of your main task? Not anymore! You can just create a split or a new tab and get the work done.

In Tmux there are myriad ways to organize your works. There are 3 main *things* (I'm not sure what to call them). **Sessions**, **Windows**, and **Panes**. Which I will explain later.

## Installing Tmux

> "$ " indicate that I wrote the command on my terminal. If I wrote "$ tmux", just write "tmux" on your terminal.

Most of the time, There is Tmux already in the repository. I use Ubuntu so I do

`$ sudo apt install tmux`

## Prefix

Prefix is a way to "tell" the shell that your next command is issued to Tmux. This way, you use prefix+command if you want to issue a command. For example, `create new window` is `c` but if you press `c` right away, the shell will type `c` into the terminal. So you need to add prefix before pressing `c`

> The prefix key for Tmux is **ctrl+b**.

I hope you keep that in mind, the next time I say `prefix+c` just think `ctrl+b` and then press `c`. This prefix is configurable. Some people change it to `ctrl+a` because that's what command `screen` (predecessor of Tmux) does. If you do want to change it, search an unoccupied key. Don't use something like `ctrl+d` because you'll need it a lot.

## Windows

Windows is basically the whole screen that you can split. You can see them as tabs. On this image, you can see that I have 3 windows.

![image](/img/tmux-tutorial/tabs.png "Tabs")

In 1 window you can have multiple **panes**. For example, in one window you open Ranger and Screenfetch. This means you have 1 window and 2 panes because each program is assigned to 1 panes.

When you open Tmux it automatically create a window for you. If you want to **c**reate a new window, you can do so by `prefix+c`

By default, Tmux will name the window according to the opened program. If I open Vim, the window will says `vim`. And so on. You can rename it by `prefix+,`

You can switch the window by doing `prefix+n` for **n**ext and `prefix+shift+n` for... reverse of next. You can also press the corresponding number. So to switch to window number 1 press `prefix+1`, and so on.

You can list all window that you have by `prefix+w`. Tmux even give you nice handy little preview at the bottom. Though, I never really use it.

![image](/img/tmux-tutorial/list.png "List")

To close the window, you can press `prefix+&`. This will close the window regardless how many panes you have inside. To know how to close a single pane, check out the next segment of this article.

## Panes

Next. Now you already have window, you can split them horizontally or vertically. Warning, though. People has different perception on what is called *split horizontally* and *split vertically*. When you open 2 program side by side some people called it vertical because the slit is vertical, but some called it horizontal because the program is side by side (horizontal). This is I avoid terms *vertically* or *horizontally* when talking about Linux program.

To split the window so you have 2 panes side by side, use `prefix+%`. Seems awkward at first, but just imagine, percent sign is 2 circle that is divided by 2.

To split the window so you have 2 panes top-bottom, use `prefix+"`

Personally I think both of these keys is awkward so I changed it to `prefix+|` and `prefix+_`. Even from the key alone you know what it does before I explain it. You can change it in your Tmux configuration but we'll come back to that later.

To close a single pane, you can use `prefix+x`. I use this pretty often because, if you only have 1 pane and you use this key, Tmux will close the window as well.

## Sessions

I think I should've put this at the beginning since it is the *biggest* one. But I rarely use it because this is useful for `ssh` thingy and I don't use it. If you like me, using Tmux for anything but SSHing, you can ignore this segment.

Sessions is the most amazing feature of Tmux. I use Tmux for the splits alone but a lot of people use Tmux for this very reason. Sessions will keep running in the server even though you already log out from it. So you can keep some program running and you don't have to worry about it. If your connection is shitty and your ssh connection bad, normally your program will terminate because you disconnected. But if you use Tmux, it will *detach* instead, enabling you to connect it later meanwhile the program still safely running inside Tmux.

You can create new **s**essions by `tmux new -s SESSIONNAME`

If you want to test it. Try detaching from tmux by `prefix+d` then check `tmux list-sessions`

You can attach that session using `tmux attach -t SESSIONNAME`. And when you attach that session, those processes running from previously is still running flawlessly :)

## Reference

[Basic tmux Tutorial - Windows, Panes, and Sessions over SSH](https://www.youtube.com/watch?v=BHhA_ZKjyxo)

[Terminal Multiplexer](https://en.wikipedia.org/wiki/Terminal_multiplexer)

[What is tmux and why would you want it for frontend development?](https://medium.com/@tholex/what-is-tmux-and-why-would-you-want-it-for-frontend-development-e43e8f370ef2)
