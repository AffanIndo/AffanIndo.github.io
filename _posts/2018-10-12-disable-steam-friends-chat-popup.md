---
title: Disable Steam Friends & Chat Popup on Linux
description:
header: Disable Steam Friends & Chat Popup on Linux
---

The new Steam Chat is here, but every single time you open Steam, it popup right in front of your face. I find this behavior annoying. Here's how to disable it.

1. `cd /usr/share/applications/`
2. `sudo <your text editor> steam.desktop`
3. Find `Exec=/usr/games/steam %U`
4. Append that line with `-nochatui`, `-nofriendsui`, and `-silent`
5. Now, it looks like this: `Exec=/usr/games/steam %U -nochatui -nofriendsui -silent`

Save the file, and now it will never popup anymore.

## References

* https://www.pcworld.com/article/3293009/gaming/how-to-stop-new-steam-chat-friends-list.html
* https://www.reddit.com/r/Steam/comments/91rphf/how_can_i_disable_friends_list_from_popping_up/
