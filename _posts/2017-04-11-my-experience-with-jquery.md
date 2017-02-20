---
title: My Experience with jQuery
description: 
header: My Experience with jQuery
---
![image](/img/jquery.png "jQuery")
Ah.. jQuery, the bread and butter of front end development. Let me tell you a story. As all of you know, I learned programming from [Codecademy](http://codecademy.com/), I took several course there, mainly python, javascript, html and css. After I finished my javascript course, Codecademy suggest me to took jQuery lesson. So I took it, but it went horribly for me. There are so many dollars. Dollar here, dollar there, dollar sign. I was like, what the hell? I thought jQuery is javascript? not PHP?. And so I think of that until... today.

Today I watched tutorial by (Wait, I forgot the name, gonna link them after I post this). He made a course about jQuery + AJAX though the only thing I understand is jQuery lesson. He taught jQuery with passion, you know? He said jQuery is SUPER fun so it took my interest. And I watched all of his jQuery lesson videos (like.. 6 videos?). It was the best video I've ever watched. I don't know what should I do if I don't know jQuery, it makes interactive websites VERY easily.

He summarized the part where I'm confused about, for example I always confused about the top part of jQuery code  
```
$(document).ready(function() {
    CODE STUFF
});
```
And he said that it is just the part that tells jQuery to wait for the **document** to get **ready** first before it execute the **function**. And it can get even shorter!  
```
$(function() {
    CODE STUFF
})
```

That was the hardest part of jQuery that you have to remember. Next part is SUPER fun! he said. And it is! Inside the function I can put anything I want and do stuff about it very easily. For example if I want to hide `#panel1` I can just type  
`$("#panel").hide();`  
If I want to show it, I can just type  
`$("#panel").show();`  
What if I want to do so many stuff at once a.k.a animating it? This is the part where jQuery get very interesting. You see, jQuery allows you to chain command as long as it is before semicolon. So I can just type  
`$("#panel").hide().show().hide().show();`  
See? it is very easy to animate stuff using jQuery. I remember on the past I learned DOM forcefully but it didn't end very well, I can't even do it by now because I always confused about getElementByID or stuff like that. Using jQuery I can just put dollar sign and then reference the ID.

What if I want to make the animation longer? Easy! just put time (in milisecond, so 1 second is 1000, 2 second is 2000, etc).  
`$("#panel").hide(3000);`  
Boom! Easy way to animate stuff. The fun doesn't end there! because there are so many options that you can use.  
```
delay()

hide()
show()
toggle()

slideDown()
slideUp()
slideToggle()

fadeIn()
fadeOut()
fadeToggle()
```

Very easy and super fun (woah, I sound like him already lol). You can even change the css, or linking them with button. So when user click on the button, it can trigger the jQuery actions.

Welp, I think I should stop there, didn't want this blog post turning into jQuery manual haha. Anyways jQuery is fun and easy so you should check it out!, those guys explained it better than me so check their videos!

And that's it blog post for today! I hope you enjoy it.

Happy Programming!