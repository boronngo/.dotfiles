if [ -z $TMUX ]
then
	if tmux has-session && tmux list-sessions | grep -v 'attached'
	then
		tmux attach
	else
		tmux
	fi
fi
