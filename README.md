<img src="./aweshell.gif">

# What is aweshell?

I created `multi-term.el` and use it many years.

Now I'm a big fans of `eshell`.

So I wrote `aweshell.el` to extend `eshell` with these features:

1. Create and manage multiple eshell buffers.
2. Add some useful commands, such as: clear buffer, toggle sudo etc.
3. Display extra information and color like zsh, powered by `eshell-prompt-extras'
4. Add Fish-like history autosuggestions.
5. Validate and highlight command before post to eshell.
6. Change buffer name by directory change.
7. Add completions for git command.
8. Fix error `command not found' in MacOS.
9. Integrate `eshell-up'.
10. Unpack archive file.
11. Open file with alias e.
12. Output "did you mean ..." helper when you typo.
13. Make cat file with syntax highlight.
14. Alert user when background process finished or aborted.
15. Complete shell command arguments like IDE feeling.
16. Dedicated shell window like IDE bottom terminal window.

# Installing Manually

Put this files to your `load-path`.
 - [`aweshell.el`](https://github.com/manateelazycat/aweshell/blob/master/aweshell.el)
 - [`eshell-did-you-mean.el`](https://github.com/manateelazycat/aweshell/blob/master/eshell-did-you-mean.el)
 - [`eshell-prompt-extras.el`](https://github.com/manateelazycat/aweshell/blob/master/eshell-prompt-extras.el)
 - [`eshell-up.el`](https://github.com/manateelazycat/aweshell/blob/master/eshell-up.el)
 - [`exec-path-from-shell.el`](https://github.com/manateelazycat/aweshell/blob/master/exec-path-from-shell.el) 

The `load-path` is usually `~/elisp/`.
It's set in your `~/.emacs` like this:
```elisp
(add-to-list 'load-path (expand-file-name "~/elisp"))
(require 'aweshell)
```

Bind your favorite key to functions:

```elisp
aweshell-new
aweshell-next
aweshell-prev
aweshell-clear-buffer
aweshell-sudo-toggle
aweshell-switch-buffer
aweshell-dedicated-toggle
aweshell-dedicated-open
aweshell-dedicated-close
```

# Installing with Quelpa

If you prefer to use a package manager, you can use [quelpa-use-package](https://github.com/quelpa/quelpa-use-package).

```elisp
;; Install Aweshell
(use-package aweshell
  :quelpa (aweshell :fetcher github :repo "GabrielFrigo4/aweshell"))
```

# Aweshell Files
These are the aweshell project files

## Aweshell
[aweshell](https://github.com/GabrielFrigo4/aweshell)

Main file in aweshell project

## Eshell-Did-You-Mean
[eshell-did-uou-mean](https://github.com/GabrielFrigo4/aweshell)

Autocomplete for aweshell prompt

## Eshell-Prompt-Extras
[eshell-prompt-extras](https://github.com/kaihaosw/eshell-prompt-extras)

Display extra information and color for your eshell prompt.

## Eshell-UP
[eshell-up](https://github.com/peterwvj/eshell-up)

Emacs package for quickly navigating to a specific parent directory in `eshell` without having to repeatedly typing `cd ..`.

## Exec-Path-From-Shell
[exec-path-from-shell](https://github.com/purcell/exec-path-from-shell)

A GNU Emacs library to ensure environment variables inside Emacs look the same as in the user's shell.

# How To Use Aweshell
In theory, just by opening eshell you will already be using Aweshell. However, you can modify this default behavior

## Dedicated window
You can use command ```aweshell-dedicated-toggle``` to pop dedicated window at bottom of frame.

<img src="./aweshell-dedicated.gif">

# FAQ
If you got error that random space insert, you perhaps need turn off ```aweshell-auto-suggestion-p``` with ```(setq aweshell-auto-suggestion-p nil)```, meantime auto suggestion feature will turn off.