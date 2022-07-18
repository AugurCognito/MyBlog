---
title:      What I did in 2021
date:       2022-01-02
url:  "/What-i-did"
lastmod : 2021-01-25
author:     Aniket
summary:    A blog entry about what I did in 2021
---
# Year 2021
I feel that last year came as both a blessing and a curse(reason not that hard to guess, right?) to me. I got a lot of free time due to online classes. This free time allowed me to really explore a lot of things on my own. This year also taught me a lot of things, taught me how to better appreciate things that I have in present. But here I will mostly Write about technical/programming aspect of 2021.

# Python
I focused most of my last year in first learning [python][1] and then in trying to master it. It is such an accessible language that it makes me happy to see its (unsurprising) ever-increasing popularity. While in [the zen of python][2] it is written that
> There should be one-- and preferably only one --obvious way to do it

which is more or less false(for better or worse) in my opinion. Python is one of the most flexible language with very low amount of "magic"(at least compared to ruby). With an easy to understand concept of objects and same ease to change those same objects really makes it a beginner friendly language. Not only does it help in writing right code, but when you do something wrong its errors are really detailed and are even better [in python 3.11.][8] \
I have written about some python features like [dataclass][3] and [decorators][4] in the past, and I am planning to continue doing so(if you want me to write something just contact me through mail or any of my socials). Because of its simplicity and its ease create and test scripts, we can virtually automate most of our digital tasks using this. I made [this script][5] to scrap results of multiple students within minutes using [selenium][6]. \
Messing with css during the Graphica[^1] taught me hate css and made me mostly lose interest in front-end(don't hate front-end tho). And that's why I shifted my focus towards, a battery-included back-end framework named-

## Django
[Django][7] is a backend-framework written in python and uses python to create whole back-end. It solves many of its parent's quirks that are not required in a production ready service such as above mentioned the zen of python problem. Here while flexibility of python is available but is not used. There are some really obvious right and wrong ways to do things unlike unadulterated python. \
I made multiple projects using it and it became really easy to manipulate data when whole django app structure became somewhat clear to me. Writing rest-api instead of a web-app is also easy with [djangorest framework][9]. Django is just getting better and better and better and its in constant development. Check out [django 4.0][10]. 


# C
I had history with c++ when I started C. I studied and made programs in c++ in high-school. I also wrote about [c++ vectors][11]. I started C because it was in our data structure course. I was surprised by how liberating it felt to ditch [STL][12]. Doing everything yourself. At the same time making data structure made myself made me realise importance if STL and other libraries that I took for granted. 

# Ruby
I basically learnt ruby to use it for [Rails][13]. I felt that ruby is to python what python is to C in regards of "magic". While python still constraints you to reduce "magic" with methods and attributes, for one it limits your "messages" to existing methods and attributes, in ruby you can go much further.

## Jekyll
[Jekyll][14] is a static-site-generator framework written in, you guessed it, ruby. There is a reason why even github by default gives support for Jekyll.

## Rails
Like django but with ruby's magic. Lacks some obvious django features like admin panel. I am still learning it so I can not say much about it.

# Editors
I started my text-editor/IDE journey with [turbo-C++][15], that's what they had in our high-school.I mostly used notepad++ at home. During first semester, when we were taught algorithms using python, for which [pycharm][16] was recommended by our teacher. its good, students can get [pro version][17] <!-- with some dodgy terms and conditions -->. But its heavy, its not a text-editor but an IDE. Later we were told by seniors to go with [VS Code][18] for its versatility. Our data structure teacher used [CODE::BLOCKS][19].\
I used VS code for majority of 2021 and it did not disappoint me at any point. You will be able to find extension related to almost anything. Only issue that I have with VS code is that it is an electron app and that leads to its high ram and resource usage. But to its developer team's credit they take performance very seriously, for example last year they built coloured bracket pair extension's functionality inside [VS code][20] itself to improve performance. But due to it being js based you can literally run it inside your browser[^2].\
Later I found about [vim][21], and i fell in love with its shortcuts and modes. It became my go-to text editor, not code-editor tho, because it lacked many things(by default), I did not want to spend my time and energy configuring it. And then I found [VSCode Neovim][22], which i use to this day. Its VS Code but witch full vim support which I don't know why you wouldn't want to have? \
I stayed away from even trying emacs because how time consuming it looked to configure it, when I had VS code, search an extension, click install and done. Also because vim, I would lose my sense for vim shortcuts if I switch to Emacs, right? switching to text-only editor can be overwhelming, I wondered? **How wrong was I?**. Oh, How much I regret not coming across doom emacs sooner. \
[![Doom-Emacs-Screenshot](https://i.postimg.cc/wB80qTrz/Doom-Emacs-Screenshot.png)](https://postimg.cc/w12hFHH4)[Doom Emacs][23] is everything I can wish for in a text editor and if there is not something in there which is not to my liking I can easily change that using its easy to understand and modify config `.el` files. I first used it exclusively on [WSL][24] and then it made me finally convert to linux for good. Its performance is good in WSL 1(loading takes a little time) and phenomenal in WSL2 but very very slow in [MSYS2][25]. It made me appreciate text-only environment in its true glory, After getting used to text only environment I finally shifted to linux, and I am writing this blog in doom Emacs. hopefully its going to be last time I shift. 

[^1]: A competition held for first years in AIT. Got 3rd place. :)
[^2]: Change `github.com` to `github.dev` in any github repo's url to open it in vscode in your browser

[1]: https://www.python.org/
[2]: https://www.python.org/dev/peps/pep-0020/#the-zen-of-python 
[3]: {{< ref 2021-06-15-python-dataclass >}}
[4]: {{< ref 2021-05-27-python-decorators >}}
[5]: https://github.com/AugurCognito/SPPU-Result-Scraper
[6]: https://www.selenium.dev/
[7]: https://www.djangoproject.com/
[8]: https://docs.python.org/3.11/whatsnew/3.11.html
[9]: https://www.django-rest-framework.org/
[10]: https://docs.djangoproject.com/en/4.0/releases/4.0/
[12]: https://www.cplusplus.com/reference/stl   
[11]: {{< ref 2021-12-01-cpp-vectors >}}
[13]: #Rails
[14]: https://jekyllrb.com/ 
[15]: https://en.wikipedia.org/wiki/Turbo_C%2B%2B
[16]: https://www.jetbrains.com/pycharm/
[17]: https://www.jetbrains.com/community/education/#students 
[18]: https://code.visualstudio.com/
[19]: https://www.codeblocks.org/
[20]: https://code.visualstudio.com/blogs/2021/09/29/bracket-pair-colorization
[21]: https://www.vim.org/
[22]: https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim
[23]: https://github.com/hlissner/doom-emacs
[24]: https://docs.microsoft.com/en-us/windows/wsl/install
[25]: https://www.msys2.org/
