---
title: All About Compression
description:
header: All About Compression
---

Sometimes file compression on terminal is kind of confusing because all of the tools and they have different command so it is hard to rememberthem. In this post I will summarize them. So if you want to do some compressing and stuff you can refer to this blog as reference.

# Easy Way

Almost everyone have this in their `.bashrc` or `.zshrc`, but if you don't know about this script it would make your life 100x easier. Just put this in the files mentioned earlier.

```
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1   ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1    ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}
```

After you put this in your `.bashrc` or `.zshrc` then just do `extract <filename>` and the file will be extracted :)

## Zip

**Extracting a Single Zip File**  
`unzip <filename>`

**Extracting a lot of Zip Files**  
`unzip '*.zip'`

**List Stuff Inside a Single Zip File**  
`zipinfo -1 <filename>`  
Note: That's number 1, not letter l or letter i. Several fonts has similar glyphs for these letters so pay attention to them.

**List Stuff Inside a lot of Zip Files**  
`unzip -l '*.zip'`

Note: Notice the quotation mark surrounding the `*.zip`. The command will not work without it because `unzip` supported it's own internal globbing so you can just use it instead of creating for loop. You can escape the asterisk too like so `unzip -l \*.zi`.

**Deleting a File from a Single Zip File**  
Use this when you, for example, want to delete `readme.txt` from a single zip file.  
`zip -d <filename> "readme.txt"`

**Deleting a File from a lot of Zip Files**  
I got 100 zip files with readme.txt inside several of them. It is painful to check them one by one and then delete them. I use this command to delete all `readme.txt` inside zip file that has them. If they don't have it then the script will spew an error but your zip files intact.  
`for i in *.zip; do zip -d $i "readme.txt"; done`  

**Archiving a Single Zip File**  
`zip <filename> <targetfile>`  
Note: Unlike a lot of other software, when you use `zip` the target file is last. So you give the zip file name first then you put the file you want to be archived last.  
Example: `zip MyGame.zip *.exe` This will archive all `*.exe` in the folder into `MyGame.zip`

**Archiving a lot of Files into Their Own Zip Files**  
Use this if you want to archive each of them individually, so `one.exe` and `two.exe` will become `one.zip` and `two.zip`, both of them will not be archived together in the same file.  
`for i in *.exe; do zip $i.zip $i;done`

## Conclusion

That's it for now. I add this article because yesterday I was doing a lot of dirty zipping files so if I summarize those 1 hour of googling it might help you all :) until next post!
