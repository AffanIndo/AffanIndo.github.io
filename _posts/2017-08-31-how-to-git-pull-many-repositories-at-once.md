---
title: How to Git Pull Many Repositories at Once
description:
header: How to Git Pull Many Repositories at Once
---

![image](/img/git-pull.png "Test")

There is a day where you want to sync all of your Git repository from Github. For example when you've been offline for quite some time, but `cd`-ing to every folder then do `git pull` is a tedious work. Today I will share how to use bash script to automate that. To save your time, here is the command. Read the description below if you want the full explanation.

```
for d in *; do pushd $d; git pull; popd; done
```

Just do that script in your terminal then bash will do the rest for you. Here are the explanation if you want to know what is going on.

1. `for d in *; do`
    This is the *for loop* in bash. If you are not familiar with this, for loop is the way to iterate to each item, so it is similar to *forEach()* in JavaScript. This way, we can do stuff to each item in a list. The list of folder is `*`.

    In this command, we create a variable `d` (we can call the variable by saying `$d` in bash. This way of variable is similar to PHP, you just have to put the dollar sign everywhere.)

    So I want to do stuff with each folder in this directory.

2. `pushd $d;`
    `pushd` command is looks like cd, except it is stack based, when you want to go to previous directory, simply remove the current stack so you land into the previous stack.

3. `git pull;`
    Now you are inside the directory, just `git pull` it!

4. `popd;`
    Remember that we using pushd? Now if we want to go back to previous directory, simply remove the current stack by issuing this command, now you land into your previous folder.

5. `done`
    So the script do git pull to each folder in current directory, after the script is done, use `done` to stop the command.

And that's it! I hope this is useful for you, and no more time wasted just because you wanted to update all repositories :)

Happy programming!