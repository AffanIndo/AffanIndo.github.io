---
title: Creating My Own .zshrc
description:
header: Creating My Own .zshrc
---

### Intro

On the past I use Zsh with Oh-My-Zsh! configuration framework. Several people said that Oh-My-Zsh! is bloated and I definitely can feel it. Starting up terminal is very slow. Then, I use Prezto, it's pretty nice. However, I realized that I only use simple terminal prompt, and maybe several Zsh feature. That's why I think I don't need these frameworks, and that's why today I want to create my own `.zshrc`.

### Installing

![image](/img/zsh/install.png "Install")

I use [this tutorial](https://linuxhint.com/install_zsh_shell_ubuntu_1804/) to install Zsh. I follow it along up until when they said to reboot your computer. The tutorial after that part only explains how to install Powerline and Oh-My-Zsh!. But, before I reboot my computer, not only did I change the default shell, but also the default shell configuration in `tmux` because I use it.

### After Restarting

After restarting, this is the part where I usually gave up and use Prezto or Oh-My-Zsh!. However today is different, I am going to create my own `.zshrc`! The first time I open my terminal, Zsh offered their default config, but I want to start from scratch. The next problem is, there is only 1 file, that is an empty `.zshrc`. There is no `.zhistory`, `.zlogin`, `.zprofile`, and other stuff. After meddling with my laptop for a while, finally I understand. If those file doesn't exist on my home folder, then they will use the default one in `/etc/zsh/`.

### Writing One

![image](/img/zsh/xero.png "Xero")

I think this *should* be the hardest part, but I found a great [dotfiles](https://github.com/xero/dotfiles/tree/master/zsh) that has amazing `.zshrc` that he wrote by himself from scratch. Basically the only thing in his `.zshrc` is:

`for config (~/.zsh/*.zsh) source $config`

I was like *"What the heck?"*, that's clever! So I just need to put the rest of my own aliases in `~/.zsh/` that's convenient. After this, I just dump `alias.zsh` and `function.zsh` that I've been collected for years. I definitely don't need a configuration framework for this.

### Prompt

![image](/img/zsh/prompt.png "Prompt")

I got kinda stuck when I want to write my own prompt. Finally, I found [a site](https://www-s.acm.illinois.edu/workshops/zsh/prompt/escapes.html) that explains it :D I had to meddling around to understand it, though. But basically I just need to put `%d`, `%h`, or anything I want inside this `export PS1=""`

My favorite prompt is *Sunaku* from Oh-My-Zsh!. I even create [my own version](https://github.com/AffanIndo/sunaku-zen) of it. Basically it looks like this:

`~/Documents $ `

If I am in a Git directory, it will prepend the prompt with an exclamation mark like so:

`!master ~/SomeGitProject $`

I love this simple prompt. First of all I add `pwd`+`space`+`dollar`+`space` like so:

`export PS1="%~ $ "`

Then, I want the `pwd` to be cyan. So I add some color:

`export PS1="%F{Cyan}%~%F{white} $ "`

Then, I want the `pwd` to be bold, so I add `%B` to start the bold, and `%b` to end the bold:

`export PS1="%B%F{Cyan}%~%b%F{white} $ "`

At this point, it works perfectly, but when I use bold, the cyan color doesn't appear, even though I tried some other color, it will become bold gray. Now, my only problem is to sprinkle those Git stuff.

Anyway, since the color doesn't work, here's how it looks like now:

`export PS1="%B%~ %b$ "`

### History

Zsh has a great history management, for example it could remove duplicate before saving them into `.zhistory`, and other extra stuff. I use [this website](https://github.com/zanshin/dotfiles/blob/master/zsh/setopt.zsh) as reference to use them.

### Fixing Some Annoyance

The first thing I noticed was that the autocompletion is case-sensitive. When I use Oh-My-Zsh! it is case-insensitive. I like it to be case-insensitive so I add this to one of my configuration files:

`# Tab completion`  
`setopt MENU_COMPLETE`  
`zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'`

I stole those from [here](https://superuser.com/questions/1092033/how-can-i-make-zsh-tab-completion-fix-capitalization-errors-for-directorys-and) :D Now when I press `cd doc/sc<tab>` it will autocomplete to `cd Documents/Scripts`

![image](/img/zsh/auto.gif "Case-Insensitive")

Then, I want Zsh to [highlight on tab](https://stackoverflow.com/questions/29196718/zsh-highlight-on-tab). I add this to do that:

`zstyle ':completion:*' menu select`

![image](/img/zsh/menu.gif "Highlight")

Then, I add history searching by pressing arrow keys. I can't live without this feature. I found the tutorial [here](https://superuser.com/questions/585003/searching-through-history-with-up-and-down-arrow-in-zsh).

![image](/img/zsh/up.gif "Up")

### Conclusion

Finally, I understand *a little* about what it takes to create your own `.zshrc`. Surprisingly, it is easy! The documentation is awesome, too. But there is something that I want to explore more in the future:

* Setting up the Git stuff on my prompt.
* Reading more about `setopt`, especially the part to set how Zsh handle history.
* Adding plugins and stuff.

### References

* https://github.com/AffanIndo/sunaku-zen
* https://github.com/xero/dotfiles/tree/master/zsh
* https://github.com/zanshin/dotfiles/blob/master/zsh/setopt.zsh
* https://grml.org/zsh/
* https://linuxhint.com/install_zsh_shell_ubuntu_1804/
* https://stackoverflow.com/questions/29196718/zsh-highlight-on-tab
* https://stackoverflow.com/questions/764600/how-can-you-export-your-bashrc-to-zshrc
* https://superuser.com/questions/1092033/how-can-i-make-zsh-tab-completion-fix-capitalization-errors-for-directorys-and
* https://superuser.com/questions/585003/searching-through-history-with-up-and-down-arrow-in-zsh
* https://www-s.acm.illinois.edu/workshops/zsh/prompt/escapes.html
* https://www.reddit.com/r/unixporn/comments/48wmfr/zsh_users_which_do_you_prefer_oh_my_zsh_or_prezto/
