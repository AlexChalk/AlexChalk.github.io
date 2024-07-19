---
title: iPod Classic and iTunes Match in 2024—a Guide for Masochists
layout: post
date: 2024-07-18
headerImage: false
tag:
- music
star: false
category: blog
author: alexchalk
description: iPod Classic and iTunes Match in 2024—a Guide for Masochists
---

# Introduction

I still stubbornly purchase mp3s and sync them to an iPod Classic. Unfortunately, since the rest of the world has moved onto streaming, the software support for doing this in 2024 is pretty bad. This post is a list of all the tricks I've found that help me get things working.

# Mp3 Tag Management

iTunes is not a great mp3 tag manager, so I manage my tags externally, then import the tagged files into iTunes. My preferred solution is [beets](https://github.com/beetbox/beets), as it lets me leverage the command line to rapidly edit multiple files. If you'd prefer a graphical app, I've also used [mp3tag](https://www.mp3tag.de/) and think it's great.

I had two main frustrations with beets: edits to the album_sort tag, and moving the location of my library.

Beets does save edits to the `album_sort` tag, but it doesn't seem to keep track of them in its internal database. This means that modified `album_sort` tags don't show up when I run `beet edit`. 

I get around this by programatically updating `album_sort` at import time using a beets [plugin](https://beets.readthedocs.io/en/stable/dev/plugins.html), as I just want my albums sorted by release year. (The source code is [here](https://github.com/AlexChalk/dotfiles/tree/64782bd21999f5479cbf88a34c73c60927257278/beets/albumsort) if you're interested, and if you install beets using pipx, you can install the plugin with `
pipx inject beets path/to/src`).

When moving the location of the library, the simplest workaround I've found is to update the paths in my config, then regenerate the beets db from scratch using `beet import new/path/to/lib -A`.

# Installing iTunes

In my experience, macOS' iPod sync functionality breaks in at least two ways. Firstly, it errors when reformatting an iPod from scratch, and secondly, it fails to sync a lot of my album art. It also requires audiobooks to be stored on your device, which is annoying if you keep your library on an external drive.

I've experimented with linux sync solutions like gtkpod and strawberry too, but I haven't found anything reliable.

For these reasons, I sync my iPod using an iTunes installation on Windows, without any of the new apple apps like Music installed. 

For non-Windows users, this means installing a Windows virtual machine. There are lots of different ways to do this, and I won't get into the details here, but I will share one iTunes-related experience. If you store your music library on your local machine and search for how to share it with your VM, you may see info on mounting your library using webdav. However, I found iTunes works too slowly to be practical when trying to access music files over webdav, and it also misses some files when running an import.

A better solution for me has been to copy my library to an external usb, then access that in the VM using usb passthrough. A great tool for performing this copy is [rclone](https://rclone.org/docs/). Every time you make a change to your library that you want to sync with your external device, you can just run `rclone sync your-library path-to-your-copy`. I sometimes add `--dry-run` to see what the command will do without running it, and I usually add `--verbose` for detailed output on what rclone is doing.

# iTunes Library Management


