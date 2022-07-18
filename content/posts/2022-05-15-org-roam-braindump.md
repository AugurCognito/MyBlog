---
title:      Org-Roam and Braindump
date:       2022-05-15
lastmod : 2022-06-08
summary:    Org-Roam and my braindump
categories: Editors
tags: ["emacs","org-mode","braindump"]
---

# Org-Roam
As mentioned in [my old blog]({% post_url 2022-01-02-year-recap-twenty-twenty-one %} "2021 year recap") I started using emacs as my daily driver for text editing, knowledge base and much. I write and manage my notes using [org-roam](https://www.orgroam.com/manual.html "Link to orgroam.com")(briefly mentioned in [last blog]({% post_url 2022-02-27-org-mode-capture %} "org-mode and org-capture")) for almost half a year now.

I did most of my college assignments(writing in org-mode and exporting to odt/word or pdf). And so far I am still in love with it. Recently I found about [logseq](https://logseq.com/ "logseq knowledge base") too, an open source multi-platform knowledge management software, much like but a little less refined than [obsidian](https://obsidian.md/). It both supports org-mode and markdown. I only use it on my smartphone where it works pretty well.

# Braindump
I think knowledge should be shared and that's why I decided to make my org-roam(most of) notes public [here](https://notes.aniketsingh.net/archive). It was not an easy task to find a static site generator that works well with org-roam and its linking system. Currently, I am using one based on Nextjs. I am using modified version of [this project](https://github.com/rasendubi/uniorg/tree/master/examples/org-braindump). Like this blog site, this is also hosted on cloudflare pages. For analytics I am using ~~Umami. Public dashboard is available [here](https://umami-production-dd92.up.railway.app/share/a5Vc70nH/braindump). You can tell from link, it is indeed hosted on railway and right now using free tier.~~[GoatCounter](https://www.goatcounter.com/ "GoatCounter homepage"). My instance is hosted on [render.com](https://render.com/). Public dashboard is available [gcounter subdomain](https://gcounter.aniketsingh.net/). I am planning to make more changes to the code and release it on github.

I use `cron` and `rclone` to copy roam-notes every hour to the repo and then manually commit changes every 2-3 days or so.
