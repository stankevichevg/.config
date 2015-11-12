# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export PS1="\`if [ \$? = 0 ] ; then echo '\[\e[35;1m\]\!:\[\e[0;32m\](\[\e[30;1m\]\u@\h\[\e[0;32m\]|\[\e[30;1m\]\j\[\e[0;32m\]|\[\e[30;1m\]\w\[\e[0;32m\])->\[\e[0m\]' ; else echo '\[\e[35;1m\]\!:\[\e[31;1m\](\[\e[30;1m\]\u@\h\[\e[31;1m\]|\[\e[30;1m\]\j\[\e[31;1m\]|\[\e[30;1m\]\w\[\e[31;1m\])->\[\e[0m\]' ; fi\`"

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias ls="ls --color=always" 
alias grep="grep --color=always"
alias egrep="egrep --color=always"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi