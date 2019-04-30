---
title: My Vimrc Explained
description:
header: My Vimrc Explained
---
You want to have powerful Vim, right? fortunately Vim is highly customizable

This way you can just copy someone else's config and then use it as your own. But this is a bad practice because sometimes there is a good stuff in someone else's config but you can't use it efficiently because the one who created the config knows the mnemonics, how stuff worked, *et cetera*.

Copying someone else's config **blindly** is a bad practice, you shouldn't put anything in your *vimrc* something that you don't know. Today I will put my *vimrc* here and I will break it down into pieces so you know how mine worked. And when you know what it did, you pick which pieces you want in your *vimrc*.

```
""""""""""""""""""
""" BASIC INFO
""""""""""""""""""
"
" Maintainer: AffanIndo
"
" Sections:
"    -> BASIC INFO
"    -> LEADER
"    -> PLUGIN
"    -> COLOR
"    -> GENERAL
"    -> MAP
"    -> STATUS LINE
"    -> MISC
```

* Unlike Bash, comment in *vimrc* started with `"` instead of `#`. This way, if you want to put a description, prepend it with `"` first.
* On the top we can see the title called `BASIC INFO` below that we can see the maintainer is myself. And there is sections in case you want to jump to them. For example, type `/MISC` so you'll search all word with `MISC`.
* Vim doesn't read this section so if you just want to copy the good stuff, leaves the stuff starting with `"`. But it is advised to leave a comment so you know the description of the command.

```
"""""""""""""""""""""""""
""" FIRST THING FIRST
"""""""""""""""""""""""""
```

* This is some command that must taken at the top. Or essentials as you might say. So, first thing first:

```
" Don't try to be vi compatible (must set first)
set nocompatible
```

* By default, Vim tries to be compatible with is predecessor. Initially this is a good thing since there are some people who still use Vi, but nowadays not many people use it, and some newer features and plugins might broke if there is still backward compatibility with Vi. That's why we turned it off 

```
" Don't wrap files
set nowrap
```

* Wrapping is when the text break lines when it reaches the end of the screen. This is a matter of personal taste, but I dislike wrapping on my code because it looks hella weird. I use break only when I use markdown.

```
" Encoding
set encoding=utf-8
```

* Utf-8 is a *font* setting so Vim able to show weird characters like `ß` or `я ё ю е`. We set this so Vim would be able to show a wide range of fonts and typefaces.

```
" Plugins essential
syntax on
filetype plugin indent on
```

* I installed several plugins, this is the must-have configs to have a plugin that works properly.

```
""""""""""""""
""" LEADER
""""""""""""""
"
" You should set leader before loading all plugins
```

* Leader key is an additional modifier key for Vim. On normal text editor there is `ctrl` and `alt` so you can do something like `ctrl+a` or `alt+z`. But in Vim there is a so called leader key, I use it for my additional command. For example for me to reset vim config I use `<leader>r` and not `ctrl+r` because Vim already has `ctrl+r` for some other command. This leader key can make your shortcut options wider.

* I use leader key for practically everything to make it different from Vim/OS command.

```
let mapleader=","
let g:mapleader=","
```

* You can set leader key to anything you like. The default is `\` but it is too far away from homerow so you had to stretch your pinky a little, that's why I use comma for my leader key because it is easy to reach. If the command says `<leader>z` then I type `,z`

```
" General leader map
nnoremap <leader><space> :let @/=''<cr> " Clear search
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>v <C-w>v<C-w>l " Split then move to the split
nnoremap <leader>n :bnext<cr> " Next
nnoremap <leader>N :bprev<cr>
nnoremap <leader>r :source ~/.vimrc<cr> " Reset/reload config
noremap <leader>s :!%:p<cr> " Source (execute) current file

" List all buffers
nnoremap <leader>b :CtrlPBuffer<cr>

" Toggle paste mode when you want to paste from outside source
set pastetoggle=<leader>p
```

* I set space to clear search. When you search using Vim, the matching words will be highlighted. This leader key is to clear the highlight.
* Then there is leader q, z, w for exit and saving. Some people use the built in comand but I find it is too slow when I just can type `,z` to save and exit. I use `ZZ` to exit sometimes, But it is 3 keystrokes instead of 2 (using leader). In Vim we try to use the most efficient command available.
* What do you do after creating a split? Most of the time you want to go to that split then edit stuff there, right? But Vim didn't move focus automatically so I create this leader key so Vim would create a **v**ertical split then move to that split.
* I use `n` and `shift-n` to go to **n**ext split or previous split.
* I use `r` to **r**eload/**r**estart Vim config.
* Then I use `s` **s**ource the file I am writing right now. This only works if there is a shebang line on the top.
* I use `ctrlp` plugin for Vim to open files, and it has built-in buffer list. So I use `b` to open it.
* Vim has paste mode. Sometimes when you copy a text from outside source, the file would have weird indentation, use paste mode to fix that.

* FYI I use this bindings on many programs. For example, in Vim I source the config with `<leader>r`, in tmux I use `<prefix>r`, and in i3 I use `<mod>r`. It is extremely convenient to have same bindings across your workspace.

```
""""""""""""""
""" PLUGIN
""""""""""""""
"
" List of plugins:
" 0. pathogen
" 1. auto-pairs
" 2. ctrlp
" 3. nerdcommenter
" 4. nerdtree
" 5. lightline
" 6. surround
" 7. repeat
" 8. emmet
" 9. fugitive
" 10. supertab
```

* On here I list the plugins I use. I use pathogen as my plugin manager so I don't have auto-download or something. I had to manually install it one by one. On every plugin's homepage there is installation instruction. So if you want to use pathogen, then go to the page then follow the instruction to use it.

```
" Pathogen
call pathogen#infect()
call pathogen#helptags()
```

* This is the commands to activate pathogen.

```
" CtrlP
let g:ctrlp_max_height = 50
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'
let g:ctrlp_working_path_mode = 'ar' " CtrlP scans through .git project
let g:ctrlp_max_files = 0 " Set no max file limit
let g:ctrlp_show_hidden = 1
```

* This is CtrlP plugin. I use it to open files quickly. Sublime Text 3 has this feature so I think it would be nice if I have this too. Press `ctrl+p` then you can fuzzy search files inside your project folder.
* Max height is the maximum lines CtrlP shows. If you don't like CtrlP take up your screen then set it to a low number.
* Custom ignore is the folder you want to ignore. For example, I don't need to open files inside node_modules and .git so I just disable 'em.
* Working path mode is the way CtrlP works. This is a bit confusing. `ar` means CtrlP will search through all folders until it stops at .git folder. Basically it search your whole git project directory.
* Max files is self explanatory.
* Show hidden is to set if you want to see hidden files or not. If you set it to `0` it means you can't see hidden files so you can't see dotfiles, .gitignore, etc.

```
" Nerdcommenter
let NERDSpaceDelims=1
```

* This is a plugin to batch-commenting codes. You can select the lines by visual mode then do a keystroke to comment/uncomment them.
* I like it because it utilize leader key, which I use a lot.
* Space delims is how many space between the comment and the text.
* For example, 0 delims means `ExampleText` will become `#ExampleText` meanwhile 0 delims means `# ExampleText`. I prefer the latter so I set it to 1.

```
" Nerdtree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git']
let g:NERDTreeWinSize=20
map <leader>f :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree
```

* NERDTree is a plugin to show project tree like text editor does.
* ShowHidden is used to show hidden files.
* Ignore is used to ignore certain files and folders so it won't show up.
* WinSize is the percentage how much NERDTree take up the space. I set it to 20 so it will take 20% of the screen
* Toggle NERDTree using `<leader>f` as in **f**iles.
* QuitOnOpen means close NERDTree when you opened a file if it set to 1. I set it to 0 because I want NERDTree to stay open when I open a file.
* MinimalUI is used to make NERDTree has minimal interfaces. By default there is several stuff clutter it like help message, etc. I know the shortcuts so I don't need those, that's why I use MinimalUI
* THe last line is a script to make NERDTree close itself if there is no other files. By default if I close a file, Vim will not close because there is still NERDTree buffer.

```
" Lightline
let g:lightline = {
    \ 'colorscheme': 'nord',
    \ }
```

* Lightline is a bar plugin similar to vim-airlines. I use Lightline because it is simple.
* The only command I use is colorscheme which is nord. I use this colorscheme for all of my terminal so it more integrated.

```
" Emmet-vim
let g:user_emmet_leader_key='<leader>z' " <leader>z<comma> to activate.
```

* Emmet require `<prefix>z<comma>` to activate. Because I use comma as a leader, I set the prefix to comma too so I just have to type `,z,`

```
"""""""""""""
""" COLOR
"""""""""""""
```

* Every person has their own colorscheme preferences. In my case, I prefer colorscheme nord. It has blue hues and I like it a lot.

```
" Monkeypatch for nord low contrast comment
augroup nord-overrides
  autocmd!
    autocmd ColorScheme nord highlight Comment ctermfg=103
augroup END
```

* There is one thing I don't like with nord, though. I can barely see the comment. The creator want the comment barely visible so we are more focused in the code than the comment. I want to see my comment clearly so I set this command.
```
" Color
colorscheme nord
set cursorline
```
* This is the standard command to set colorscheme.
* Cursorline is a command to highlight the line I currently at. Be wary though because it is ugly on default colorscheme. Only use this if you are using custom colorsheme.

```
"""""""""""""""
""" GENERAL
"""""""""""""""
```

* This is the main section of my settings. This is where the most common customization happens.

```
" Make vim save swapfiles, backups, and undofiles in .vim
" set swapfile
" set backup
" set undofile
" set directory=~/.vim/tmp//,.
" set backupdir=~/.vim/tmp//,.
" set undodir=~/.vim/tmp//,.
" Use this config if you don't want swapfiles and backups, at all.
set nobackup
set noswapfile
```

* If I have a lot of comment like this, most of the time it is a multiple settings that I turned off by commenting it. The real comment is the one start with a  capital, the next lines starts with `set` is just a setting that I didn't like.

* In this section I have 2 kind of settings, one is having swapfiles, backups, etc and the other one is disable all of them. I disable it so Commenting the top one and leave the bottom one. If you want to have it, then comment the bottom one and leave the top one.

```
" Show line number
set number
set relativenumber
```

* By default, Vim doesn't have line number on the left side of the screen like most text editor do. Use `set number` to add it.

* Some people like it and some don't. But I prefer to have relative number lines. It looks like this if activeted:

4  
3  
2  
1  
**43**  
1  
2  
3  
4  
5  

* It means I am on line 43. And line 44 is 1, line 45 is 2, etc. This numbers move too when I move the cursor. It may be looks weird, but in Vim you have to move fluidly. If I want to move to a specific line, rather than holding down `j` or counting how many lines it is relative to my cursor, I could just see the line number to see how far it si. I could delete lines, moving, doing stuff precisely because of that.

* If I need to move to specific lines. I can press `<number>G`. Like `46G` to arrive at the right destination.

```
" Show row and column ruler information
set ruler
```

* This makes the bottom bar shows additional information like current line and column.

```
" Backspace
set backspace=indent,eol,start
```

* I still don't know what this do. But all people suggest to add this because by default, backspace in Vim behaves strangely.

```
" Tab and indent
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
```

* When I press tab, Vim will insert 4 spaces. This is the command to do that.

```
" The /g flag on :s substitutions by default
set gdefault
```

* When you want to replace `foo` with `bar` globally you must do `:%s/foo/bar/g`. But with this setting enabled you just have to use `:%s/foo/bar`

```
" Search
set hlsearch " Highlight all search result
set smartcase
set ignorecase
set incsearch " Searches for strings as you type
```

* The `smartcase` and `ignorecase` will ignore the case unless you use it. So searching `asd` will search `asd` and `Asd`. But searching `Asd` will only search `Asd`.

* Incsearch is the fuzzy search. Instead of searching result when you press enter, Vim will start searching immediately along with you typing.

```

" Highlight matching brace
set showmatch
```

* If you have nested loop, it might be a little confusing to see which brace is which. With this enabled it will highlight the pair.

```
" No annoying sound on errors
 set noerrorbells
 set novisualbell
 set t_vb=
 set tm=500
```

* I don't need beeping sounds.

```
" Keep n lines off the edges of the screen when scrolling
set scrolloff=4
```

* When you holding down keys to scroll through the document. This setting will prevent your cursor to reach the bottom of the screen. The cursor will have some margin to the bottom so you can see the lines below the cursor.
* You can set this setting with very high number such as `9999` if you prefer the cursor to stay on the middle and the screen that move instead (like in Super Mario Bros lol! The screen move but the Mario still at the center.)

```
" Reverse the split behavior
set splitbelow
set splitright
```

* In Vim by default, horizontal means split from top to the bottom and vertical means split from left to the right. But this is confusing for me because in some program they didn't follow this behavior. This setting will reverse that.

```
" Lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase
```

* I don't know what is this for lol.

```
" Allow vim to hide modified buffers without abandoning them
set hidden
```

* In most text editors, opening a new file will open the file in a new tab. However in Vim, it will close the current file. By using this, the current file will be kept and you can still access it.

```
" Show last line
set noshowmode
set showcmd
```

* Vim has it's own status bar at the bottom. But I use a plugin so I disable the Vim ones.

```
" Show status bar
set laststatus=2 " Always show
```

* In Vim's status bar it will show the mode you are in. Like insert mode, normal mode, visual mode, etc. On the previous section I disable the mode showing but I keep the status bar because the status bar plugin need it.

```
" Add a bit extra margin to the left beside line number
set foldcolumn=1
```

* Use this if you feel the line number is too tight. It will loosen 'em up

```
" Don't redraw while executing macros (performance config)
set lazyredraw
```

* This one is a performance configuration. When we doing macro, we usually do it on bunch of lines. This setting will disable Vim from redrawing the screen each time we execute the macros, but redraw the screen only when the macros done instead.

```
" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·
```

* This to make some differences to the tab and spaces. Tab will be shown with `»`.

* Trailing space is a space at the end of the sentences. So if you have `ExampleText<space><space>` It will be shown as `ExampleText··`. This is very sueful since most of the time we will not noticed a space at the end of a sentence.

```
" Number of undo levels
set undolevels=1000

" Set how many history vim has to remember
set history=1000
```

* This set how many undo Vim will remember.

```
" Change vim split to full block
set fillchars+=vert:█
```

* If you open a split in Vim, it will show them as dashed lines. I don't like dashed line so I use ASCII full block.

```
"""""""""""
""" MAP
"""""""""""
"
" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert
```

* This is one of Vim's powerful aspect. You can configure. Every. Single. Command.

* This is a great aspect on Vim's configurability, by being so highly configurable, it leaves the user to use the command as it pleases. Want to use `ctrl+s` to save then run the linter then push to the Github? No problem. Want to use `ctrl+j` (why tho) to exit Vim? no problem. And below is my configuration.
* I didn't alter too much because I like the default Vim's command. And it is better to use it as is because of the muscle memory and so you can work everywhere without worrying about your settings.

```
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap Q <nop>
noremap ; :
noremap <C-d> :sh<cr>

```

* The one with `nop` is to disable the keys. I disable the arrow keys because Vim is not supposed to be used with arrows. Using arrows in Vim is a bad practice, if you still use them. Stop right now! and try `hjkl`.
* `Q` is a key to start `ex-mode`. I didn't understand it. But it is annoying when you want to quit or do some macros but you accidentally pressed `Q` so it doing some ex-mode-bullshit.

```
nnoremap <C-h> <C-w>h " Fast moving
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
```

* When you want to move the focus to another split, you have to use `ctrl+w` followed by direction. But this is so slow when you have to move a lot. So I use `ctrl+direction` to move.

```
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
```

* Disable arrow key for insert mode.

```
""""""""""""
""" MISC
""""""""""""
```

* This is the last section of my config. It contains some not-so-important settings that sometimes I alter and remove. So this is the place for nice configuration or hacks.

```
" Ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*
```

* This is to set some ignore files. Kind of like `.gitignore`. But since I use `CtrlP` this doesn't do much.

```
" Markdown support
autocmd BufNewFile,BufRead *.md set wrap
autocmd BufNewFile,BufRead *.md nnoremap j gj
autocmd BufNewFile,BufRead *.md nnoremap k gk
```

* These `autocmd`s is like *"Turn this stuff only when I open markdown"* (a.k.a writing this article).
* I set wrap because I only like it when I write lengthy document like this post. But I don't like it on code or dotfiles because sometimes it mess up the formatting.
* When you have wrap enabled, even though the lines is long and can span to several lines, pressing `j` or `k` will move to the next line (line 1 will go to line 2 even though line 1 has 10 lines). By using `gj` and `gk` you will have the expected behavior.

## Conclusion
* Vim is a great text editor that has a great modal type and great customizability. Hack your Vim into the text editor of your dreams and keep using it as much as you can :)
* But don't spend too much time configuring it into perfection because you got some work to do.
* Make sure to check my [dotfiles](https://github.com/affanindo/dotfiles) to get the most updated dotfiles since eventually I make changes to this config :)
* And that's it for today, until next time~



