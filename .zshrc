autoload colors
colors
autoload -Uz vcs_info

setopt prompt_subst
#zstyle ':vcs_info:*' formats "%b"
#zstyle ':vcs_info:*' actionformats '%s][* %F{green}%b%f(%F{red}%a%f)'

precmd() {
	echo -ne "\033]0;${USER}@${HOST}\007"
	vcs_info
}

#文字コードをUTF-8に変更
export LANG=ja_JP.UTF-8

#git
zstyle ':vcs_info:*' formats '%F{green}%b%f'    


#プロンプト
local p_cdir="%(!,%F{red},%F{green})%~%f"
local p_info="%n@%m"
PROMPT="$p_info%# " 
RPROMPT='${vcs_info_msg_0_:+($vcs_info_msg_0_)}[$p_cdir]' 


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
