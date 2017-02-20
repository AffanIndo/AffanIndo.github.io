---
title: How to Use Project in Sublime Text 3
description:
header: How to Use Project in Sublime Text 3
---

In this post I will show you how to manage your project with Sublime Text 3. This text editor has a simple project management and I like it. Usually in IDEs you had to create whole project directory structure just to write a simple script, but this is not the case with Sublime Text 3. By the end of this post you can create a simple project in Sublime Text 3 and jumping between them very fast.

First of all I will explain how Sublime Text 3 handles the project. Basically Sublime Text 3 has *default* project, this means you can write right away without meddling around with this whole project features. On the past I've used this by opening all of my project folder in this *default* project. But this can become quite cumbersome when your project became larger and larger.

This is why we create our own project. Let's start with a screenshot.

![image](/img/sublime-manage-project/1-in-project.png "In a Project")

This is how it looks like if you are in project, notice there is the project name in the Sublime Text 3 title: untitled **(blog)** - Sublime Text 3

This means I am in **blog** project, and notice the difference with *default* project:

![image](/img/sublime-manage-project/2-not-in-project.png "Not in a Project")

As you can see from the images above, the title indicate the project we are currently in. And beside of the title, some of the options in Project Menu is grayed out when we are in *default* project.

If somehow you are in a project, hit that *Close Project* button. I do this very often, this is how you close a project. If you want an even easier way, you can just press `alt+p` to open the Project Menu then hit `c` to close the project.

In image 1 I am in *blog* project, if I close the project I will get into the *default project* a.k.a. blank project.

To add a new project, you only need to open a new folder in the *default* project then save as the `*.sublime-project` file.

To do this, first. From the *default* project, select *Add Folder to Project*.

![image](/img/sublime-manage-project/3-add-folder.png "Add Folder")

At this point, just browse your project folder. In this example I pick "python-script"

![image](/img/sublime-manage-project/4-select-folder.png "Select Folder")

Now sublime show the usual screen, but don't worry. Look at the Sublime title, it has your folder name. It means the folder already loaded.

![image](/img/sublime-manage-project/5-in-project.png "In Project")

To show the files in the folder, you can go to `View > Side Bar > Show Open Files` or use shortcut `ctrl+k ctrl +b`. Usually I use the shortcut because it is faster. Just hold down the `ctrl` key then hit `kb` then release the `ctrl` key. Done :)

![image](/img/sublime-manage-project/6-show-files.png "Show Files")

Now you the files already loaded. Let's save as the project files. Go to `Project > Save Project As...`

![image](/img/sublime-manage-project/7-save-project.png "Save Project")

Choose where do you want to save it. Usually I have a folder called *project* containing all of my `*.sublime-project` files. `*.sublime-project` file is a file containing list of your files and the configuration. When you want to open your project, just open this file :)

![image](/img/sublime-manage-project/8-save-project.png "Save Project")

Now you already saved the project files, you can open them by pressing `ctrl+alt+p`. This shortcut will bring list of project that you've saved. Select them then Sublime will change the project for you.

![image](/img/sublime-manage-project/9-select-project.png "Select Project")

Now we have reached the end of the tutorial. What do you think, managing project in Sublime Text is easy, right?