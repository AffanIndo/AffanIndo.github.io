---
title: Fix Hyperdimension Neptunia Re;Birth1 No Sound/Video on Wine/PlayOnLinux
description:
header: Fix Hyperdimension Neptunia Re;Birth1 No Sound/Video on Wine/PlayOnLinux
---

![image](/img/neptunia.jpg "Neptunia")

When I install Hyperdimension Neptunia Re;Birth1 on my Ubuntu 18.04 laptop, the intro video doesn't show up and there is no sound at all. In this article, I will show you how I fix it. I hope this article will help all of you who have this issue.

First of all, I use POL and Wine 3.10. After trying several Wine versions, turned out 3.10 is the most compatible with windows .NET and stuff. I tried Wine 3.17 and it doesn't work at all. So, for the sake of simplicity, just use Wine 3.10. I also use Wine 3.10 to install osu! because it's the only Wine version that works with .NET 4.0 and .NET 4.5.

For those who don't know what POL is, it is PlayOnLinux. PlayOnLinux is a graphical frontend for Wine, basically it makes using Wine easier. Also, some people create script for POL to automate and make it easy to install your favorite game.

### How to Fix the Stuff

At this point I hope you already install the game using POL by creating its own directory. Because this is a tutorial to fix the error, not to install the game.

Then, install `winetricks`. `winetricks` is a small script that can install any missing components easily. We will use `winetricks` to install some game dependencies to make it run better. You can use POL to install any missing dependencies too, but with `winetricks` it is easier because you only need to type it once and wait until it done instead of searching and clicking one by one. On this tutorial, I use both because sometimes `winetricks` doesn't work. The [official repository](https://github.com/Winetricks/winetricks) did a good job documenting how to install it. You can also try [this tutorial](https://linuxconfig.org/configuring-wine-with-winetricks) to install `winetricks`, but I think that the GitHub one is better.`winetricks` doesn't come by itself in POL or Wine, but that's fine because it's just a small script.

Now, we want to run `winetricks` in Hyperdimension Neptunia Re;Birth1 directory. You can't just `cd` to there and run `winetricks`, you had to set the variable `WINEPREFIX` first. To do that, locate where the game directory is. Every game installed in POL are located in `~/.PlayOnLinux/wineprefix/`, since I create a POL directory named `neptunia_1`, I need to run `winetricks` `with ~/.PlayOnLinux/wineprefix/neptunia_1` as its WINEPREFIX.

Also, it is a good idea to check [WineHQ](https://www.winehq.org/) for the games you want to install. From [here](https://appdb.winehq.org/objectManager.php?sClass=version&iId=31648) I know what are the stuff that I need to install using `winetricks`. At first, I use POL to install it one by one, but several of them are missing there, so using `winetricks` is better. If you scroll down, you may see the command that we need: `winetricks xact_jun2010 devenum quartz wmp9 windowscodecs vcrun2012 vcrun2013` these are the components that we need to install. *However*, we need to run the command in our game directory, so run `WINEPREFIX=/home/affan/.PlayOnLinux/wineprefix/neptunia_1 winetricks xact_jun2010 devenum quartz wmp9 windowscodecs vcrun2012 vcrun2013` instead.

At this point, just let `winetricks` do its job. On my laptop however, the setup broke when it tried to install `vcrun2012` and `vcrun2013`. At this point, I use the installer in POL. I just install every single `vcrun` to make sure. After this, the game works! The sound is fine and the video sequence played! I think maybe the problem was, by default Wine doesn't have necessary program/codec to run video/audio in games, that's why it runs fine after we install Windows Media Player and its codec.

### Setting up the Controllers

Hyperdimension Neptunia Re;Birth1 port sucks. Since I don't have Xbox controller, I need to install *x36ce* (Xbox controller emulator). To be honest I failed to install it. Here's [the tutorial](https://boilingsteam.com/a-step-by-step-guide-to-make-controllers-work-in-wine/) if you want to try it by yourself. The emulator needs `dotnet45` and `corefonts`.

Well, since I can't set up the controller, I search a decent keybindings instead. I got some good ones from [here](https://steamcommunity.com/app/282900/discussions/0/618458030679110987/) and [here](https://steamcommunity.com/app/282900/discussions/0/612823460253657092/).

EDIT (2018-10-06): Somehow the controller works without x36ce. On Windows I had to use it because some of the button doesn't register in the game. However, it works perfectly on Linux, wow.

### References

* https://appdb.winehq.org/objectManager.php?sClass=version&iId=31648
* https://boilingsteam.com/a-step-by-step-guide-to-make-controllers-work-in-wine/
* https://github.com/Winetricks/winetricks
* https://linuxconfig.org/configuring-wine-with-winetricks
* https://steamcommunity.com/app/282900/discussions/0/612823460253657092/
* https://steamcommunity.com/app/282900/discussions/0/618458030679110987/
* https://wiki.winehq.org/Winetricks
* https://www.winehq.org/
* https://www.x360ce.com/
