# If not running interactively, don't do anything
[ -z "$PS1" ] && return

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
if [ "$color_prompt" = yes ]; then
  if [ $(id -u) -eq 0 ]; then
    # root user
    export PS1='\e[32m\e[1m\u@\h\e[0m:\e[94m\w \e[32m\e[1m#\e[0m\e[0m\e[39m\e[49m '
  else
    # non root
    export PS1='\e[92m\e[1m\u@\h\e[0m:\e[94m\w \e[92m\e[1m$\e[0m\e[0m\e[39m\e[49m '
  fi
else
  if [ $(id -u) -eq 0 ]; then
    # root user
    export PS1='\u@\h:\w # '
  else
    # non root
    export PS1='\u@\h:\w $ '
  fi
fi
