---
title: (WIP) How to Make Your Vim More Sophisticated
description:
header: (WIP) How to Make Your Vim More Sophisticated
published: false
---

I love Vim, here's a step-by-step guide to make it feature-packed and better. I tried to start from scratch, and here's what default Vim looks like:

![image](/img/how-to-make-your-vim-more-sophisticated/default.png "Default")

It looks pretty good already, to be honest. But I think there is more room to improve it, especially the look and feature to match better with the modern era. Starting from this state, here's what we are going to do:

* Vimrc
* Plugin Manager
* Color Scheme
* Code Folding
* Statusline & Buffer Tab
* ???????????
* IDE <!-- https://dev.to/bezirganyan/who-said-that-vim-cannot-compete-with-ides-51k4 -->
    * Code Completion
    * Error Detection
    * Debugging

    * Start Page/Start Menu/Start Screen
    * BANDINGIN SAMA CODEBLOC

* ??????????????
* ???????????????????

## Vimrc

![image](/img/how-to-make-your-vim-more-sophisticated/vimrc.png "Vimrc")

You can customize Vim's settings by editing the `.vimrc` file. This file located in your home folder (`~/.vimrc`). This is the file that we will edit extensively through this tutorial. I don't think it is a good idea to blatantly copy someone else's config. You should steal bit-by-bit the pieces that you want to include in your `.vimrc`.

To begin your journey, I think [this minimal .vimrc](https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim) is a good start. Don't copy stuff that you don't understand, though. For reference, [here's mine.](https://github.com/AffanIndo/dotfiles/blob/master/vim/.vimrc)

## Plugin Manager

![image](/img/how-to-make-your-vim-more-sophisticated/vim-plug.png "Plugin Manager")

A plugin manager is a tool that automates the action of installing and upgrading Vim plugins. The way I see it, there is 2 kinds of Vim plugin manager.

1. The first one is the minimalist one. This kind of plugin manager only manage the *runtimepath*. Essentially, using this kind of plugin manager makes it simple to install a plugin, you only have to paste the plugin folder into a special directory, where the plugin manager will automatically loads everything inside that folder. This way, it is really simple and minimalistic, but you had to manage it manually. On the past I always use this plugin manager called [Pathogen](https://github.com/tpope/vim-pathogen). Also, Vim8 has this kind of plugin manager built-in as well. However, recently I moved on into the second type of plugin manager because it is kind of tedious to manually set up your plugins, especially if you have tons of them.

2. The second one is the feature packed one, you might see the resemblance with your OS package manager. With this kind of plugin manager, you only need to put your plugin list into your `.vimrc`, then the plugin manager will install it for you. This way, you don't need to Google every single plugin and clone it into the directory. On the past I always thought maybe this kind of plugin mnager might be bloat, heavy, too much dependency, and other bad stuff. But, I was wrong. It is really pleasant to use and very convenient.

I use [vim-plug](https://github.com/junegunn/vim-plug), there is [vundle](https://github.com/VundleVim/Vundle.vim) if you want some alternative. I was confused on which one to use, but [this blog post](https://jordaneldredge.com/blog/why-i-switched-from-vundle-to-plug/) really clear that up, it convinced me to use vim-plug because of excellent features it has. On that blog post there is also a great snippet explaining how to automatically install vim-plug when you don't have one. Not only that, the GitHub repository of vim-plug provides tutorial how to use vim-plug as well.

Using vim-plug is really easy, you just have to put your plugin list inside your `.vimrc` like this:

```
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'mattn/emmet-vim', { 'for': 'html' }
call plug#end()
```

After that, use command `:PlugInstall`, and vim-plug will automatically install every plugins for you. When I use Pathogen, I need to keep a list of instaled plugins, and if I want to install them, I need to go Google each one and install it one by one. Using vim-plug really makes my day easier. Also, as you can see vim-plug has a feature to selectively loads plugin for specific filetype, for example I only want to load Emmet if the file is HTML. I suggest you to read vim-plug GitHub repository to know each of its features, it's really nice, I love this plugin.

## Color Scheme

![image](/img/how-to-make-your-vim-more-sophisticated/colorful.png "Color Scheme")

Color scheme is subjective and differ from person to person. Personally I love Solarized-Dark. I really like the way it looks, and [Solarized](https://ethanschoonover.com/solarized/) is pretty popular in programming community.

For color scheme, there are two ways to install it. The first one is to put the `<color scheme name>.vim` into `~/.vim/colors`. But, if the color scheme is packaged like a plugin, it has `autoload` folder, you could use your plugin manager to install it. For example, this is the color scheme that you could install with your plugin manager:

![image](/img/how-to-make-your-vim-more-sophisticated/color-1.png "Color Scheme")

As you can see, it has `autoload` folder, you can use your plugin manager to install it. However, this one below doesn't have it so you need to put it in `~/.vim/colors` folder.

![image](/img/how-to-make-your-vim-more-sophisticated/color-2.png "Color Scheme")

My explanation might be kind of confusing, but don't worry, because there is always tutorial on how to install the color scheme on their GitHub repository. As for Solarized-Dark, it already has `autoload` folder. So, as you can see I could install it using vim-plug by putting `Plug 'altercation/vim-colors-solarized'` on my `.vimrc`.

## Code Folding

From default Vim screenshot above, code folding in default Vim is super ugly (in my opinion, at least). Here's what I did to my code folding:

Before:

![image](/img/how-to-make-your-vim-more-sophisticated/code-folding-before.png "Code Folding")

After:

![image](/img/how-to-make-your-vim-more-sophisticated/code-folding-after.png "Code Folding")

First of all, Those long stripes really distracting, and they're bold on top of that, so it is kinda contrasting and distracting. Furthermor, the first thing they show is the amount of line folded, it is kind of useless to be put in front of the line. I think the first thing should be shown in a folded line is the first line of folded text, not how many line it contains. That's why,  I removed those long stripes and make the folded text number into rightmost line instead of on letmost line. This way, it is readable and better than before.

If you wish to change it, [I found a good snippet](https://gist.github.com/sjl/3360978). The script might looks complicated, but most of it is just counting the column width. The relevant part of it is on line 5 and line 14. On line 5 we have:

`let windowwidth = winwidth(0) - nucolwidth - 3`

The part you want to see is that `3` at the end of the line. This will become relevant after I explain line 14:

`return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '`

If you see the screenshot in that page, the snippet use `…` as the decoration. I prefer `---`, and I also want to remove the decoration on at the end of the line. So, I changed it into this:

`return line . ' ---' . repeat(" ",fillcharcount) . foldedlinecount . '' . ' '`

Because of this, the decoration now is slightly longer, and we must chane that line 5 to edit how the window width count. I changed `3` into `5` to compensate the longer decoration. This is just for aestethics, so... you do you :)

![image](/img/how-to-make-your-vim-more-sophisticated/code-folding-use.png "Code Folding")

## Statusline & Buffer Tab

I combine these 2 sections because I use 1 plugin that does both of these. I use [Airline](https://github.com/vim-airline/vim-airline). The idea of using Airline sounds bad to some people, myself on the past included. But hear me out. As a minimalist person, I've tried [Lightline](https://github.com/itchyny/lightline.vim) and writing my own statusline, but finally I think Airline solves my problem.

To be honest, I don't need fancy statusline, Lightline is enough, even writing your own statusline is pretty simple. But I want Airline's Buffer Tab, so I hit 2 birds with 1 stone, eh? When I tried Lightline, the statusline looks great. However, the statusline on NERDTree (Yes, I use NERDTree) looks horrible and there is nothing they could do about it, I don't know about the status of this "issue" today, but you might try it out. As for writing my own statusline, it creates a horrible bug that I couldn't stand. I made a Reddit thread of it [here](https://www.reddit.com/r/vim/comments/9xxq27/glitches_when_typing_in_insert_mode/). Man, that bug is so horrible that I spent months trying to fix it, it gave me Vietnam flashback thinking about it. Here's how it looks on mine:

![image](/img/how-to-make-your-vim-more-sophisticated/airline-normal.png "Airline")

It looks pretty bland because that's the way I like it. I don't want my statusline too fancy because it'd distracts me for sure haha. This is how Airline looks like if you want it to be fancy:

![image](/img/how-to-make-your-vim-more-sophisticated/airline-fancy.png "Airline")

Airline actually is a light statusline. However, its plugin and integration with other plugin makes it kinda heavy. It could integrate itself with CtrlP, NERDTree, and dozens of other plugin you use, but I just disable 'em all because I only need Airline's Tabline. Here's how my Airline setup looks like on my .vimrc:

```
" Airline
let g:airline_theme='solarized'
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '| '
let g:airline#extensions#tabline#buffer_min_count =2 " Show tabline if there are more than 1 buffer opened
let g:airline#extensions#tabline#formatter = 'unique_tail' " Show file name only in tabline
```

There are tons of Airline theme, but you must use different repository. I use vim-plug to manage it so here's the relevant section on my .vimrc:

```
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
```

There you go! Fancy Statusline and Buffer Tab with Airline.

## References

* https://ethanschoonover.com/solarized/
* https://gist.github.com/sjl/3360978
* https://github.com/AffanIndo/dotfiles/blob/master/vim/.vimrc
* https://github.com/VundleVim/Vundle.vim
* https://github.com/junegunn/vim-plug
* https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim
* https://github.com/tpope/vim-pathogen
* https://github.com/vim-airline/vim-airline
* https://jordaneldredge.com/blog/why-i-switched-from-vundle-to-plug/
* https://www.reddit.com/r/vim/comments/9xxq27/glitches_when_typing_in_insert_mode/

