---
title: Registering AppImage Files as a Desktop App
description:
header: Registering AppImage Files as a Desktop App
---


I know it's late, but... happy new year everyone! On this year I hope I can write more on this blog and procrastinate less :D On this first blog in 2018, I want to share you how to register AppImage software so you can launch it from your application menu.

![image](/img/krita.png "Krita")

Some developer prefer to release his app in AppImage, Krita released in several way including AppImage but I think the developer prefer AppImage (that's what he said). Usually I launch AppImage software from terminal. Just do `./path/to/app.appimage`, but this is tedious and not simple. Why I can open all apps from my desktop but I can't open AppImage? Luckily I stumbled upon a question on StackOverflow regarding this problem.

Basically you have to add the `.desktop` file in `/usr/share/applications`. I create `krita.desktop` and add this text (don't forget to use sudo):

```
[Desktop Entry]
Type=Application
Name=Krita
Comment=Krita
Icon=input-tablet
Exec=/home/affan/Documents/Scripts/krita-3.3.2-x86_64.appimage
Terminal=true
Categories=Graphics;
```

If you want to use this for app other than krita, you may edit several of the text above like the name, the comment, etc. For `Icon`, I open a random `.desktop` that I like and use the `Icon` from that file to my file. You can also use absolute path for the `Icon` if you have the image file.

If you want to use `DRI_PRIME=1`, you need to prepend it with `env` so instead of `Exec=DRI_PRIME=1 appname` it is `Exec=env DRI_PRIME=1 appname`

And that's it for today :) Pretty simple and easy. See you again in the next post!

**Update 2019-06-23:** You could also copy the `.desktop` file to `~/.local/share/applications`. This way, you have your own modified `.desktop` files without doing `sudo` and messing up system files.

