DOTFILES = $(shell pwd)

all: zsh tmux xorg xmonad git

xorg:
	ln -fs $(DOTFILES)/xorg/xresources/monokai.dark $(HOME)/.Xresources
	ln -fs $(DOTFILES)/xorg/xdefaults $(HOME)/.Xdefaults
xmonad:
	ln -fs $(DOTFILES)/xorg/xmonad $(HOME)/.xmonad
	ln -fs $(DOTFILES)/xorg/xmonad/xmobar.hs $(HOME)/.xmobarrc
git:
	ln -fs $(DOTFILES)/git/gitconfig $(HOME)/.gitconfig
zsh:
	ln -fs $(DOTFILES)/zsh/zshrc $(HOME)/.zshrc
	ln -fs $(DOTFILES)/zsh/zshrc.d $(HOME)/.zshrc.d
tmux:
	ln -fs $(DOTFILES)/tmux/tmux.conf $(HOME)/.tmux.conf
