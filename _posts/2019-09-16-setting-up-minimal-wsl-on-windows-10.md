---
title: Setting Up Minimal WSL on Windows 10
description:
header: Setting Up Minimal WSL on Windows 10
---

![image](/img/wsl.png "WSL")

* On your home folder, Bash has 4 file by default: `.bash_history`, `.bash_logout`, `.bashrc`, and `.profile`. I don't want to touch the default (tried it, the colors messed up and nobody could troubleshoot it). So, I add `source ~/.bash_user` near the end. You can name it as you wish. We add this so Bash will source additional file during startup, and we can add personal configuration on that file. Contents of `.bash_user`:

```
# Alias
alias d='cd /mnt/d'

# Export
export LESSHISTFILE=/dev/null # Disable .lesshst
export EDITOR=/usr/bin/vim
export LS_COLORS="ow=01;34;40"

# History
HISTCONTROL=ignoreboth:erasedups # Don't put duplicate lines or lines starting with space in the history, also remove duplicates
HISTSIZE=20000
HISTFILESIZE=20000

# Startup
cd /mnt/d
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then # Start tmux
    tmux attach -t default || tmux new -s default
fi
```

* To disable `.lesshst` (less history), add `export LESSHISTFILE=/dev/null` into your `.bash_user`, as shown on my `.bash_user` above. You can leave it blank or use `/dev/null`. On this example I use `/dev/null`.

* To disable `.selected_editor`, add `export EDITOR=<your favorite editor>`, to your `.bash_user`.

* To fix horrible WSL folder background, add `export LS_COLORS="ow=01;34;40"` to your `.bash_user`. I use `34` even though the tutorial use `36`.

* To disable `.python_history`, create `.pythonrc` with following contents:

```
# Disable history
import readline
readline.set_auto_history(False)
```

* `sudo_as_admin_successful` is hardcoded, so you can't disable it.

* For Vim users, to disable Vim stuff, add this to your `.vimrc`:

```
" Disable .netrwhist
let g:netrw_dirhistmax = 0

" Disable swapfiles and backups
set nobackup
set noswapfile

" Disable .viminfo
set viminfo=""
```

* To disable Ranger command history, add `set save_console_history false` to your `rc.conf`.

* To use Solarized in WSL, I execute this `.reg` file:

```
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Console\C:_Program Files_WindowsApps_CanonicalGroupLimited.UbuntuonWindows_1804.2019.521.0_x64__79rhkp1fndgsc_ubuntu.exe]
"ColorTable00"=dword:00362b00
"ColorTable01"=dword:00969483
"ColorTable02"=dword:00756e58
"ColorTable03"=dword:00a1a193
"ColorTable04"=dword:00164bcb
"ColorTable05"=dword:00c4716c
"ColorTable06"=dword:00837b65
"ColorTable07"=dword:00d5e8ee
"ColorTable08"=dword:00423607
"ColorTable09"=dword:00d28b26
"ColorTable10"=dword:00009985
"ColorTable11"=dword:0098a12a
"ColorTable12"=dword:002f32dc
"ColorTable13"=dword:008236d3
"ColorTable14"=dword:000089b5
"ColorTable15"=dword:00e3f6fd
"ScreenColors"=dword:00000001
"PopupColors"=dword:000000f6
```

