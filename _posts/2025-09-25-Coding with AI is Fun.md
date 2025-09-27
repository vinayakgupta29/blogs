--- 
layout: post 
title:  Coding with AI is Fun 
date:   2025-09-25 
author: Vinayak Gupta 
categories: []
---


Recently I was going over a pet project of mine that was getting pushed over due to one reason or another... For 3 Years at this point...

And now that I found my-self with some time so I decided to work on it... but my ADHD was calling in and I was still feeling lazy to write all of that code by myself...


So my Inventive Foolish self thought... 

<center><code>A. I.</code></center><br> 

Why don't I use it just like everyone else... And be the new Hype Kid around the block...

Although I was using it beforehand but for little things... like Center this Div... or find the error in this JSON parsing... 

or write me a test application to test /hello route and so on...

But then my sorry ass decided to use it for a project... So I wrote down all of my features in plain English... nothing technical...
It was so plain and simple that even your client can read and understand it in one read...

So I downloaded Cursor and logged in with my Gmail account on it... It gave me a set number of Token on the free model... (Cause I'm broke)...

and then I gave it the rules.md as a context and It's instructions were in it as well...

And the instructions in clear text stated that once you are done makin it it should be able to run using `docker-compose up -d` and `go run .`

But this sorry AI of Ultron took 12 tries to get it running... By then my token ran out... But I still wanted to get it done using `A. I. ` so as soon as I kept getting error messages i kept putting it into GPT and DeepSeek and trying to Debug it...

After 48 hours of this I was able to get the application running... Yay 🥳  

And for a little context it's forum with Server Side rendering and Markdown to HTML conversion... for user created threads... and then I ran into the biggest problem... For some reason my Links i.e `a` tags are getting double parsed so a link in md written as 

```md
[link](url)
```

was getting parsed into the HTML as 
```html

<p><a href="&lt;a href=" https:="" www.youtube.com="" watch?v="nowWXFNYY6s&quot;&quot;" target="_blank" rel="noopener noreferrer">https://www.youtube.com/watch?v=nowWXFNYY6s"</a> target="_blank" rel="noopener noreferrer"&gt;<a href="https://www.youtube.com/watch?v=nowWXFNYY6s&lt;/a&gt;" target="_blank" rel="noopener noreferrer">https://www.youtube.com/watch?v=nowWXFNYY6s</a> <a href="&lt;a href=" https:="" www.youtube.com="" watch?v="GlUJUZb5ne8&quot;&quot;" target="_blank" rel="noopener noreferrer">https://www.youtube.com/watch?v=GlUJUZb5ne8"</a> target="_blank" rel="noopener noreferrer"&gt;linked</p> 

```

instead of 
```html
<a href="url"> link </a>

```

And yes I dropped an actual code feel free to open this link and learn some Kanji...

ANywas coming back to the topic... Now just like every other logica guy this problem was in the User-Content so with the steps to debug this I began stack tracing from the root of the appearance... i.e, the thread page... at First I spent 2 days with the HTML template... Maybe my template was wrong or corrupted... then I spent the next 10 days dealing with the GO code thinking it has something to do... my code is filled with print statements and I tried everything that Chat-GPT and DeepSeek can throw at me... 

And after this Devil-Friendly task I decided to do it my way and started to replicate the error started by making a saperate /test route and rendering a template through it and seeing the error... and So far everything was working as intended... untill i added a class called thread-description to the parent Div of this Description part... that's when we saw the cruel and abhorrent murder of the anchor tag... so I changed the class name first in my HTML and the problem disappeared... then I added the class back and it re-appeared like some demonic spell...

So I changed the name of the class in the style.css file and updated the HTML accordingly... Look what we find... we find that this abhorrent nature of the Blood Craft Black magic is gone...

For the curious cats in here the thread description class was this

```css
.thread-description {
  margin-bottom: 1rem;
  line-height: 1.6;
}
```

Isn't that an innocent piece of code...

but the main villian of the story is this... 
```javascript
 makeLinksClickable: function() {
        const contentElements = document.querySelectorAll('.post-content, .thread-description');
        contentElements.forEach(element => {
            const text = element.innerHTML;
            const urlRegex = /(https?:\/\/[^\s]+)/g;
            const linkedText = text.replace(urlRegex, '<a href="$1" target="_blank" rel="noopener noreferrer">$1</a>');
            element.innerHTML = linkedText;
        });
    }
```

That spawn of Satan called itself the best Coding Companion and hid this in a JS file called in the footer of the page and reparsing the links and making the description look like a fools Job... MotherFucking javascript making the lives of people miserable...

Because on doing a ripgrep on the project dir I found that aside from my thread page and the CSS files this Demonic Goblin is the only one who is mentioning the description tag... And for the Bold of you who are gonna say that this is also covering the post-content...

Yeah... I know that when I found it and read it I knew that...

*"But then how come you not find it"*

Because during testing I was creating threads and my description was messed up and my Autism demands me to be a little Perfectionist Buffoon so if my description is messed up then how come I go far to test the replies and post feature... 

And the only mistake I made was to specifically tell cursor "Detect links in the Description and post-content text i.e., http:// or https:// and make them clickable if not handled by the parser..." Because some parsers like the one used by Jekyll or even majority of them don't auto detect links and parse them... But GO people they wanna do things differently... so they made it a feature...

Example : https://youtu.be/Ux70bUb4tyo?si=q0zOfh08nZvWnrcX

Never have I ever made anything front-end not even templating HTML in GO so that I'd know about this feature so as a safegaurd I added that instruction... But this AI with it's Largest composium of knowledge the Magical Wizard, The Knowing Bramha, The Sea of Knowledge should know better than me... it should know that *gomarkdown* package performs link autodetection and saves you hassel but nope... 

We are deciding to be an IDIOT today...

So to all my CEO's, Middle-Managers, Managers, Product Managers and Sales Folks... who were thinking of replacing their developers with AI just keep this as a reminder... Your world is too dependent on computers... Remeber the **npm LeftPad** disaster... Yeah... we can have a bigger one than that if you keep riding on the AI Hype-Train...

So Far has been the experience with ` V I B E C O D I N G ` ... If this is what the Future looks like... Oh Boy... Watson we see a Dark Future... as my friend would say "पार्थ यह मैं क्या देख रहा हूँ... हे तात, ऐसा प्रतीत हो रहा है कि मानवों का भविष्य तो अंधकार से भरा हुआ है।"

![Your OverLord](https://static.wikia.nocookie.net/villains/images/e/e6/Roko%27s_Basilisk.png)
