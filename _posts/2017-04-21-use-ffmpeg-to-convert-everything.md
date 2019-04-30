---
title: Use FFmpeg to Convert EVERYTHING
description:
header: Use FFmpeg to Convert EVERYTHING
---
![image](/img/ffmpeg.png "FFmpeg")
Today I met an awesome tool called FFmpeg. It is a tool to convert a file format to different format. At first I was sceptical by it's cli design, I've heard there were so many great file converter but I stumble upon this when I edit some files with [audacity](http://www.audacityteam.org/).

FFmpeg being a CLI software means I can pull it out everytime I open my terminal (which is 24/7) so I can do quick command to convert file A to file B. At first I only use it to convert some MP4 to MP3, but then it can even convert MP4 to every single frame in jpg/png, how great is that, huh?

This post is to combine all command that I used frequently and for backup too, in case I forgot the command.

## Checking File Info
`ffmpeg -i filename.mp4`  
You can change the filename.mp4 to any file you want to check. Usually you add output option if you want to convert it to different format, but if you didn't include it, you will check the file. I don't understand any info listed, but I think it is good to put it in this article in case you are some kind of file format savvy.

## Simple Convert
`ffmpeg -i filename.webm filename.mp4`  
`ffmpeg -i filename.mp4 filename.mp3`  
FFmpeg has so many options, but you can blank it in case you don't know the options. Sometimes when I downloaded a video from internet, it is either webm or mp4. So I convert the files using this command. You can convert any file format to other file format too!

## Convert with Specified Quality
`ffmpeg -i file.webm -qscale 0 file.mp4`  
It is the same with simple convert but we can specify the output quality by using `qscale`. `qscale` is a scale from 0 to 10 specifying the output quality from 0 is the best to 10 the worst. So by using `-qscale 0`, the output will not decrease the quality.

## Video to Audio
`ffmpeg -i filename.mp4 -b:a 320000 filename.mp3`  
You can change the 320000 t0 128000, 256000, or 320000. This is the command to extract or convert audio to video AND you can set the bitrate too. Note the bitrate is in kbit/s so you use 128000 for 128kbit/sec, etc. If you has small storage, you can use 128000 for 128kbit/sec option. But if you have plenty storage, you can use 320000 for 320kbit/sec. The size can matter very much sometimes. When I use 128000 the file size is 60 MB but when I use 320000 the file size is 110 MB.

## Video to Images
`ffmpeg -i filename.mp4 filename%d.jpg`  
This is to extract video files to individual frames. the %d indicates number so it will number your files automaticly.

## Batch Converting
`for i in *.webm; do ffmpeg -i "$i" "${i%.webm}.mp4"; done`  
This is the killer feature for me, but this command work on unix terminal only, so windows user can't do this command even tho I can do it because I use terminal emulator. This is my favorite command because I can convert ALL file to different format. So I have a folder with mixed content mp4 and mp3. I can specify that I want to grab all mp4 and convert it to mp4. It is nice if you have many videoclips that you want to convert to audio.

My txt files:

```
Batch convert
    for i in *.mp4; do ffmpeg -i "$i" "${i%.mp4}.mov"; done

Simple convert
    ffmpeg -i file.mp3 newfile.wav

Video > Audio
    ffmpeg -i filename.mp4 -b:a 410000 filename.mp3
You can use 128000 192000 256000 32000 410000

Video > Picture
    ffmpeg -i file.mp4 file%d.jpg

Video > Video
    ffmpeg -i file.webm -qscale 0 file.mp4
-qscale 0 is scale 0-10 with 0 being the best. When we use 0 in this script meaning there is no difference in the quality (the best)

Gif > Video
    ffmpeg -i animated.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" video.mp4

Video > Gif | r = frame/milisecond | delay = delay to next image
Normal Speed
    ffmpeg -i input.flv -vf scale=320:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 10 -loop 0 - output.gif
2x Speed
    ffmpeg -i input.flv -vf scale=320:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -loop 0 - output.gif
1/2 Frame 2x Speed
    ffmpeg -i test.mp4 -vf scale=800:-1 -r 5 -f image2pipe -vcodec ppm - | convert -delay 10 -loop 0 - output2.gif
Batch
    for i in Best*.mp4; do ffmpeg -i "$i" -vf scale=320:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 10 -loop 0 - "${i%.mp4}.gif"; done

Joining
Create mylist.txt:
    for f in ./*.mp4; do echo "file '$f'" >> mylist.txt; done
No need to escape space
Then use command:
    ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4
-safe 0 di skip aja kalau pakai relative path

Replace Audio in a Video
    ffmpeg -i v.mp4 -i a.wav -c:v copy -map 0:v:0 -map 1:a:0 new.mp4
If the audio is longer than the video, you will want to add -shortest before the output file name.
Not specifying an audio codec, will automatically select a working one. You can specify one by for example adding -c:a libvorbis after -c:v copy

Cutting
    ffmpeg -ss [start] -i in.mp4 -t [duration] -c copy out.mp4
Here, the options mean the following:
-ss specifies the start time, e.g. 00:01:23.000 or 83 (in seconds)
-t specifies the duration of the clip (same format). 

Compressing
    ffmpeg -i input.mp4 -vcodec h264 -acodec mp2 output.mp4
You can use mp2 mp3 aac

Mute Audio
    ffmpeg -i example.mkv -c copy -an example-nosound.mkv

Mute Audio No Reencode
    ffmpeg -i example.mkv -vcodec copy -an example-nosound.mkv
```

Phew, that was plenty explanation. I hope this will makes you understand FFmpeg better. Have a nice day!
