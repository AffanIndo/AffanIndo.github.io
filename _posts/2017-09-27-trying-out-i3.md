---
title: Trying out i3
description:
header: Trying out i3
---
Hello everyone, it was quite some time since I write a blog post. Lately I've tried i3wm, which some people shorten it to just i3.

i3 is a tiling window manager, it means it focused on splitting windows (like screen or tmux) rather than floating windows (dragging windows), but it supports floating windows as well.

![image](/img/i3-1.png "i3 Busy")
![image](/img/i3-2.png "i3 Clean")

As you can see from screenshot above, I set up my workspace to have a big window of Firefox on the left, a terminal running Ranger on the right, and another terminal at the bottom. I can move any window to my heart content. If I move the Ranger to the right then Firefox too, will move from the right to the left. Unlike using floating window manager where you have to drag it and resize each of the windows manually.

i3 is very lightweight compared to other DE (it is not a DE but only a WM actually, that's why). Another light WM you can use is OpenBox, but I prefer i3 right now because of the tiling system.

At first glance, i3 is very simple indeed. The desktop itself is just a blank screen with a bar. When you press `super+enter` it will start a terminal full screen, if you press it again it will open it again side by sides. This is the very basic of i3. I like this terminal shortcut because many people use i3 because they like the simplicity, and they use terminal a lot. So by this easy shortcut it would be faster to open it.

What I don't like is the split resizing, it is horrible. When you are in resizing mode, you can use arrow key to resize it, but it is not intuitive. Both up can be only either shrink or grow, when the window on the bottom, pressing up will invoke the grow, so the window will resize upwards. But when the window on the bottom, pressing up will not push the window to the top (shrink it), but it will resize downwards. It is very weird.

But that's all my complaint about i3. On the other aspect, i3 is awesome! I suggest you to try it :) That's all, bye!
