---
title: Bypass ISP Block
description:
header: Bypass ISP Block
---

Some websites are blocked by ISP. This is because the websites may contain pornography, gambling content, or malicious websites. But some ISP took it so far, my ISP block Reddit and Vimeo. I don't think these websites should be blocked so in this post I will share how to skip this bypass.

**Your ISP (maybe) still be able to see which websites you visited so don't use this trick for websites that is really should be blocked, I don't want to be responsible if FBI knock on your door because you visit ThePirateBay or something.**

# How It Works

Before we get into the tutorial, it is a good idea to know how this work first.

Every websites has it's own address. For example, Reddit is `151.101.53.140`. But it is very hard to remember this numbers. That's why there is something called DNS. DNS is the thing that convert the website address (blahblahblah.com) into the number address. But since we use the ISP DNS, the ISP can redirect the websites if your browser asked a blocked address to the DNS.

# Tutorial

Tutorial, yay.

There are several ways to bypass this, for example using proxy service. But by using these, the speed is limited and you can't do streaming or login.

Another way is VPN, but good VPN is paid so if you want freebies, VPN is not for you. However using VPN is safe because your ISP can't see what you are doing because VPN create the tunnel to safe yo' ass.

So my reliable answer to this, is write the IP address manually, we can do it by writing the `hosts` file. In Windows the `hosts` file is located at `c:\windows\system32\drivers\etc\hosts`. In Linux it is `/etc/hosts`.

Open this files using administrator right. In Windows you open notepad as administrator. In Linux you open your favorite text editor using `sudo`.

Then add the IP. You have to rely on Google for this. Just search `blahblahblah.com IP` and several websites will tell you the ip for that website. For example, I put this for Reddit:

```
151.101.53.140 reddit.com
151.101.53.140 www.reddit.com
198.41.209.141 http://out.reddit.com
```

Just add that and your browser will works :)

# Conclusion

That's it.

It is pretty easy to bypass blocks. But remember this: **With Great Power Comes Great Responsibility**
