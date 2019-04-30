---
title: How To Selection Screenshot Whole Page Firefox Without Add-ons
description:
header: How To Selection Screenshot Whole Page Firefox Without Add-ons
---
On the past I've used Firefox's Add-ons to capture the whole page, or even using a service like web2pdf. But this is no longer necessary, because in newer versions of Firefox there is a screenshot tool built-in. You just need to know where to look.

Most tutorial I've seen show that you can invoke the screenshot in the Firefox Command Line or something, but it will grab the whole page. In this tutorial I will show you how to just capture region of the page (kind of). This is the result:

![image](img/firefox-screenshot/moz-result.png "Result")

I captured the whole page of Imgur, but I can do that without capturing the sidebar. To do this, you don't need to capture the whole page then manually crop it. This is how you do it.

![image](img/firefox-screenshot/moz-step.png "Step-by-step")

1. Open the Web Developer Tools by pressing `ctrl+shift+k`. Yours might have white background, I already customize mine so it have dark background, so don't be afraid if yours doesn't look like mine. Pick an element manually by pressing the button I've mark as number 1, the one on the top left corner of the Web Developer Tools. Pick an element on the page you want to capture, if you can't find the frame, just pick an item then pick the parent element until it highlight the frame you want to capture.
2. Right click on the element you want to capture as I've mark as number 2.
3. Select `Screenshot Node` to capture the element.


And congratulations! Now you can screenshot just an element of a website :) No need to manually select the region you want to screenshot.

>Tips: Make sure to zoom the page as big as you can first so the quality of the screenshot is better.

![image](img/firefox-screenshot/moz-quality.png "Quality")