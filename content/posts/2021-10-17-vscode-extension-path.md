---
title:      VS Code path setup
date:       2021-10-17
author:     Aniket
summary:    Setting up VS Code extension path in windows and much more.
categories: Editors
tags:
 - windows
 - editor
 - setup
---

If you are like me and just hate seeing your C drive fill up or just like to have a clean C drive then this post is for you.
By default almost all of VS Code are stored in `C:\Users\UserName\.vscode\extensions`(for the time being will be talking about windows only) and you dont want that, right?

# Portable Version
Just use the portable version. Go to VS Code [download page][1] and download `.zip` file. In portable version everything from user profile to extensions will be stored in a single folder with other VS Code files. Just cut-paste this folder wherever you wish to manage storage.

# Use \--extensions-dir \<dir-path>
According to VS Code [extension management documentation][2], we can use `code --extensions-dir <dir-path>` command to specify directory path from where VS Code will try to load and later save extensions. Writing this same command again and again is the final solution? Of course not.

## Use shortcut target
For this, we need to create a shortcut for VS Code. We can also use a pre-existing shortcut. Right-click on the shortcut and add `--extensions-dir=<dir-path` at the end of the target field.
![Example of shortcut target][3]

The only drawback is that this only works when you open VS Code using that particular shortcut. So if you are into using the command-line to open VS Code then this is not for you.

## Change code.cmd
Whenever we run the  `code` command, instead of executing the  `code.exe` binary it launches a script. This script file is located inside bin directory, which itself is inside the directory where VS Code itself is installed i.e. `...\Microsoft VS Code\bin\code.cmd`. If you don't know where this folder is, you can simply use the `where code` command to find the location. \
Now we just need to edit the `code.cmd` file.
```sh
@echo on
setlocal
set VSCODE_DEV=
set ELECTRON_RUN_AS_NODE=1

"%~dp0..\Code.exe"  "%~dp0..\resources\app\out\cli.js" --extensions-dir Path\To\Desired\Directory\%*
endlocal
```
And on that note, we can additional flags(full list of flags available [here][4]) to change the  directory for 

[1]: https://code.visualstudio.com/download
[2]: https://code.visualstudio.com/docs/editor/extension-marketplace#_command-line-extension-management
[3]: https://i.postimg.cc/t483z5FD/example-shortcut-target.png
[4]: https://code.visualstudio.com/docs/editor/command-line#_advanced-cli-options
