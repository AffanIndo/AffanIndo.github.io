---
title: Why Linux has Better Security than Windows
description:
header: Why Linux has Better Security than Windows
---

Linux has **better** security than Windows. When I mention that I use Linux to my friends, oftentimes they asked me what antivirus did I use. They were confused when I said that I don't use any.

In this article, I will summarize the reasons why Linux has better security, so you don't need to install antivirus like usual in Windows.

### Misconception

First, I will explain about some misconception first. When I was searching for this topic on the internet, 50% of the article explains that Linux has better security, and the other 50% explains that Linux is **not** immune to virus completely. At first glance, these 2 articles seem contradictory, but they are not. Let's take a closer look. The former article is **comparison**, it just explains that Linux is better regarding security. The latter is about existence of security breach, this statement is also true. As they said, "No system is save". *If* Linux has 10 viruses and Windows has 100 viruses, then both of this statement is true and not contradictory at all. Fewer viruses means it is better, and the existence of the viruses means it is not immune completely. So, I hope this section clears that up.

### Execute Permission

By default Linux doesn't allow you to execute a program meanwhile you just need to double click it in Windows. This is one of the reason why Linux is more secure. Virus on Windows can execute binaries and hidden programs easily meanwhile they are not allowed to do so in Linux. User has to tell the OS manually that they add permission to execute a file.

This concept is one of the thing that I have hard time understanding when I use Linux at the first time. There is 3 kind of permissions, read, write, and execute. Especially for program, after you download a binary you have to add `x` permission to it (it stands for e**x**ecute). 

### You Can't Really Run Windows Program in Linux

Unless you use `wine`, you can't run Windows binary file in Linux. This is one of the big reason why Linux is more secure. Virus needs to be built specifically for Linux in order for it to run. But there is only a handful people that use Linux which brings us to the next point:

### Small Userbase

There are not many people who ran Linux on desktop. Majority of Linux systems were in hardware, supercomputers, and phone. Most people ran Windows in their machine because they get used to it and a lot of the program for their work is only available on Linux.

With that being said, why should bad people writes a whole program just for a handful of users? Virus maker wanted to target as much system as its can so there is this whole virus creating industry on Windows meanwhile there aren't any on Linux.

### Competent Users

Let's face the truth. Most people that use Linux is either a programmer, or computer enthusiast. These kind of people have a hard time infected by Virus even on Windows because they know what they should do and what should they don't do.

A lot of virus infection is not because bad antivirus, it is because of the users were clicking random e-mail attachment, downloading pirated software, visiting malicious websites, etc. If the user aware of this and doesn't do anything weird, I'm sure they would be safe even if they use Windows.

### Never Login as Root

To be run effectively, virus needs to be executed in the system directory. On windows this is just one click away, but on Linux people were discouraged from login as root because it is a dangerous thing. If they aren't careful enough, they could destroy their own system. Most user only uses temporary root access just for specific program like `apt`. This is another reason why Linux is more secure. The virus doesn't executed with administrator privileges.

### Operating System Architecture

UNIX based OS and its derivatives were about multi-user and security from the beginning. So it is fundamentally secure. Virus need to be executed as root sometimes because it needs to infect the system but Linux doesn't allows that. Meanwhile, DOS and its derivatives (Windows) fundamentally don't use this user-based system. Multi-user stuff and security came alter so it is fundamentally not secure.

To be honest, I am not that expert in software architecture so I don't know what I'm talking about just now. I wrote what I read from the references and a lot of them talking about this.

### Summary

Linux is more secure, but it doesn't mean it is completely immune. Small userbase and the OS architecture makes it harder to infect, and the fact that the user knows their system inside-out helps too.

Virus infection mainly caused by user error. So if you are careful and knows this topic really well, there is a high chances that you wouldn't get infected.

That's it for today. I hope your PC stays secure. See you later.

### References

[Is Linux Operating System Virus Free?](https://www.tecmint.com/linux-operating-system-is-virus-free/)

[Myth Busting: Is Linux Immune to Viruses?](https://www.linux.com/learn/myth-busting-linux-immune-viruses)

[Why Linux Is More Secure Than Windows](https://www.pcworld.com/article/202452/why_linux_is_more_secure_than_windows.html)

[Why Linux is better than Windows or macOS for security](https://www.computerworld.com/article/3252823/linux/why-linux-is-better-than-windows-or-macos-for-security.html)

[Why Linux is more secure than other operating systems ](https://mintguide.org/other/476-why-linux-is-more-secure-than-other-operating-systems.html)

[Why are there no viruses on the Linux OS?](https://www.quora.com/Why-are-there-no-viruses-on-the-Linux-OS)

[Why do they call Linux (or based OS) Virus free? Is it really true that no one can write any virus program for Linux?](https://www.quora.com/Why-do-they-call-Linux-or-based-OS-Virus-free-Is-it-really-true-that-no-one-can-write-any-virus-program-for-Linux)
