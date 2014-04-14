export MANPATH=/opt/local/man:$MANPATH

autoload colors
colors


#プロンプト
local p_cdir="%B%(!,%F{red},%F{green})[%~]%f%b"
local p_info="%n@%m"
PROMPT="$p_cdir"$'\n'"$p_info%# " 

#keychainがインストールされている場合は使う
if [ -f "/usr/bin/keychain" ]
then
	/usr/bin/keychain ~/.ssh/id_rsa
	source ~/.keychain/$HOST-sh
fi

#補完　
autoload -U compinit
compinit

#zsh: no matches found:の対策
setopt nonomatch

#MacとLinuxでlsのオプションを変える
case ${OSTYPE} in
	darwin*)
		#Mac向けの設定
		export LSCOLORS=gxfxcxdxbxegedabagacad
		alias ls="ls -G"
		;;
	linux*)
		#Linux向けの設定
		alias ls="ls --color"
		;;
esac
