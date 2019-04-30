---
title: Markdown Reference
description:
header: Markdown Reference
---

**put a whiteline before the image**

![image](/img/img-test.png "Test")

**put a whiteline after the image**

## Test Section 1

Put a whiteline after subtitle. Put double space to break into newline without double enter.  
Lorem ipsum dolor sit amet, [this is a link](http://www.example.com) elit. Totam quasi maxime quas repudiandae nam id temporibus, at et non officiis consectetur voluptate deserunt officia minima placeat tempore illum asperiores quo assumenda praesentium? Facilis libero error ratione doloribus debitis delectus asperiores minima ab velit quam breakline with 2 spaces.  
Natus ea, vero totam recusandae autem, corporis minima, animi eos perferendis omnis ut asperiores magni tempore. Repellendus aliquam saepe perspiciatis laborum, excepturi sit libero dignissimos debitis eaque itaque quos, accusantium sed amet tempora temporibus perferendis possimus, quisquam minus fuga! Laudantium, tenetur, consectetur! Quas itaque hic consequatur accusamus consectetur, quia odio eos amet quasi pariatur! Ratione, similique.

# This is h1
## This is h2
### This is h3
#### This is h4
##### This is h5
###### This is h6

> Create blockquotes using "> "

Put backward tick `to inline code`

Don't forget to double space if you want to write inline code in next line  
`like this`

```
triple backward tick to multiple line code. Put whiteline before and after
```

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

## Code Syntax Example
To insert highlight code inside of a post, it's enough to use some specific tags, has directly described into the [Jekyll documentation](http://jekyllrb.com/docs/templates/#code-snippet-highlighting). In this way the code will be included into a ``.highlight`` CSS class and will be highlight according to the [syntax.scss](https://github.com/mojombo/tpw/blob/master/css/syntax.css) file. This is the standard style adopted by **Github** to highlight the code. 

This is a CSS example:
{% highlight css linenos %}

body {
  background-color: #fff;
  }

h1 {
  color: #ffaa33;
  font-size: 1.5em;
  }

{% endhighlight %}

And this is a HTML example, with a linenumber:
{% highlight html linenos %}

<html>
  <a href="example.com">Example</a>
</html>

{% endhighlight %}

Last, a Ruby example:
{% highlight ruby linenos %}

def hello
  puts "Hello World!"
end

{% endhighlight %}

