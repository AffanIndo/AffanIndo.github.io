---
title: Cmus, a Lovely Terminal Music Player
description:
header: Cmus, a Lovely Terminal Music Player
---

![image](/img/cmus.png "cmus")

Hello guys, today I tried `cmus`, a terminal music player, usually I use Audacious for playing my music but now I decided to go all-cli because playing music are a simple task. I can just open a new tmux window and let the music play there.

What you need to know is, `cmus` use several window. Usually I only use window number 1, 3. You can access the windows just by typing the corresponding number. So if you want to go to window 1 just press `1` in your keyboard.

Here is the list of windows:
* 1 - Album views
* 3 - Playlist views

Probably you will use `1` the most. For now, the album views is empty, you need to add your music first. You can add your music folder by typing `:add ~/your/music/folder/path`. You can add folder or individual music files.

I don't quite like album views because my music folder is a jumbled mess and the music's metadata isn't right. So the album is messed up. I prefer `3` because it lists the files, not sort it based on the artist and the album. You can add it with the same command as in album views. But you can save the playlists you created by typing `:save playlistname` and load it with `:load playlistname`. This will save a text file in your home directory. Because I care about my home directory, I add prefix `.` to the playlist name so the file will be hidden. Like `:save .playlistname`

That is how do you add files to `cmus`. Now in album views:
* You can go up and down by pressing `arrow`
* Open the album folder by pressing `enter`
* Switch from album panel (left) to music panel (right) by pressing `tab`
* Select the file you want to play by pressing `enter`
* This one is a bit fuzzy. The command you use the most when playing audio is `z`, `c`, `v`.
* You can pan next/previous by 5 seconds by pressing `left/right arrow`
* You can pan next/previous by 1 minute by pressing `, or .`
* `z` and `b` is to play next audio track of previous audio track.
* `c` is to toggle pause.
* Then if you want the file to be repeated you can press `r`. If you see the bottom-right bar, there is a `r` meaning the file is going to be **r**epeated.
* If you want the file to be played randomly you can press `s`. It means to **s**huffle. The letter `s` is going to be in the bar as well if you press it. You will know if the file is going to be repeated or shuffled when you see it.

And I think that is all you have to know if you want to use `cmus`. See you next time!
