---
title:      Org Mode and Org Capture
date:       2022-02-27
summary:    A brief explanation of org-mode and some examples of org-capture
categories: Editors
tags: ["emacs","org-mode"]
---

# Org-Mode
Since I already had Emacs(mentioned in [this blog post][1]), I thought why not at least try the rumoured, the killer feature of the Emacs, the org-mode. And I was not disappointed. \
I am not new to text based note taking apps. Before moving to Emacs and org I was using [obsidian][2] on daily basis and I was more than satisfied with it. Great cross-platform applications(electron based but still) and [huge plugin support][3]. But after using [org-mode][4], I cannot think of going back. Shows winning against almost two decades of development is not easy[^1].\
Org-mode is not a single tool, there are different modules that come with it and also there are org-related packages too(org-roam for one). I currently use [org-roam][5] to create notes, [org-babel][6] to run code snippets inside org files, [org-roam-ui][7] to get a nice visualization of org-roam notes, org-contacts to organize contacts, [org-journal][8] to write about my day, [org-agenda][9] to write and manage my habits, projects and  todos which I keep synced on my smartphone for [orgzly][10] and emacs on [termux][11].
And in my opinion one of the most important tool to integrate these all in day to day life is the [org-capture][12].
# Org-Capture
Org-capture lets you create templates and call and fill them whenever, wherever, and however you want. For example you are working on your project, you can call todo capture and save your todo note with file and line from which you called org-capture stored for more context later.

```emacs-lisp
(use-package org-capture
  :ensure nil
  :after org
  :preface
  (defvar my/org-contacts-template "* %(org-contacts-template-name)
  :PROPERTIES:
  :ALIAS: %^{ALIAS}
  :NICKNAME: %^{nickname}
  :PHONE: %^{Phone no}
  :BIRTHDAY: %^{yyyy-mm-dd}
  :EMAIL: %(org-contacts-template-email)
  :ADDRESS: %^{Address}
  :NOTE: %^{NOTE}
  :END:" "Template for org-contacts.")

  :custom
  (org-capture-templates
   `(("c" "Friend Contact" entry (file+headline "/path/to/contact/file.org" "Friends_Heading"),
      my/org-contacts-template
      :empty-lines 1)
     ("t" "Todo" entry (file+headline "/path/to/todo/file.org" "Tasks_Heading")
      "* TODO %?\n  %i\n  %a")
     ("i" "Idea" entry (file+headline "/path/to/ideas/file.org" "Ideas_Heading")
         "* IDEA %^{In Brief}\nCREATED: %U\n%?")
        )))
```

You should start seeing patterns. First we input the key, after that name of the capture. Broadly format looks like this.
``` emacs-lisp
(org-capture-templates
   `(("kbd-key-1" "Org-cature-1-name" entry (file+headline "/path/to/org/file-1.org" "Heading"),
      my/template-name(if already defined one))
      ("kbd-key-2" "Org-catpure-2-name" entry (file+headline "/path/to/org/file.org" "Heading"),
      template_here))
```
For a list of template expansions check out [org-mode manual][13].

[^1]: Org-mode was created in 2003.

[1]: {{< ref 2022-01-02-year-recap-twenty-twenty-one >}}
[2]: https://obsidian.md/
[3]: https://obsidian.md/plugins
[4]: https://orgmode.org
[5]: https://www.orgroam.com/
[6]: https://orgmode.org/worg/org-contrib/babel/intro.html
[7]: https://github.com/org-roam/org-roam-ui
[8]: https://github.com/bastibe/org-journal
[9]: https://orgmode.org/manual/Agenda-Views.html
[10]: http://www.orgzly.com/
[11]: https://termux.com/
[12]: https://orgmode.org/manual/Capture.html
[13]: https://orgmode.org/manual/Template-expansion.html
