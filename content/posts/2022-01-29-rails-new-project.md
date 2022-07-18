---
title:      Making a new Rails App
date:       2022-01-29
summary:    How to setup rails app with webpacker and local environment
categories: Ruby
tags: ["OOP"]
---
# Making a new app
[Ruby on Rails][1] is a fantastic back-end framework. As mentioned in my [last blog][2] I started learning it last year, and one of the main resource that helped me was the greatly written [rails tutorial][3]. But I still faced some issues while setting up a new app, so this is just a reminder for future me and maybe also to someone new to rails. I will also discuss containing gems locally.\
To create a new Ruby on Rails app and run it
1. First of all run `rails new name-of-the-app`
2. To change active directory simply write `cd name-of-the-app`
3. Install all required gems `bundle install`
4. Run server with `bin/rails server` or `bin/rails s`

Now if you want to use webpacker instead of sprockets, what should you do? \
Well, try using `--webpack` flag with `rails new` as mentioned in [webpacker documentation][4]. \
And if you are like me and it did not work for you, just simply change your `Gemfile` to add it manually or simply write `gem add webpacker`. After that `bin/rails webpacker:install` will install webpacker.\
You can also set `bundle install` to some local directory with `bundle config path 'path/to/dir' --local` to save space or handle gems without worrying about global gem versions.

[1]: https://rubyonrails.org/
[2]: {{< ref "2022-01-02-year-recap-twenty-twenty-one" >}}
[3]: https://www.railstutorial.org/
[4]: https://edgeguides.rubyonrails.org/webpacker.html#installing-webpacker
