---
title: Install Arch Linux
description:
header: Install Arch Linux
---
![image](http://www.unixstickers.com/image/cache/data/stickers/archlinux/Arch.sh-600x600.png "Arch Linux")


Hello everyone! lately I've been busy trying out Arch Linux, previously I've tried i3, now isn't it normal if I up the game a little bit?

When Installing Arch I visited so many websites because most of them is not complete. Now I will just summarize all of them in this blog posts so I don't need to visit all of them again, this post will contains all commands I need.

# Check Internet Connection
* Check internet connection by `ping google.com`. 
You NEED working connection when installing Arch Linux (sorry for people that has limited internet quota). Arch installation support **wired** connection right away so you can use your internet cable or even tethered internet from your smartphone. If Google gave response to your ping, then you are good to go. Otherwise, check your internet connection.

# Create Partition
* Make sure there is no partition table. Check it by `fdisk -l`
* If partition table already exists, use `sgdisk --zap-all /dev/sda`
* Create partition using `cfdisk` > Select `dos` label > Select `new` > Insert number desired (ex: `18G`) > Select `primary` > Hover `/dev/sda1` > Select `bootable` to mark it. This is going to be our root partition.
* Still in `cfdisk`, create swap partition > Hover `Free space` > Select `new` > Insert desired number > Select `primary` > Select `type` > Select `Linux swap / Solaris`. This is going to be our swap partition.
* Create home partition > Select `new` > Select `Free space` > Insert desired number > Select `extended` > Select `new` > Select `Free space` > Insert desired number. I didn't want separate `/home` partition so I skip this step.
* Select `write` > Select `yes` > hit `enter`
* Press `q` to exit `cfdisk`
* Verify that you already have your partition table setup by typing `fdisk -l`

# Format the Partitions & Activate the Swap Partition
* Format `root` and `home` partition using `mkfs.ext4 /dev/sdaN` where N is the partition number. From the `fdisk -l` we know that `root` is `/dev/sda1` so use `mkfs.ext4 /dev/sda1`. Now find out which number is your `home` partition.
* Format the swap partition with `mkswap /dev/sda2`
* Activate the swap partition with `swapon /dev/sda2`

# Install Arch Linux
* Mount `/dev/sda1` to `/mnt` by typing `mount /dev/sda1 /mnt`
* Install the base packages by typing `pacstrap /mnt base base-devel`. When there is a confirmation menu, press `y`. In some tutorial it didn't list `base-devel` because actually you only need `base`. But most of the time when using Arch Linux, you will need it when compiling, using AUR, etc. You can omit it if you want but I recommend you to use the command as is. This command take the longest time, the speed is based on your connection. So take a seat and grab your coffee.
* Generate fstab file by typing `genfstab /mnt >> /mnt/etc/fstab`. Fstab is a file that system read to determine which paritition to load when booting.
* Check if the fstab file is right by typing `cat /mnt/etc/fstab`

# Arch Linux Setting 
* Activate the root by `arch-chroot /mnt`
* Configure which language for system by typing `nano /etc/locale.gen`.
* Search then uncomment `en_US.UTF-8` by removing `# ` at the beginning of its line.
* Save it by typing `ctrl+x` then `y` then press enter.
* Activate it by typing `locale-gen`
* Edit locale setting by typing `nano /etc/locale.conf`
* Type `LANG=en_US.UTF-8` then save the file.
* View the time zone lists by typing `ls /usr/share/zoneinfo`
* Since I live in Asia I will list Asia folder by typing `ls /usr/share/zoneinfo/Asia`
* I live in Indonesia (+7) so I use Jakarta time by typing `ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime`
* If above command output an error because the file already exists, remove the file first by typing `rm /etc/localtime` then do the command above again.
* Activate the clock by typing `hwclock --systohc --utc`
* Change the root password by typing `passwd` then type the password you want.

# Network Setting
* Change your computer name by typing `nano /etc/hostname`. For example you can insert `johncomputer` in here, then save and exit.
* Enable `dhcpcd` so you will auto-connect to wired internet on startup. To enable it, type `systemctl enable dhcpcd`
* Install `dialog` and `wpa_supplicant` by typing `pacman -S dialog wpa_supplicant`

# Install GRUB
* Grub is required to make your system aware which OS to select during startup. Install it by typing `pacman -S grub os-prober`
* Install GRUB on your harddisk by `grub-install /dev/sda`
* Then type `grub-mkconfig -o /boot/grub/grub.cfg`

# Restart
* Exit from chroot first by typing `exit`
* Use command `reboot` to restart/reboot your computer.
* Login by username `root` and password that you set earlier.
* Now your Arch system already installed :)

> The tutorial above translated from [this blog](https://jagongoding.com/blog/post/tutorial-cara-install-arch-linux)

# Post-installation
* Install essential package by typing `pacman -S dialog wpa_supplicant wpa_actiond ifplugd sudo zsh`. Below is the explanation on each packages.
- `dialog` - A tool to display dialog boxes from shell scripts.
- `wpa_supplicant` - A utility providing key negotiation from WPA wireless networks.
- `ifplugd` - A daemon which brings up/down network interfaces upon cable insertion/removal.
- `wpa_actiond` - Daemon that connects to wpa_supplicant and handles connect and disconnect events.
- `sudo` - Tool to make normal user able to have temporary super user privileges.
- `zsh` - A bash replacement. I prever `zsh` over `bash` because it has so many features.
* Add a new user because we will not use Linux in root environment because it is very dangerous. `useradd -m -G wheel -s /usr/bin/zsh username`. Replace `username` with username you want.
* Activate sudo for the user created by typing `visudo`
* Find `# %wheel ALL=(ALL) ALL` and uncomment it. Then save and exit by typing `:x`
* Change the password for the new user by typing `passwd username`. Replace `username` with username that you just created.
* After this, boot to user then start install stuff that you want :) When you log in as user. Don't forget to prepend `pacman` with `sudo` because it needs root privileges.

# Install AUR and Yaourt
* Open your /etc/pacman.conf then add this text at the bottom:

```
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
```

* Refresh pacman and install yaourt by typing `pacman -Sy yaourt`

# Install X and i3
* X is a package that enable graphics in your PC, so you will not always use CLI. Install it by typing `pacman -S xorg xorg-xinit`. Just use all default option.
* I use i3 for my DE, if you want it type `pacman -S i3 dmenu`. If you don't want it, then stop reading this and go to next section.
* Edit `~/.xinitrc` and add `exec i3` in it.

>  The article above referenced by [this blog](http://tutos.readthedocs.io/en/latest/source/Arch.html)

# Install Another Desktop Environment (XFCE)
* I choose XFCE if you don't like tiling WM. But if you really want another DE like GNOME, Unity, KDE, then search other tutorial on how to install that.
* Install XFCE by typing `pacman -S xfce4 xfce4-goodies lightdm lightdm-gtk-greeter`
* Enable lightdm by typing `systemctl enable lightdm`

# Conclusion
Installing Arch Linux is hard. But after this, the rest is easier than anything. Just `pacman -S blahblahblah` stuff. To do list for you:
* search how to use `pacman`. There are many options. search what `-Syu`, `-Syyu`, etc. does.
* Setting up network.
* Setting up sound.
* Set up multimedia keys such as the volume and brightness button.
* Install stuff that you want :) For example, after this, I install `pacman -S tmux vim wget ttf-dejavu rxvt-unicode git ranger feh stow xorg xorg-xinit i3-gaps i3status dmenu`

> The tutorial above has some parts from [this article.](https://medium.com/avalanche-of-sheep/your-guide-to-a-damn-light-arch-linux-with-i3-and-text-apps-8bc576c502b9)

And that's it. Now you got fully working Arch desktop. Bye~
