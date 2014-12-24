#!/bin/sh

echo "シンボリックリンクを貼ります"
ln -s -f ~/.dotfiles/.zshrc ~/.zshrc
ln -s -f ~/.dotfiles/.zlogin ~/.zlogin

ln -s -f ~/.dotfiles/.vimrc ~/.vimrc
case ${OSTYPE} in
	darwin*)
		ln -s -f -h ~/.dotfiles/.vim/ ~/.vim
		;;
	linux*)
		ln -s -f ~/.dotfiles/.vim/ ~/.vim
		;;
esac

ln -s -f ~/.dotfiles/.latexmkrc ~/.latexmkrc

ln -s -f ~/.dotfiles/.ssh/config ~/.ssh/config

ln -s -f ~/.dotfiles/.tmux.conf ~/.tmux.conf

