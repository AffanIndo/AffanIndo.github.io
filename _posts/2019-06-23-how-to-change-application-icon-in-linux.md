---
title: How to Change Application Icon in Linux
description:
header: How to Change Application Icon in Linux
---
Do you hate it when your favorite icon pack didn't have some application that you use frequently? I hate it because my favorite app looks so bad compared the other application icons. I mean, just look at this:

![image](/img/change-icon/icon-bad.png "Eww...")

In this tutorial I will show how to change that bad icon to this:

![image](/img/change-icon/icon-good.png "Aww yeah!")

All icons stored in `/usr/share/applications/`. Open your GUI file manager then go to that folder to search which icon do you want. In this example, I want my *URxvt icon* to become *UXTerm icon*

This is the icon I want:

![image](/img/change-icon/icon-desired.png "UXTerm Icon")

This is the URxvt icon for now:

![image](/img/change-icon/icon-not-desired.png "URxvt Icon")

To change the icon, open the desired icon with your text editor and don't forget the root privileges. I use Vim so I type `sudo vim /usr/share/applications/debian-uxterm.desktop`. The file name can be different from the file name shown in the file manager. Find keyword `Icon` and see what is the name of the icon. Remember this name.

![image](/img/change-icon/icon-xterm.png "UXTerm Text")

Then open the ugly icon.

![image](/img/change-icon/text-urxvt-before.png "URxvt Text Before")

Find the keyword `Icon` and change it to the icon name that you remembered earlier. In my case, I replace `urxvt_48x48.xpm` to `xterm-color`.

![image](/img/change-icon/text-urxvt-after.png "URxvt Text After")

And done! Enjoy your new icon :)

![image](/img/change-icon/icon-good.png "Aww yeah!")

**Update 2019-06-23:** You could also copy the `.desktop` file to `~/.local/share/applications`. This way, you have your own modified `.desktop` files without doing `sudo` and messing up system files.
