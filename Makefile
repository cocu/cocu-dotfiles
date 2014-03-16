DOTFILES = $(shell pwd)

all: xorg

xorg:
	ln -fs $(DOTFILES)/xorg/xresources/monokai.dark $(HOME)/.Xresources
