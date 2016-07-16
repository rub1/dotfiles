# dotfiles

My startingpoint ~~is~~ was mostly a fork of [Mathias Bynens'](https://github.com/mathiasbynens/dotfiles) bash files witch I've now stopped using since I've gone over to use Zsh. My Vim config ~~is~~ was a fork of [Harry Roberts'](https://github.com/csswizardry/dotfiles) vimrc for a startingpoint. Go check them out they're both awesome. My Sublime config have been evolving over the past few years and i tend to switch color scheme atleast once a month. Can't remember where I forked my tmux.conf, sorry. Copyed tmux styling from [xero](https://github.com/xero/dotfiles). My NVim is a combination of my old vim config and some inspiration from [Nick Nisi](https://github.com/nicknisi).

# Requirements

```
coreutils
git
tmux
zsh
reattach-to-user-namespace
```

## Install

``` 
Set default shell in System Preferences  \'/usr/local/bin/zsh\'
git clone --recursive git://github.com/rub1/dotfiles.git $HOME/dotfiles
git submodule update --init --recursive
```

Use the link.sh file to install all '.symlink' files.

```
sh ./link.sh
```

Restart terminal session

### NVim

``` 
:PlugInstall
```

## Terminal settings

- Theme [Euphrasia](iterm2/euphrasia.itermcolors) by [jathu](https://github.com/jathu/)
- Font Hack
- [Use ⌥ ← and ⌥→ to jump forwards/backwards words in iTerm](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)

## Sources

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) 
- [Artem Sapegin](https://github.com/sapegin/dotfiles)
- [Harry Roberts](https://github.com/csswizardry/dotfiles)
- [Nick Nisi](https://github.com/nicknisi)

## Screenshot

![Screenshot of iterm2](iterm.png)
![Screenshot of sublime text](sublime.png)
