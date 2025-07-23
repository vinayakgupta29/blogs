---
layout: post
title:  "Setting up Hyprland with Arch"
date:   2025-07-05
author: Vinayak Gupta
categories: [Tech, Arch Linux,Hypland ]
---

# Introduction 

My initial arch setup was with KDE and I loved it for a good 6 months untill I laid my curious eyes saw _Hyprland_... Oh boy... 

There's no looking back to that... First I tried setting it up with KDE so that I can switch between session on login just like
every other normal guy. But for some reason my Breeze theme in SDDM was not working and I tried everything I could find on the 
Internet to get it working but i just couldn't so my next best bet was to get it done by completely removing KDE from my system 
and just keeping Hyprland. 

In the first iteration I got hyprland working from the terminal or the TTY but the application menu was not available. And I 
removed KDE completely from the system. But didn't removed it's config files. And regreted my decision immediately because 
configuring Hyprland is not done with settings menus but rather by some config files. And this is the true DIY and minimalist 
experience you can get if not opting for Gentoo or Slackware Linux. 

But as soon as I started getting things in order I started migrating things to a much more minimal setup. and I began setting up 
my configuration in a dotfiles folder and symlinking it to the required dir so that I'd have a centralized and managed work for 
my config for each application. And after tempering with almost all available file managers from Dolphin to Nautilus to Nemo to
 Thunar.

Terminal based File Managers from Ranger to Yazi, Terminal Emulators from Konsole to Gnome terminal to Ghostty, Alacritty, 
to Kitty. Menus from Wofi to Rofi. PowerMenus from various ones of github to a custom one on Rofi. Text Editor from Nano to Vim to
Feather and Kate. and IDE's from VS Codeium to VS Code to Emacs to NVIM. Greeters from SDDM to GreetD and many more. 

After three months of tempering I finally got my configuration the way I wanted it to be... so now what remains is just 
collecting them all in a dotfiles folder and link them to their required Dirs and push the dotfiles to remote git. 

So if anyone is interested they can look for my dotfiles/Hyprland Config on the link [Dotfiles](https://github.com/vinayakgupta29/dotfiles)...


If you want to get the exact same setup then you could use the install.sh script to install all the packages and sym link all 
the config files to their required location. And you can always edit it as you want... 
After all Linux is the definition of freedom so tweak it as you like and use it as you like...
