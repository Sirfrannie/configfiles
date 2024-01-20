HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
shopt -s histappend

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

alias xc='tmux show-buffer | xclip -selection clipboard'
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

PS1='${debian_chroot:+($debian_chroot)}\u@\h:\[\e[01;32m\]\w\[\e[0m\]\$ '
#PS1='┌──[\[\e[01;32m\]\w\[\e[0m\]]\[\e[06;34m\] ⛾\[\e[0m\]\n└─(\[\e[01;36m\]\u\[\e[0m\])\[\e[01;34m\]»\[\e[0m\] '
#PS1='┌──(\h)─[\[\e[01;32m\]\w\[\e[0m\]] ${debian_chroot:+($debian_chroot)}\n└─(\[\e[01;36m\]\u\[\e[0m\])\[\e[01;34m\]»\[\e[0m\] '
export EDITOR='vim'
export BASH_SILENCE_DEPRECATION_WARNING=1
