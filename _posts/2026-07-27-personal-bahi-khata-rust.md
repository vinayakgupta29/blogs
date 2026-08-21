--- 
layout: post 
title:  Why I Rewrote Personal Bahi Khata in Rust
date:   2026-07-27 
author: Vinayak Gupta 
description : "with time and requirements, moved the personal Expense manager to Rust cause it is stable and C is scary"
categories: [ Tech, Encryption, Rust, Compatibiity ]
---



Two years ago I built **Personal Bahi Khata** as a small offline-first expense tracker. At the time, Flutter was the obvious choice for me. It allowed me to build a cross-platform application quickly while keeping everything local to the user's device.

But software changes. Ecosystems change even faster.

As the project matured, I realised that the architecture I'd chosen was beginning to fight against the long-term goals of the application.

Instead of continuing to patch over these problems, I decided to rewrite the core of Personal Bahi Khata in **Rust**.

This wasn't just a language rewrite.

It was an architectural decision.

---

## 1. The Problem With Depending on an Ecosystem

One thing I've learned from maintaining personal projects is that your biggest dependency isn't your code.

It's everyone else's.

Flutter itself evolves rapidly.

Android changes APIs almost every year.

Dart packages get archived.

Maintainers disappear.

Packages that your application depends on suddenly stop supporting newer SDK versions.

Eventually you reach a point where upgrading one dependency means upgrading ten others, only to discover another package has been abandoned entirely.

None of these problems are unique to Flutter.

Every modern framework suffers from this.

But for an application whose primary goal is **simply storing personal financial data locally**, with security in mind, constantly chasing framework updates didn't make sense anymore.

I wanted the business logic to survive independently of whichever UI framework happened to be popular.

---

## 2. Separating the Engine From the Interface

The biggest architectural change in the rewrite was separating the application into two parts.

* A **Rust core** responsible for everything related to data.
* A frontend responsible only for displaying that data.

The frontend becomes replaceable.

Today it could be Flutter.

Tomorrow it could be:

* Tauri
* GTK
* Qt
* React
* WebAssembly running in the browser
* even a command-line interface

The storage engine doesn't care.

As long as the frontend can call Rust functions, with C compatible ABIs, the application works.

That gives the project a much longer lifespan than tying every piece of logic to Flutter.

---

## 3. Rust Wasn't Just About Performance

Whenever someone hears "Rust", they immediately think about speed.

Yes, Rust is fast.

But performance wasn't the reason I switched.

The reasons were much more practical.

### 3.1 Stability

Rust has an exceptional backwards compatibility story.

Libraries evolve much more conservatively, and the language itself avoids breaking existing code. Plus if your code depeneds on a certain version you can compile and keep the binary and keep it working even take that version crate locally or in your own version control if no-major CVE is found on that version.

For a personal project that I want to maintain for years, this matters far more than benchmark numbers.

### 3.2 Portability

Rust compiles almost everywhere.

- Desktop.
- Android.
- iOS.
- Linux.
- Windows.
- macOS.
- Even WebAssembly.

Instead of rewriting my storage layer for every platform, I now have one implementation that can run almost anywhere.

### 3.3 Independence

Most importantly, my application's core no longer depends on Flutter.

If Flutter disappeared tomorrow, the project would survive.

Only the UI would need replacing.

---

## 4 Improving the File Format

While rewriting the engine, I also revisited the storage format.

The original format already focused on being compact and encrypted, but there were still improvements to make.

### 4.1 Zstandard Compression

The application now uses **Zstandard (zstd) compression at level 13**.

This offers a good balance between compression ratio and decompression speed.

Expense files become significantly smaller while remaining quick to load, even on lower-end devices.

Since most users write data far less frequently than they read it, spending a little more CPU time during compression is a worthwhile trade-off.


### 4.2 Binary Flags
The Expense data Format has 2 binary flags and conceptually they are just 1 bit (on-off) values.
But if they are stored as boolean values in any data-format they use 1 byte for 1 boolean value. Plus when they are converted to json for compression they are converted to string `true` and `false`. This is a wide waste of space in storage as well as runtime memory (RAM). 


So I changed them to a single u8 field. and they are set and unset using bitwise operations and u8 masks. And consumes the 4 possible states to 4 possible numbers `{0, 1, 16, 17}`. 

### 4.3 File Integrity with Checksums

Previously, the application could decrypt files correctly, but it couldn't always distinguish between valid data and corrupted data.

Now every saved file ends with a checksum.

Whenever the application opens a file, it first verifies the checksum before attempting to process the contents.

This allows Personal Bahi Khata to detect:

* accidental corruption
* incomplete file transfers
* damaged storage
* unexpected modifications

before they become data loss.

It's a small addition, but it greatly improves reliability.

---

## 5. Preparing for the Future

This rewrite isn't about making the application "faster."

It's about making it **last longer**.

The goal is to ensure that ten years from now, the data format remains usable even if today's UI frameworks have disappeared.

With the storage engine written in Rust, future frontends become much easier to build.

A desktop application.

A web version using WebAssembly.

A lightweight command-line utility.

A native mobile interface.

All of them can use exactly the same core.

---

## 6. Lessons Learned

Looking back, I don't regret choosing Flutter for the original version.

It helped me build the application quickly and validate the idea.

But once the project grew beyond a simple experiment, maintainability became more important than rapid development.

Rust gave me something far more valuable than raw performance.

It gave me confidence that the core of Personal Bahi Khata can continue evolving independently of whichever framework happens to dominate the software world next.

The UI may change.

Platforms will certainly change.

But the engine and more importantly, the user's data should remain stable.

That's ultimately why I rewrote it.


My Old Blog : [Personal Bahi Khata Flutter](https://vinayakgupta29.github.io/blogs/2024-02-03/personal-bahi-khata/)


Play Store Listing [<i class="fa-brands fa-google-play"></i>](https://play.google.com/store/apps/details?id=com.vins.bahi_khata&pcampaignid=web_share)
<!-- A title like **""** or **"Personal Bahi Khata v2: From Flutter to Rust"** would work well.

- -->
