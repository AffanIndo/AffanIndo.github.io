---
title: (WIP) Living in Terminal
description:
header: (WIP) Living in Terminal
---

<!--
additions:

vim, mpv, browsers, youtube-dl, ytcc, discord(absolutely proprietary), syncthing

Terminal emulators.



    termite - terminal emulator (but most should be fine for me)
    neovim - text editor
    ranger - vim-like file manager
    qutebrowser - vim-like web browser
    zsh - shell
    i3wm - tilling window manager


A clipboard manager is a must for me. I have many I do like; currently using Clipit.

ssh, Rsync, mc and tmux


git, ruby (if that counts), zsh, top/htop, ssh, nmap


-->

Hello readers :) There are a lot of Linux ninjas out there who live in terminal, sounds cool right? Lately I've been using terminal a lot and I am going to share how can you manage to live in there. I am not savvy enough but I think that is good because we newbies tend to understand each other, right?

Doing stuff from terminal has its own perks. First of all it is blazing fast! GUI apps need several seconds to load meanwhile when you open a terminal apps, it just go *poof!* opened! One of other benefit I see is, it trains your brain to recognize what are you going to do next. When you using GUI apps, you just look at stuff you wanna go then drag your mouse there, meanwhile when you are on terminal, you immediately think out lines of keystrokes you are gonna do, that means you already think ahead about actions you want to do. Combined with muscle memory, doing stuff from terminal is faster.

Another perks of terminal apps is... configuration! Many apps are simple enough but hide stack of gems underneath. You can customize them however you like, and sharing configuration among others are pretty often sight too. This way, you can have the exact setup as someone's you like on the net. I save all of my configuration [here.](https://github.com/affanindo/dotfiles) Take a look and see if there is anything you fancy ;)

Okay, now I will explain all my terminal setup. Actually I don't have many settings. I use **XFCE Terminal** (it is default terminal on Xubuntu). This is why I don't care if I am on Arch, or Ubuntu, or Kubuntu, all of my setup remains the same. But first of all you might want to pick your terminal emulator.

Below I will list all the thing I use and how I use it. I made this post because tutorial out there shows you either the apps or list of commands, but not *how* do power user uses it, there is no list of frequently used command. After reading this tutorial I hope you have a grasp on how to use terminal apps. Here is how my desktop looks when I use my terminal:

![image](/img/living-in-terminal/1-busy.png "Busy")

There is a lot of things going on, right? Actually it is pretty simple. There are only 2 things in my terminal. There is the main window with splits so I have 4 apps running. In main window I have file explorer on the top-left, text editor on the top-right, music player on bottom-left, and system info on the bottom-right. And there is *tabs* on the very bottom-left so I can manage my apps if it is too cluttered. Actually you don't need to be this busy, I made this just to screenshot it. Most of the time I only have one program opened, or maybe two.

On this tutorial I will assume you got basic terminal command covered. Here are the content of this article:  
* Zsh
* Ranger
* Git
* Htop
* Mplayer
* Tmux
* Vim
* Wget
* Youtube-dl
* Tldr


## Zsh

Zsh is a shell with lots of convenient feature. A lot of people switch their Bash shell for Zsh, and I am one of them :) Zsh is relly pleasant to use and so intuitive, you have to try it too!

![image](/img/living-in-terminal/3-zsh-cd.png "CD Completion")

When you want to `cd` to some folder but you forget the folder name, just press tab then Zsh will list you the folder. If you press enter, the folder name will be entered for you.

![image](/img/living-in-terminal/3-zsh-cd-1.png "CD Completion")
![image](/img/living-in-terminal/3-zsh-cd-2.png "CD Completion")

You don't have to press tab every time. Just enter a few letters of the directory then press tab at the end of it. Zsh will complete the path.

![image](/img/living-in-terminal/3-zsh-last-command-1.png "Last Command")
![image](/img/living-in-terminal/3-zsh-last-command-2.png "Last Command")
Press the command you want to check the history then press up arrow. Now you can know the last command entered.

## Ranger

![image](/img/living-in-terminal/2-ranger.png "Ranger")

Let's start with file manager, shall we? As you may know, to move between directory, you have to type `cd foldername`. This is tedious for normal desktop usage because you constantly jumps between folders, also a lot of people don't want to memorize folder names.

For this reason I use an app called Ranger instead. If you used PC back then, maybe you know Midnight Commander, it is a great CLI app. I prefer Ranger though, because I use Vi key bindings a lot in my ecosystems, and Ranger is built based on that! You can mark files like you mark lines in Vi, you can `gg` and `G`, you can use the godly `hjkl`, and many other Vi key bindings!

Ranger interface is based on 3 columns. The left one is the folders if we go up in the folder hierarchy. On this photo, I am in `~/dotfiles/` and I am highlighting `zsh`. It means if I press `left` or `h` I will go up to `~/` and if I press `right` or `l` I will go inside `zsh/` directory.

One of the best feature of Ranger is the file preview, if you have a text file, when you highlight it, Ranger will show you the inside of the file. This goes with many file formats, PDFs, images, you name it. If you press `right` or `l` while highlighting a file, you will open the files. This is very handy, I can open text files without typing `vim filename` everytime, because Ranger will open the corresponding software automatically.

Here are the command I use based on frequency:  
* **q** - Quit.
* **hjkl** - Move around, you could also use arrow key instead
* **/** - Search, when you are too lazy to press down or up to reach your file, you can just press `/` then type the file or folder name, instant jump! You can press `n` to find next and press `N` to find previous.
* **a and A** - Rename
* **yy** - Copy.
* **dd** - Cut.
* **dD** - Delete.
* **pp** - Paste.
* **v** - In Vim, there is something called `visual mode`, it is basically a mode where you block/highlight your stuff. In Ranger, when you press `v`, it will select all files and folder as if you press `ctrl+a`.
* **\<space\>** - Block/highlight stuff, but 1 item at a time.
* **:bulkrename\<enter\>** - When you type `:`, Ranger will open a `command mode`. in this command mode, when you type :bulkrename and press enter, Ranger will open your favorite text editor (in my case it is Vim) and list all files that you've highlighted. Edit the text, exit, exit the confirmation, then press enter on the confirmation, and *boom!* renamed. This is my favorite feature in Ranger, I can bulkrename stuff using Vim! Combined with Vim's search-and-replace + regex this become a very powerful feature indeed.
* **:rename newfilename\<enter\>** - Rename the file highlighted. No need to write the first filename like using `mv`. Just write the new file name and press enter :)
* **!** - You can type `:shell` then write the shell command you want to use, but writing that 6 letter is tedious, you can just press `!` and Ranger will type it.
* **{} or \[\]** - By pressing `j` you can go down a folder, but what if you want to go down a folder, but while inside the folder? For example, there is a time where you want to check the files inside your folders. When you want to check the next folder, you had to press `backspace`, then press `right arrow`, then press `enter`. You do this again and again until you checked all of your folders. With ranger, you can just press this command instead.
* **m+letter** - Mark a folder. For example you can press `m+d` to mark your documents folder.
* **'+letter** - Jump to the folder you've marked. So you can jump to your documents folder by pressing `'+d`
* **gg and G** - `gg` will jumps you to the top folder. `G` will jumps you to the bottom folder.
* **ctrl+d and ctrl+u** - Go up or down by half screen.

## Git

![image](/img/living-in-terminal/2-git.png "Git")

Since not all of you are programmer, maybe this app is not useful for you. Just skip this section if you are not a programmer.

I use Git sparingly, when I want to download stuff from GitHub, I can just type `git clone \<link\>`. Or when I want to sync my settings. I use Github to store my settings. When I use other PC, I can just do `git pull` to sync my folder between PCs. And you notice, this blog is in GitHub! I have a tutorial on Git/GitHub if you are interested, click [here.](https://affanindo.github.io/simple-git-workflow)

Git tutorial is really out of this world, it is a lot of commands, and you need some extensive tutorial to use it. That's why I will not list in on here.

## Htop

![image](/img/living-in-terminal/2-htop.png "Htop")

This app is a nice command line utility. The function is basically the same as Window$ task manager. You can see which program globbing up your RAM or CPU, you can kill 'em too.

I think you should master how to manage process, because app running in background can became a hassle, you should know how to find it, how to kill it. Htop makes it easy or you. I don't use many features of it. Probably just `filter` to search a running program's name, and `kill` to kill it. You can see the keystroke on the bar at the bottom of the app.

To kill a program, first highlight the program you want to kill, you could move up and down using arrow keys to move, or search the name using `F3`. Then use `F9` to open the kill window, then you could select a method to kill the program, if you don't know anything about it, just press enter. But if the program is really annoying to close, you could invoke `SIGKILL` by pressing `9` and then press `\<enter>` :)

## Mplayer

Here we are at the media player, finally. Mplayer is my favorite video player on linux. It is very quick, compact, nice extensible configuration, and you can play video in ascii for the lolz. I love it because you can do all actions from keyboard, like controlling volume, play next item, etc. Mplayer can play both video and audio. Here is what it looks like when playing audio:

![image](/img/living-in-terminal/2-mplayer-music.png "Mplayer Audio")

Looks a bit fuzzy, isn't it? but I realize when I play audio I don't need many features, I only need volume setting, pan, and play next audio. I am gonna summarize the user interface here. On the top you can see the file location, below that you can see the info of the file, like album, artist, etc. Ignore the stuff between `==============`. And on the bottom there is an indicator on how high is your volume and how many minutes is the file. It is very basic, but I don't hear music that often, I use GUI app *Audacious* to play my music thingy. Here is the command I use to utilize this (`$` means I type it in the terminal, so don't type the dollar sign.):  
* `$ mplayer *` - Tell mplayer to play all media files within the folder. `cd` to your music folder first.
* `$ mplayer -playlist <(find "$PWD" -type f)` - Recursive search all of your media files. Great if your music folder is separated by folders.
* `$ mplayer -playlist <(find "$PWD" -type f) -shuffle` - Same as above, but play files randomly.
* **left/right arrow** - Pan backward/forward by 10 seconds.
* **down/up arrow** - Pan backward/forward by 1 minutes.
* **PgUp/PgDn** - Pan backward/forward by 10 minutes.
* **9/0** - Decrease/increase your volume.
* **\</\>** - Previous/next files in playlist.

Here is my Mplayer when I play video:

![image](/img/living-in-terminal/2-mplayer-video.png "Mplayer Video")

I love playing video in Mplayer, there are many settings to choose from, for example I can customize how subtitle rendered. Here are the command I frequently use (in addition to command above):  
* **f** - Fullscreen.
* **q** - Quit.
* **o** - Show timer (**o**n screen display).
* **I** - Show file name.
* **\<space\>/p** - Pause.
* **z/x** - Subtitle delay -/+ (Never used it, though).

And that's it for Mplayer! a simple player :) Check out my dotfiles for Mplayer, you need several tweaks to make Anime video working. Nowadays I use MPV since sometimes Mplayer couldn't display Anime subtile. The commands are the same so you could migrate to MPV easily if you want.

## Tmux

![image](/img/living-in-terminal/2-tmux.png "Tmux")

As a person who live in terminal, you need a some sort of window manager, with Tmux you can put all your apps in the screen with splits. From the screenshot at the very beginning of this post, you can see I have multiple splits, this allows me to show many apps at one screen. Other than splits, you can have multiple tabs. As shown from this picture, I got 3 tabs. You can rename the tabs however you want, maybe you want to have 2 tabs named *work*, and *music* so you can have 2 sets of splits, one for your work stuff and the other one is for fun stuff.

Now let's get to the technical stuff. When you want to do a Tmux command, you need to type *prefix* first (the default is **ctrl+b**) so Tmux knows you want to specify the command to the Tmux, not to the program you are running. A split running a program is called **pane** and the tab is called **window**.Here are the command I use based on frequency:

* **\<prefix\> => %**  - Splits pane to the left and the right.
* **\<prefix\> => "** - Splits pane to the top and the bottom.
* **\<prefix\> => up/down/left/right** - Select active pane.
* **\<prefix\> => ctrl+up/down/left/right** - Resize active pane.
* **\<prefix\> => x** - Kill active pane.
* **\<prefix\> => &** - Kill active window.
* **\<prefix\> => c** - Create window.
* **\<prefix\> => n** - Next window.
* **\<prefix\> => N** - Previous window.
* **\<prefix\> => [1234567890]** - Select window.
* **\<prefix\> => ,** - Rename window.
* **\<prefix\> => $** - Rename session (I still don't understand what is this).
* **\<prefix\> => z** - Fullscreen a pane.

Please take a note, if you use my Tmux settings, I changed some key combination. \" to \_ and % to \|. I also add a key binding so you can use hjkl too instead of arrows.

## Vim

![image](/img/living-in-terminal/2-vim.png "Vim")

Vim! the star of this post! I love Vim very much that I changed some key command to follow Vim's way haha. 

Vim is a modal text editor, it means several modes. Command Mode to do shortcuts and editing, Insert Mode to do actual writing, and Visual Mode to highlight/block/select some text.

The modal system makes Vim powerful, when I in Command Mode, every keyboard key is an editing command, so you can focus editing in this mode. For example, when you press `dtA`, Vim will not type 'dtA' in the text, but it stands for '**d**elete un**t**ill letter **A**. As you can see from this example, you don't need to press shift, then hold right arrow until you reach letter A then press backspace, just press `dtA` in a second and you will achieve the same result.

Another example is delete line. When you want to delete 5 lines, in other text editor, you need to stop your writing, move your hand 20cm to the right so you can grab the mouse, aim the mouse to the end of the 5th line, then hold the button on the mouse while you drag it across the screen until you reach the beginning of the 1st line, at this point you simply stop holding the mouse, then reach your backspace key, then hit it! It feels like a sluggish action when you break down the steps, right?. In Vim, every key has its own meaning, so there is a way to do that without reaching your mouse. **5dd**. Yes, that's the command in Vim to achieve the same result without moving your goddamn hand to reach the mouse. It is pretty simple, actually. `d` means delete. `dd` will delete whole line. `5dd` will delete 5 line. How about that?

As you can see from example above, Vim has many key. But by doing this, it makes the learning curve steeper. I can't explain all about Vim in one post, so this section is gotta do it for this post. I will make another post for Vim tutorial.

## Wget

![image](/img/living-in-terminal/2-wget.png "Wget")

Wget is a downloader utility for your terminal. It is easy and simple to use. Here is how to download a file from the net:  
`wget -O \<filename\> \<url\>`  
or, if you don't want to specify file name:  
`wget \<url\>`  
Quick and easy. I rarely use Wget, though. Because I use my Firefox to browse the net, so I download file through Firefox too. Wget is a nice utility if you want to use a script to download something.

## Youtube-dl

![image](/img/living-in-terminal/2-ydl.png "Youtube-dl")

My tool of choice to download a Youtube video. It has so many features, like downloading whole playlists, and other stuff you might expect from Youtube downloader utility. '$' sign means I type the command on the terminal, so don't actually write dollar sigh there. Here are the commands I use:  
* `$ youtube-dl LINKHERE` - Download the best quality.
* `$ youtube-dl LINKHERE -F` - List the available quality.
* `$ youtube-dl LINKHERE -f NUMBERHERE` - Download the selected quality.

The NUMBERHERE represents the number on the left of available quality when you use `-F` option. Some common numbers are `18` (480p MP4) and `22` (720p MP4). I put the option command at the end of the script so you can just press up arrow then edit just the last tidbit part of the command.

## Tldr

![image](/img/living-in-terminal/2-tldr.png "Tldr")

Tldr is a nice cheatsheet on your terminal. You forgot how to use unrar? Just type `tldr unrar` and Tldr will show you the common commands for unrar. You can consult man pages to get the best result, but commands listed in man is sorted based on alphabet, not frequency. Tldr will show you the commonly used command so you *might* immediately get what you wanted. For beginner this is a really nice training wheels, I really like it. However, maybe several programs doesn't included in Tldr so you have to scavenge for tutorials out there. Maybe in the future, the developer add more application cheatsheets into Tldr.

## Conclusion

And that's how I lived in the terminal :) I hope you enjoy this post.
