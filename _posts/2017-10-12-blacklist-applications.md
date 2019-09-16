---
title: Blacklist Some Applications from Installing in Ubuntu
description:
header: Blacklist Some Applications from Installing in Ubuntu
---
I don't use Thunderbird. But there are many metapackages that list Thunderbird as their dependencies. To prevent Ubuntu from installing some packages that you don't want, follow this tutorial. Be careful and make sure the package that you blacklist is not a critical dependencies for that metapackages.

You can add the configuration file to `etc/apt/preferences.d/` to add some configuration about application you want to disable. In this case, we want to disable Thunderbird.

`cd` into `etc/apt/preferences.d/` and create a new file, since I use Vim, I use command `vim some-random-name`. The file name doesn't matter, the content inside does. For example the filename is `disable_thunderbird` or `disable_stuff`

This is the content:

```
Package: <nameofpackage>
Pin: source *
Pin-Priority: -1
```

* You can put multiple package name in there. Separate the name with space. So it goes like this: `Package: package1 pakage2 package3`
* The original source said `Pin: origin ""` but in Ubuntu 16.04 it doesn't work. However `Pin: source *` works.
* `Pin-Priority: -1` means it is disabled (negative number is the man)

And that's it! I hope this article can be any use to you.

See you next time!
