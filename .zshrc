export MANPATH=/opt/local/man:$MANPATH
export LSCOLORS=gxfxcxdxbxegedabagacad

autoload colors
colors
local p_cdir="%B%F{green}[%~]%f%b"
local p_info="%n@%m"
PROMPT="$p_cdir"$'\n'"$p_info%% " 


autoload -U compinit
compinit
alias ls="ls -G"
