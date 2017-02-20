---
title: Simple Python Server
description: 
header: Simple Python Server
---
Today we will learn how to create a simple HTTP server with Python. Please note that we will use Python 3 on this tutorial.

> "$ " indicate that I wrote the command on my terminal. If I wrote "$ python", just write "python" on your terminal.

Open your terminal and `cd` to the directory you want.

`$ cd /home/website/project1`  
`$ python -m http.server 8080`

Description:
- `-m` means you want to use a function from a module. We use it on this command because we want to use HTTP server from built-in http.server module.  
- `8080` is the port. It means we can access the server by typing adress `8080`. You can use any number you want, like 9999 for example.
- On Linux if the command not working, you can add `sudo` at the beginning of the command. `$ sudo python -m http.server 8080`. But this is not advisable as it open up vulnerabilities.
- You can't use your terminal while the server is running. But if you want to, you can run the server on the background by adding `&` at the end of the command, `$ python -m http.server 8080 &`.
- If you use python 2 instead of 3, replace `http.server` with `simpleHTTPServer`.

Then voila! the server is working!

To access the server, go to your browser then type  
`127.0.0.1:8080` or `localhost:8080`

You can exit the server simply by closing the terminal or by pressing `ctrl+c`. If you ran the program on the background use  
`$ kill -9 <process number>`.
