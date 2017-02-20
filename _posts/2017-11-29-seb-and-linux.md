---
title: Safe Exam Browser and Linux
description:
header: Safe Exam Browser and Linux
---

![image](https://pbs.twimg.com/profile_images/748903670830555136/JNf7_YFF.jpg "SEB")

Nowadays schools use computer based exam. The one used by my school is Safe Exam Browser (SEB). There is a slight problem with it, actually. It only support Windows and OSX.

As a Linux user, of course this is a big news for me, how am I supposed to do the exam when the exam software itself doesn't exists for my OS. I've been playing at *IT guys* room to somehow make the exam software installed on my Laptop. But it's futile, they ended up to tell me to borrow my friend's laptop or install Windows.

I don't want to risk my data by installing Windows, so I try my other laptop that has Windows XP. But SEB can't run in Windows XP because it needs some Directx or Dotnet something. So my only option is to use a newer version of Windows but at the same time didn't fucked up my Laptop.

For this task, I choose VirtualBox. My Windows installment run smoothly but SEB can't be used in it because it detects that I am in Virtual environment. But turned out SEB has a configuration application, so I fired that up, goes to Security tab then check **Allow SEB to run in virtual environment**. Then go to the general tab then hit **Apply the config and start** and it works!

Finally 3 years fighting with SEB solved with this configuration. Previously I use School's computer to take the exam, but now I can just use my own Laptop to do it.

I hope by changing SEB config and use SEB in virtual environment didn't messed up my score.

And that's my story, I hope you guys didn't have any trouble with your school. Until next time!
