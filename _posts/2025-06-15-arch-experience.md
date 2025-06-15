---
layout: post
title:  "Why I use Arch?"
icon:   arch-linux
date:   2025-06-15 10:12:46 +0530
author: Vinayak Gupta
categories: [Tech, Linux, Arch]
---

## Table of Contents

- [Introduction](#introduction)
- [Major Reasons to pick Arch over every other Distro](#major-reasons-to-pick-arch-over-every-other-distro)
- [DiY](#diy-approach)
- [Fire](#fire)
- [Experience with Arch](#experience-with-arch)
- [End Thoughts](#end-thoughts-)

## Introduction

![desktop]("/blogs/assets/images/desktop.png")
In the section of the population that use computers, Linux users are a very fringe minority. Since most of us get a new Laptop or the PC/Desktop we get in offices and Schools are operating on Windows.

For many people that are not deep into technology computer means Windows. Yeah, there is Mac but it's price tag deters most of the people and companies from it. And I wasn't untouched by the same reality. My very first Laptop I got during the First year of my Engineering degree is a Windows.

For many people including me windows was able to anything I could want from a computer to do.

- Want to write Project Report : you've MS Word
- Want to work some Number : you've MS Excel
- Want to make a Presentation : you've MS PowerPoint
- Want to learn coding : VS-Code and Visual Studio is there to help you

For a non-tech savvy person windows does almost everything they'd want a computer to do for them. So for 3 years of Engineering I too was comfortable with it.

But as my knowledge and interest in computer gotten bigger I began leaning towards Linux, because when you deploy any app on the server most of them have Linux as their OS. And around this time I was also getting comfortable with CLI and the Terminal. I began to fear it less and less.

And then came Windows 11 and it's fanatics that made my life more complicated than it has to be. The Windows Defender decided to not work on a fateful day and my C drive is corrupted and BitLocker is not letting me in. After 3 days of fighting with the system myself and a trip to a rag-tag repair shop i got Windows working again. But those 3 days tested my patients with Windows.

Thus began my re-search and quest for a perfect Linux distro for my taste and liking. A few option came:

- UBUNTU/DEBIAN : One of the most popular one. Even if you ask Chat-Gpt to do anything in Linux it defaults to DEBIAN. Most School Computer Labs with Linux are using UBUNTU. Servers are using UBUNTU. It's very stable. Mac like UI through GNOME
- MINT/Pop-OS : Most easiest Linux distro, mostly Windows like in UI/UX allows Windows users to still be somewhat familiar with both Linux and Windows. With it's cinammon DE.
- Open-SUSE : Mostly Professional oriented, sure, it's fast with YaST but it wasn't cutting the edge.
- Arch Linux : DIY distro where you install only what you want  no Bloatware.

## Major Reasons to pick Arch over every other Distro

### DIY approach

One of the biggest pain point with windows  for me was the sheer amount of bloatware it comes with. A bunch of Apps and Services that you don't want. And most of your Start Menu is a billboard for Advertisements. *Advertisements in your OS*. And no bloatware... Like literally no bloatware. You install only what you want and nothing else. Run the services and processes you want and nothing else. You have the complete control over your system than Windows could ever give you.

And Arch heals those issues with it's DIY approach. But then why Arch and not Manjaro or Artrix.

### Arch Wiki

I cannot stress this enough... the Arch Wiki is a Holy Grail of Knowledge. Manjaro came off as unreliable as there was a lot of bad press around the Team of that project and their work standards and how they are treating the project. And Atrix was new using OpenRC, runit, s6, etc as a system service manger. While still relies on the archaic *systemd*

But the Arch Wiki, the collection of the knowledge of thousands of People over the years collected in a very formatted manner allowing anyone to know the info and help themelves.
Many of the solutions on Arch Wiki/Forum may not work on Artix or Manjaro.

## Fire

No, it's not a technical term. I'm talking about the learner's fire burning in my heart, that wants to experiment and modify and play with my computer as much as possible.

So, I settled for Arch+KDE plasma as both of them are highly customizable.

## Experience with Arch

This month would mark the 1 year anniversary of the arch install on my PC. And in the past 12 months of using Arch. I broke my system 12+ times.

The installation itself took 8 hours. And 3 tries as I wasn't able to connect to WiFi.
When I finally got my WiFi working... It was the a feeling of accomplishment I haven't felt in a long while.

On the First boot the sound is not working. then it's another 6+ hours messing with drivers. And constant back and forth with pipewire and pulseaudio.

Then I began using Arch as my daily driver since Aug 2024,...

- Want an office suite app - LibreOffice
- Image manipulator - GIMP
- Gallary App - Gwenview
- PDFs - Okualar
- Animations - KDE System Settings.
- Link to Phone - KDE-Connect
- File Explorer - Dolphin
- Terminal - Konsole
- Video/Audio - VLC
- Torrent Client - Ktorrent

Using KDE I made it look and feel and behave like Mac, with animations, icons, and widgets.

Then when setting themes and wallpapers but I messed up again and BROKE my KDE...
My SDDM menu is not responding...

And then there was this instance where I had to work with a company provided Writing Tablet. But the problem was the Tablet had a solid support for windows devices, but... the Linux one was... Mehhhh.... Well they had support for X-11 display server but I was using Wayland as it was newer and better...

On one fateful day I decided to update my system so like any other day I ran
`sudo pacman -Syu` and this update broke my GRUB... I can't even get into my system to fix it. But i had the bootable ISO pendrive with me and using that I mounted the system drives to the Live USB and chroot into the device and reverted back to a previously installed version of grub. But this wasn't enough... GRUB was still malfunctioning, so, I had to remove all files and directories related to GRUB and install a previous version of GRUB than the latest one. And whoo-hoo I'm back into my system... 😌

And to this very day I'm using *Arch Linux* as my daily driver.

- This is where I make reports and presentation for projects (for which i also use Google Docs and Google Sheets as often they are a Team Effort and web interfaces works fine).
- Code for hobby and for work.
- Surf the internet... and pretty much everything a college student (esp. Engineering) can use it for...

![My Arch Setup](/blogs/assets/images/arch_background.png)
My Arch Setup

## End Thoughts... 🫠

So, yeah if you are thinking of switching to Arch any time soon, hero,  just keep it clear that you'll break your system more often than you think. The error messages and logs speaking in tongues of the `Linux Gods` . No useful GUI to hold your hand through... Just the black screen of TTY and a blinking cursor.  And you should be able to fix it by yourself, decode the archaic texts. Tread through the forests of Reddit post & Forum posts... crwal through the swamps of Man Pages...

You need to familiarise yourself with the *Terminal* and the *TTY*  not because you want to bu because you're gonna have to... As you're gonna be using it a lot. And the patience to work things with the flow... Many a times you wouldn't find exact solution, or the solution that worked for them isn't working for you. Most preferably cause you didn't read the *Arch Bible* or as the layman call it *Arch Wiki*  Or maybe you might come across a guy that on the problem thread says "Thanks Guys, I fixed it", without specifying what exactly worked for him. Which config file he edited which setting he tweaked or did he rolled back to a previous version... just... dead silence...
  Arch isn't plug and play...
  It's read and repair...
  It's sorrows and despairs...
  It's fire and hell...
  
So, go on... give Arch a try... test your knowledge... test your patience... cause soon it's gonna be a WARZONE...  A warzone where you are bombarded with Error messages and blank screens... Yeah, your system is broken and there is no log or Error message on it...  Arch doesn't sells you Rainbows and Roses... It doesn't offer you Angels and Unicorns... It gives you Thunders and Thorns... It unleashes Demons and Dragons... Be ready with your sword... Plug in the USB...

Welcome to Arch, where we fight demons daily and call it a learning experience...

See you on the other side of the River... closer to freedom... scarred from battle... but a win against the Big Brother... and don't forget to bring some snacks...

![My Arch Setup](/blogs/assets/images/Uwu-owo.webp)
