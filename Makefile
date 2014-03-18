DOTFILES = $(shell pwd)

all: zsh tmux xorg xmonad-master git
mba: zsh tmux xorg xmonad-mba git

xorg:
	ln -fs $(DOTFILES)/xorg/xresources/first_xresources $(HOME)/.Xresources
	ln -fs $(DOTFILES)/xorg/xdefaults $(HOME)/.Xdefaults
xmonad-master:
	ln -fs $(DOTFILES)/xorg/xmonad/master $(HOME)/.xmonad
	ln -fs $(DOTFILES)/xorg/xmonad/master/xmobar.hs $(HOME)/.xmobarrc
xmonad-mba:
	ln -fs $(DOTFILES)/xorg/xmonad/macbook $(HOME)/.xmonad
	ln -fs $(DOTFILES)/xorg/xmonad/macbook/xmobar.hs $(HOME)/.xmobarrc
git:
	ln -fs $(DOTFILES)/git/gitconfig $(HOME)/.gitconfig
zsh:
	ln -fs $(DOTFILES)/zsh/zshrc $(HOME)/.zshrc
	ln -fs $(DOTFILES)/zsh/zshrc.d $(HOME)/.zshrc.d
tmux:
	ln -fs $(DOTFILES)/tmux/tmux.conf $(HOME)/.tmux.conf
