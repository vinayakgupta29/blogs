---
layout: post
title: "Making Games on a Potato Laptop: Why I Chose SFML"
date: 2026-07-16
description : "My Game Dev journey with CPP and SFML cause OpenGL is scary"
categories: [Gamedev, CPP, SFML, ADHD, Indie, Low-Level]
---

For the longest time, I wanted to make games—not massive open-world RPGs or photorealistic shooters, but the kind of games I grew up appreciating. Small, arcade-like experiences that you can boot up, play for ten minutes, and close with a smile.

Part of that comes from having ADHD. I find myself getting bored with long games that expect hundreds of hours of commitment. Instead, I naturally gravitate toward games from the early days of computing: simple mechanics, instant feedback, and gameplay that's easy to pick up whenever I need a short break.

Eventually I thought, _why not build one myself?_

## Constraints Make Interesting Decisions

My laptop isn't exactly built for modern game development.

It's good enough for programming, but heavyweight engines like Unreal or even Unity aren't something I enjoy running on it. They're amazing tools, but they bring a lot of overhead when all I wanted was to draw sprites, process input, and make something fun.

Rather than fighting my hardware, I decided to lean into it.

I wanted something lightweight.

Something where I could understand every part of the rendering loop instead of dragging components around in an editor.

## Looking for the Right Tools

Initially I experimented with GTK and C because I wanted something close to the system.

That... didn't last very long.

Managing UI, learning C, and manually dealing with everything at once quickly became overwhelming. At that point I also hadn't used Raylib before, and jumping directly into C felt intimidating.

So I settled on **C++ with SFML**.

It turned out to be exactly the balance I was looking for.

SFML lets me focus on writing the game instead of configuring an engine. It provides graphics, audio, input handling, and window management while still feeling lightweight enough that I can understand what's happening underneath.

For a first real game project, it felt like the right choice.

## Building Smashers

The project eventually became **Smashers**, a small game that exists for a very simple reason:

> A game to help me fidget during my ADHD sessions.

The first playable version came together surprisingly quickly. According to my commit history, the first complete version took roughly **12 hours** of focused work (and a lot of ADHD fidgeting).

From there the project slowly evolved.

The commit history tells a story that's probably familiar to anyone who's built side projects:

- Initial project setup
- First playable game
- Documentation
- Build fixes
- UI improvements
- High score mode
- Navigation updates
- Better screenshots
- README improvements

Nothing revolutionary.

Just lots of small iterations that gradually made the game feel more polished.

Looking back, that's probably the biggest lesson: software rarely becomes good in one giant leap. It gets there one small commit at a time.

## Learning Without an Engine

One thing I enjoyed most about SFML is that it doesn't hide everything behind an editor.

You end up writing the game loop yourself.

You think about rendering order.

You load assets manually.

You manage objects yourself.

You start understanding why games update every frame instead of simply reacting to events.

It's still a high-level library compared to OpenGL, but it removes enough abstraction that you're constantly learning how games actually work.

For someone interested in systems programming and graphics, that's incredibly satisfying.

## What's Next?

This project definitely isn't the end of the journey.

If anything, it made me realize I enjoy working closer to the hardware than I originally expected.

The next library I want to explore is **Raylib**. It seems even more minimal while still being beginner-friendly.

I'd also like to start using **Dear ImGui** for debug tools and developer interfaces. Immediate mode UI has become really interesting to me after working on this project.

Eventually I'd like to become comfortable writing games in **C**, managing memory manually, and understanding the lower-level details that libraries usually abstract away.

After that?

Probably **SDL**.

And eventually...

**OpenGL**.

Not because I want to reinvent game engines, but because I genuinely enjoy understanding what happens beneath the abstractions.

## Final Thoughts

Sometimes limitations end up becoming advantages.

A slow laptop pushed me away from heavyweight engines.

Being interested in short arcade-style games kept the scope realistic.

And choosing SFML let me focus on learning rather than fighting my tools.

Smashers isn't the biggest game I've ever imagined making.

But it's the first one that taught me how a game actually comes together—from opening a window to rendering sprites, handling input, tracking scores, and slowly polishing things one commit at a time.

I think that's a pretty good place to start.
