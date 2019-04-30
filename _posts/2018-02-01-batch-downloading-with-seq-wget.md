---
title: Batch Downloading with Seq & Wget
description: 
header: Batch Downloading with Seq & Wget
---

Usually I do web scraping in Python, using BeautifulSoup and Requests I am able to download 'em all. But today I wanted to scrape something simple, just images with simple naming pattern.

`website.com/folderA/folderB/image00.png`

until...

`website.com/folderA/folderB/image25.png`

As we can see, this naming difference is the number only, 00 to 25. At first glance, I think I can use `seq` to easily create the number but it doesn't that simple because the number start with 0. 01, 02, etc.

The solution is simple, really. All you need to do is add `-w` to `seq` so `seq` will match all of the digit's width.

The final command is

```
for i in `seq -w 00 25`; do wget website.com/folderA/folderB/image$i.png; done
```

1. This will create a for loop to count from 00 to 25
2. We supply these numbers to wget by inserting `$i` at the link
3. You use backward tick at seq, not forward tick
4. Don't surround the link with tick or double tick because wget will treat `$i` literally. We wouldn't want that.

And that's it :) A really simple image scraper. Thanks for reading!
