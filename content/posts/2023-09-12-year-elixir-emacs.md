---
title:      Elixir development on Emacs
date:       2023-09-09
summary:    My journey with Elixir on Emacs and docker
categories: ["emacs","elixir"]
---

# Choosing Elixir
Elixir is one of the most elegant language I have used.
It has simplicity of python that I greatly admire and the power of erlang(or BEAM).
I have used Elixir in the past but this time I wanted to use it for the Pheonix framework.

I did not expect Pheonix to be so good and easy to use out of the box.
It is less complicated than Django and more powerful.
Creating CRUD application was never so easy.
Unlike all other backend technologies I have used, I think this is the first one that uses websockets by default.
And tailwindcss.
It just feels "modern".
Makes sense why juggernauts like discord uses it.

But that does not mean it is perfect.
Far from it.
Since it is young(both the language and the framework), there are not many resources available.
And the ones that are available are either not up to date or are not for someone just starting out.

# Now how do I start?
Previous application I made was not really dependent on the language version.
But since this time I was using the Phoenix this time, I needed to use the latest version of elixir.
I am using Ubuntu 22.04 and the latest version of elixir available in the official repository is way behind(nothing new here).
So I decided to use `asdf` to manage my Elixir and Erlang.
Elixir will install normally but Erlang will need to be built from source.
`asdf` will do it for you, but chances are there you will have to deal with dependencies yourself.

Tip before you start: If you are using `asdf`, make sure you have downloaded the version based on docker image available.
Watch for both the Elixir and Erlang(OTP) versions.
Or you will have to create the docker image yourself, and it is not a trivial task.
`asdf` is great and feels much better than `rvm` that I used to use for ruby.

# Now Emacs
I have been using Emacs for a 2 years now, and I love it.
I love that it is so accessible and configurable.
I am writing this blog post on Emacs.
I write my notes on the Emacs, handle my todos on it and [Orgzly][1].
And since I am using Doom to handle my config, it is even better.
For the LSP support I used [elixir-ls][2] with `eglot`.
It was easy to set up and works great.
Again you should check elixir and OTP version to confirm if they are supported by elixir-ls.

[1]: https://orgzly.com/
[2]: https://github.com/elixir-lsp/elixir-ls
