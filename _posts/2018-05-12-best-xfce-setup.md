---
title: Best XFCE Setup
description:
header: Best XFCE Setup
---

*"Another setup? eugh"*

I know what you are thinking, but hear me out.

On the past, I got *into* XFCE because I love the "defaults". I love the white-ness of it, I love the looks of it, I love everything. Just look at this beauty

![image](https://spins.fedoraproject.org/static/images/screenshots/screenshot-xfce.jpg "Default XFCE Looks")

I've changed my XFCE looks several times and I never *satisfied* with anything. But recently my last setup gave me the "defaults" vibe and I **will** make this setup my "defaults" setup from now.

![image](/img/xfce-simple/simple-clean.png "Clean")
![image](/img/xfce-simple/simple-browser.png "Browser")
![image](/img/xfce-simple/simple-terminal.png "Terminal")
![image](/img/xfce-simple/simple-white.png "White")

You might think that this current setup is boring or whatnot, but I **strive** to get this "defaults" vibe in it. I want to make a rice that is *not that eye pleasing* but leaning towards the *usability* side. And this is the result that I got. Here's the usual setup:

* **OS:** Ubuntu 16.04
* **DE:** XFCE
* **GTK:** Flatabulous
* **Window Theme**: Vertex-Dark
* **Vim Color Scheme:** Hybrid
* **Terminal Color Scheme:** Hybrid
* **Terminal:** URxvt
* **Icons:** Ultra-Flat
* **Font:** Fira Mono

I am not saying that I will not make more *ricing* post but this is my *blank state* rice. I hope you find this post helpful, see you on the next post :)

**Update (2019-01-09):** And in this post I will list every "tweaks" that I add to my XFCE desktop.

* Add `compton` using [this tutorial.](http://duncanlock.net/blog/2013/06/07/how-to-switch-to-compton-for-beautiful-tear-free-compositing-in-xfce/), but I use `sudo add-apt-repository ppa:kelleyk/compton` instead of `sudo add-apt-repository ppa:richardgv/compton`.
* Change default menu to `Whisker Menu`
* Disable window roll up by `setting > settings manager > settings editor > search "xfwm4" > uncheck "mousewheel_rollup"`
* Disable title bar by `setting > settings manager > settings editor > search "xfwm4" > uncheck "titleless_maximize"`
* Disable `ctrl+q` by pointing that shortcut to program `/bin/false`
* Add scrot to `Print` key by pointing it to `scrot -e 'mv $f ~/Pictures'`
* Add scrot to `Shift+Print` key by pointing it to `scrot -e 'mv $f ~/Pictures' -u`
* Add urxvt to `ctrl+alt+t` key by pointing it to `urxvt`
* Add urxvt to `super+enter` key by pointing it to `urxvt`
* Add lock to `ctrl+alt+delete` key by pointing it to `xflock4`
* Add lock to `ctrl+alt+l` key by pointing it to `xflock4`
* Add lock to `super+l` key by pointing it to `xflock4`
* Add Whisker Menu to `super+d` by pointing it to `xfce4-popup-whiskermenu`
* Add Audacious Tool to one of my laptop extra button by pointing it to `audtool --playback-play`
* Add Audacious Tool to one of my laptop extra button by pointing it to `audtool --playlist-advance`
* `Maximize Windows` by `super+shift+up`
* `Toggle Fullscreen` by `super+f`
* `Move Window to Workspace 1` by `super+shift+!`
* `Move Window to Workspace 2` by `super+shift+@`
* `Move Window to Workspace 3` by `super+shift+#`
* `Move Window to Workspace 4` by `super+shift+$`
* `Tile Window to the Left` by `super+shift+left`
* `Tile Window to the Right` by `super+shift+right`
* `Show Desktop` by `super+h`
* `Left Workspace` by `ctrl+alt+left`
* `Right Workspace` by `ctrl+alt+right`
* `Next Workspace` by `super+n`
* `Previous Workspace` by `super+shift+n`
* `Workspace 1` by `super+1`
* `Workspace 2` by `super+2`
* `Workspace 3` by `super+3`
* `Workspace 4` by `super+4`
* Change `Key used to grab and move windows` from `Alt` to `Super` in `Window Manager Settings > Accessibility`

```
-pidgin
-sgt-puzzles
-thunderbird
+adapta-gtk-theme (ppa)
+apache2 mysql-server php7.1 libapache2-mod-php7.1 php7.1-common php7.1-mbstring php7.1-xmlrpc php7.1-gd php7.1-xml php7.1-mysql php7.1-cli php7.1-mcrypt php7.1-zip php7.1-curl(ppa)
+arc-theme (ppa)
+audacious
+audacity (ppa)
+blender (ppa)
+cheese
+chromium-browser
+codeblocks
+compton (ppa)
+curl
+exfat-fuse exfat-utils
+feh
+fp-compiler fp-ide
+git
+hexchat
+hplip-3.19.1 (manual)
+htop
+inkscape (ppa)
+intellij (manual)
+java-jdk-11 (manual)
+jupyter-notebook
+libreoffice-impress
+mediainfo
+mplayer
+mpv (ppa)
+obs-studio (ppa)
+papirus-icon-theme (ppa)
+persepolis (ppa)
+plank (ppa)
+playonlinux
+ranger
+redshift
+screenfetch
+steam
+stow
+synaptic
+tlp (ppa)
+tmux
+ubuntu-restricted-extras
+vim
+virtualbox
+vlc
+winetricks (manual)
+youtube-dl (pip3)
+zsh
```

Again, see you on the next post :)
