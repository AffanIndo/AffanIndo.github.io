---
title: Things I Did After Install Ubuntu
description: 
header: Things I Did After Install Ubuntu
---

Today I installed Ubuntu on my laptop. I used windows 8 for a while but I got so many problems with it. Sure, it is all good with games, graphic and stuff, but I found so many problems on the programming side. That is why I wipe it out and install Ubuntu.

On the past I've used Ubuntu but not quite fond of it, so I went for Linux Mint for fun. As for the reason why I installed Ubuntu today, originally I went for Linux Mint instead of Ubuntu because I love it. But the installment gone wrong so many times, from black screen to `Operating System not found`. I did some meddling around to get it work, and I tried installing Ubuntu and it works! This is not some *Ubuntu POWERRZZ* or something. Rather, it is just some EFI partition problem.

At first, I don't quite understand how EFI works, so I was playing around with partition manager doing EFI partition, /boot partition thingy and other things. Turned out what I did was right. The problem was, old laptop that support EFI have some problem reading EFI parition with <512 MB size. So I change the size to 550 MB and it works!

The setup I used:  
* SDA1 = EFI Partition (550 MB)
* SDA2 = / (100 GB)
* SDA3 = /home (180 GB)
* SDA4 = swap (4 GB)
* SDA5 = ntfs (300 GB)
The SDA5 is my D:\ drive on windows, I had so much file so I won't format that.

After saying that. Let's get to the main course. I will write what stuff I've installed so far, this also became a note for myself in case I set up an Ubuntu PC again in the future. This is how my desktop looks like after setting the look and feel of it:

![image](/img/ubuntu1.png "Ubuntu Desktop")
![image](/img/ubuntu2.png "Ubuntu Desktop")

I wrote this guide based on the order I did it but I make sure to make them grouped together, so there will be no jumping from programmer's tool to multimedia and then jump again to programmer's tool. I will try to categorize them based on both usage and time. This guide is based on *X things to do on fresh install Ubuntu* or *Must have Ubuntu software*. So this article is my conclusion after watching all of those articles or videos.

# First Thing First

## Disable Guest Account
Your PC is your personal belongings, I will not allow some random person to open my stuff by just using Guest Account, so I disabled it first. This is the command to do that:  
`sudo sh -c "echo 'allow-guest=false' >> /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf"`  
This command basically just put a line of `allow-guest=false` into `/usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf"`

## Remove Thunderbird
Who use it? seriously. I don't use it so I make sure to remove it, there may be many apps that I don't use but Thunderbird has pretty big size, so it would be pain in the a$$ to update it constantly while not using that. Fire this command up:  
`sudo apt-get purge --auto-remove thunderbird`  
`purge` is an option to delete the app AND remove your user configuration, so you.. well.. purge it.


## Update And Upgrade
*Update* is to update the database so Ubuntu know if there is an update available. *Upgrade* is to upgrade all of apps when there is an update available. Linux is very convenient, you can upgrade all of your apps with one swoop. Normally you do this first but hey! I write this guide based on time, I reading my `history` right now while writing this haha. Use this command to do that:  
`sudo apt-get update && sudo apt-get upgrade`  
You can also use *Ubuntu Software* to do this. Actually I did this using *Ubuntu Software*.

## Auto Mount NTFS Drive
By default NTFS drive didn't mounted when you boot into Ubuntu. This isn't matter for GUI user, because Nautilus will do it automatically when you opening the drive. But when using terminal I jump between directory often so if the NTFS drive hasn't been mounted it'd be pain in the a$$. I won't show you the tutorial here, but [here](https://askubuntu.com/questions/46588/how-to-automount-ntfs-partitions) is the link. I use the way using Fstab 

## Configure the Touchpad
By default, in Ubuntu when you need to scroll using touchpad, you need to use 2 fingers then slide them upwards as if you are using a touch screen device. But I prefer that I only need to slide down my finger in the right side of the touchpad just like any other normal laptop. You can set this behavior in *Mouse & Touchpad* setting.

# Fun Stuff

## Install Ubuntu Restricted Extras
By default, Ubuntu can't play mp3, mp4, and some other things like flash, etc because of legal stuff I don't understand. But you can install *Ubuntu Restricted Extras* so Ubuntu able to do that. Don't worry because those file formats will run very smoothly after you install this app. Run this command:  
`sudo apt-get install ubuntu-restricted-extras`

There are also a library that Ubuntu installed by default because of legal stuff. It is a library to play DVD. I forgot the name because I don't need it, but maybe you do. It is called libdvdblahblah or something.

## Disable Flash In Firefox
Maybe some of you install Restricted Extras because you want to get Flash. But I despise Flash, it is dying and can cause security problem, also Firefox's *Plugin Container* has some problem with Flash, it ate all of my RAM, swooping all 2 GB of RAM. This is why I disabled Flash. I also disable the plugin named *x264* or something because probably I don't need it. Just open your Firefox and then disable it.

## Install VLC
Who doesn't love VLC? It is one of the best video player. If I don't tell you the command in a section. Probably it is because I used GUI instead of `apt-get` to use it. By the way, now `apt-get` is just `apt` :) I still use `apt-get` though because of habits.  Here is the command anyway:  
`sudo apt-get install vlc`  
actually the normal guide ask you to install VLC web plugin too but I didn't. So I install VLC only by using the command above.

## Install Audacious
Audacious is a simple non-bloated audio player. I always used it everywhere because it is a straighforward audio player, I always confused using rythmbox lol. Install it by typing:  
`sudo apt-get install audacious`

## Install Openshot
Usually I do joining and splitting videos together by using FFmpeg. but for heavy-duty works you need a fully featured WYSIWYG video editor. I choose openshot because it is the **best** video editor on Linux. Install it by typing:  
```
sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt-get update
sudo apt-get install openshot-qt
```

## Install Krita
While GIMP is suited for photo editing stuff, I am not comfortable using it as my drawing software. For my drawing software, I choose Krita because it is well designed for painting and drawing. There are also many free brush and great settings available (god bless open source!).

I install Krita using Snap. To find out what is Snapd or how to use it, you can scroll down a little bit below. Make sure you have Snapd first. This is the command to install it:  
`snap install krita`

## Install FBReader
I love reading books, but it seems like default PDF reader shipped with Ubuntu didn't support epub. This is my **F**avorite **B**ook **R**eader (lol) to do that :) Run `sudo apt-get install fbreader`

## Add .hidden File
On home folder there are several things that you might not want to see, for example Android folder created by Android Studio or Anki folder created by Anki. In Ubuntu you can hidden a folder by appending dot (.) to the file name's beginning. So if the name is "file.txt" you can hidden it by rename it to ".file.txt"

This might be work for setting file, programmer use it all the time, like ".gitignore". But for system files you can't do it because the software that use that folder will become confused because the folder is gone. So we must find a way to hidden a file or folder without renaming it.

To do this, create a file called ".hidden" and put file and folder name you want to hidden on each line. Example content of ".hidden":  
```
Android
snap
Desktop

Firefox_wallpaper.png
```

## Install HexChat
Coming from Linux Mint, it is obious that I will use HexChat as my IRC client. HexChat is the default IRC client in HexChat, the interface is simple yet compact. That's why I will use HexChat again in Ubuntu, I use it too in my Windows Machine. Use this command to install it:  
`sudo apt-get install hexchat`

I want to make sure I install the latest version, so I use:  
```
sudo add-apt-repository ppa:gwendal-lebihan-dev/hexchat-stable
sudo apt update && sudo apt install hexchat
```

## Install Pinta
Gimp is a good image processing software, but it is overkill for simple editing task. It is like using photoshop just for cropping. In exchange for Gimp, I install Pinta. It is a lightweight image editing software. Definitely a good software to put into your utility belt.

## Install Audacity
Well, this is the only good free audio editing app. I always use this if I had to deal with audio files, like changing pitch, remove noise, makes sound more bass, and other stuff.

# Programming

## Install Snapd
This is some kind of repository I think, idk. But to install Atom I had to either add PPA or use Snapd. I went for Snapd because of curiousity. Here is the command:  
`sudo apt install snapd`  
You install apps using Snapd by using command:  
`sudo snap install <app name>` Yes, the command is `snap`, **not** `snapd`.  
To upgrade apps you already installed using Snapd you can use:  
`sudo snap refresh <app name>`  
... or you can upgrade them all using:  
`sudo snap refresh`

## Install Atom
I installed Atom because I want to learn Android development using *react-native*, so I installed Atom. Here is the command:  
`sudo snap install atom --classic`  
I don't know why the `--classic` option though. I did it because the tutorial said so. If you want to upgrade Atom if there is an update available, use command:  
`sudo snap refresh atom`

**UPDATE:** I didn't use Atom anymore because it is heavy (it uses 300 MB or RAM). My PC can't run Firefox + Android Emulator + Atom at the same time so I use Sublime Text 3 instead.

## Install Java
Ubuntu have OpenJDK but if you want to develop Android apps. You should use OracleJDK Instead because OpenJDK can bring you some trouble in the future. This is how you install it and set it as default:  
```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install java-common oracle-java8-installer 
sudo apt-get install oracle-java8-set-default 
source /etc/profile
```
## Install Android Studio
With Java installed, we finally can install Android Studio :) I use custom installation and use *darcula* theme. I omit the Android Emulator option because it is heavy, I want to use GenyMotion instead (I haven't installed that, though).  
```
sudo add-apt-repositry ppa:maarten-fonville/android-studio
sudo add-apt-repository ppa:maarten-fonville/android-studio
sudo apt update
sudo apt install android-studio
```
The shortcut might not appear in the launcher, but it will after you Log Out. You can also this command to open Android Studio while the shortcut not appear:  
`/opt/android-studio/bin/studio.sh`

After you installed it, you might only have the latest SDK, you want many packages from Android Studio so make sure you googled it to know which packages you need.

## Install Git
A programmer's tool. Install it by typing:  
`sudo apt-get install git-core`

## Install Curl and Wget
I don't know why but it seems ubuntu 16.04 doesn't came with much package, it doesn't even have Curl and Vim. Use this command to install Curl and Wget:  
`sudo apt-get install curl wget`

## Install NodeJS
In the repository there is stable version of NodeJS. But I want to install the latest version so I use this command:  
```
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
```

Make sure you got the latest version by checking them using:  
```
node -v
npm -v
```

## Install LAMP Stack
This is your web development goodies :) Ubuntu 16.04 only have PHP 7 in the repository so you want to use PHP 5, seek another tutorial. I will not show you the command here because I am not sure what it does. It has so many commands, so search tutorial how to install LAMP stack.

During installing phpmyadmin make sure you select Apache2 by pressing spacebar first before enter. If you didn't do that, reconfigure it using:
`sudo dpkg-reconfigure phpmyadmin`

## Install Sublime Text 3
This is my favorite text editor :) I write this article in it. Here is how to install it:  
```
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
```

On Ubuntu, Sublime may have weird shortcut name. In my case, it is *untitled - Sublime Text (UNREGISTERED)*. It should be the opened file name, but because of Unity caching of some sort, it become like this. To fix this, remove the shortcut then log out. This is the command line to do that:  
`rm ~/.local/share/applications/sublime_text.desktop`

On the tutorial I read, it is sublime-text.desktop, but in my laptop it is sublime_text.desktop. Find the one yours then delete that. After you running the command simply log out then log in back again.

## Install Vim
I don't know why Ubuntu didn't include this. It is unusual, Usually Vim is everywhere. Anyway this is the command:  
`sudo apt-get install vim`

## Install FileZilla
This is the software to do FTP stuff.

## Install Tmux
If you are a Vim user, you may find the split command is powerfull. This app let you do split command in terminal! Now you don't have to open new terminal if you want to open a small app or running a small script. Just split the windows and you are good to go!

# Theme It Up!

## Install Flatabulous
Default Ubuntu is looking pretty good, but I already used to it so I think it is ugly haha. This is the section where I explain how to achieve the desktop looks like my screenshots above. Also in /r/unixporn (not a porn, seriously) there are so many good looking desktops. I choose *Flatabulous*. I only list the command I use here, but don't put them! Read the tutorial [here](https://www.reddit.com/r/unixporn/comments/3luoqx/unity_flatabulous_flat_theme_for_ubuntu/?ref=search_posts) because the instruction is clearer. This is the commands I use:  
```
sudo apt-get install ubuntu-tweak
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons
```

## Customize The Terminal Color
This is what I do to replace that usual terminal color. It is already good, but if you want to change that, here is what I did. So I Changed profile name *Unnamed* to *Default*, add new profile for each of the theme.

Command for flatabulous color scheme:  
`wget -O xt http://git.io/vn6HM && chmod +x xt && ./xt && rm xt`

I edited the backgroud color a little bit. The bar is #2d2d2d so if you want flat get the terminal background the same color.

## Firefox Dark Theme
Flatabulous change the application bar to gray-ish black, so I change my Firefox theme to dark.

## Rice It Up!
You can start editing your dotfiles, installing GNU Stow to manage your dotfiles. And doing bunch of stuff ;)

# Utility Stuff

## Ranger
This is my way-to-go file explorer. Based on python, Ranger provides file exploring similar to Midnight Commander. It also has so many features, one of them is bulk renaming. This is the command:  
`sudo apt-get install ranger`

## Htop
This is the system monitor you see on the screenshot. Use this command to install it:  
`sudo apt-get install htop`

## Gufw
This is firewall app on Ubuntu. It is easy to use. Might Require Java.

## Tree
Nice way to show your files and folders :)

## Redshift
Limiting blue light in your PC so your eyes rest better at night. Great for night worker.

# Bonus: Apps That Already Included Within Ubuntu 16.04
I write this section because there are so many apps included within Ubuntu 16.04 that maybe other distributions didn't have. Here are the apps:
* **Cheese** - Webcam software.
* **build-essential** - I am not sure if I installed this on my own or this is included. Anyway this is an essential package for C/C++ programmer. Run `sudo apt-get install build-essential`
* **ffmpeg** - Command line video editor.
* **imagemagick** - Command line image editor
* **LibreOffice** - Micro$oft Office replacer
* **Rhythmbox** - Audio player, I prefer Audacious, though.

# Final
And that's it. Thank you for following this guide along. I will update this as I installed more programs :) This kind of becoming a diary lol. See you next time :)