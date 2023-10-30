case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
shopt -s histappend

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

alias xc='tmux show-buffer | xclip -selection clipboard'
alias firefox='flatpak run org.mozilla.firefox &'
alias ghidra='flatpak run org.ghidra_sre.Ghidra &'
alias burp='~/BurpSuiteCommunity/BurpSuiteCommunity &'
alias discord='flatpak run com.discordapp.Discord &'

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\[\e[01;32m\]\w\[\e[0m\]\$ '
export EDITOR='vim'
export BASH_SILENCE_DEPRECATION_WARNING=1
