---
layout: post
title:  "Personal Bahi Khata"
date:   2024-02-03
author: Vinayak Gupta
categories: [Tech, Encryption, Flutter]
---

![](/blogs/assets/images/person_bahi_kata/1_yFJ2yHve0CA3WojLMrC-0g.webp)
Partial view of the Home Screen [Bahi Khata]

So today I would like to take you on a journey to How a programer solves his daily problems.

As a college student it doesn’t take me long to find my self with no money and no record of the money spent. Money was flowing like sand out of my hand. So, a problem solver and a developer I had decided to solve this problem by myself in my way …

I could’ve taken a notebook and written down all of expenses daily and maintain my accounts daily but that wouldn’t be cool or Gen-Z like. Would it? So, I decided to make an app about it.

Choices:
For Frontend I went with *Flutter* because
a) I am kinda good with it.
b) It allows you to do Multi-Platform

for Backend I didn’t needed much per say as I wanted this app to be offline available. and No-Ads

But I’d still need a database to store the data.

Using Flutter I could have gone by using Hive or Shared Preferences but that isn’t as much of *my way*. I wanted to do this differently.

I like the more control I can get over the system as I could. So, I made a choice to use FS based database system. So, I converted my data in a more manageable and readable format *“JSON”* and store it as a text file. then to load the data just read the file and to add to it just append to the file.

So, problem solved???

Not quite yet… I still had to code for it… So, i took on my laptop and after 5 hours of back breaking programming. Igot it running… But it still had an issue…

### State Management

And for that my first approach is to create a Data Holder class and use static variables In that and use them global state Management… and you can guess how that went…

Well again i could’ve used Flutter’s given Provider package to handle and no doubt providers handles it beautifully but it’s not my way…

So after much googling I found that the kind of state Management I was looking for can be done using Stream and Stream Builders… So here we go…

And now the problems' solved…

The app is very basic in it’s working and yes there are a few more features I have in mind that I would like to implement like Expense Visualization and the ability to send your expenses in a readable format like pdf to someone else… preferably your dad when he asks you, “Where have you spent all that?”

It is very simple to use and can be catered to any user demographic be it teenagers and college Students or Working Professionals… be it Indians or Americans

The know how of the app and how to use it is listed in it’s readme (for non-developers : on the display page of the link below).

![](/blogs/assets/images/person_bahi_kata/1_dMAW6-7-2XqAZHnR6wQwZw.webp)
Full-Screen view of Home Screen [Bahi Khata]

Project Link : [Personal Bahi Khata](https://play.google.com/store/apps/details?id=com.vins.bahi_khata&pcampaignid=web_share)

Soon enough I’m gonna release this app to play Store so stay tuned for that. In the meantime you can try the app and it’s working from the project link and drop down any feature request or bug report there.