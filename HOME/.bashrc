# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim="nvim"
#PS1='[\u@\h \W]\$ '
#PS1='\e[1;32m[\u@\h \e[1;34m\W\e[1;32m]\$\e[0;0m '  # The same thing but with colors
# The same thing but word wrapping is fixed
# https://unix.stackexchange.com/questions/105958/terminal-prompt-not-wrapping-correctly
PS1='\[\e[1;32m\][\u@\h \[\e[1;34m\]\W\[\e[1;32m\]]\$\[\e[0;0m\] '

# Set neovim as default editor
export EDITOR="nvim"
export VISUAL="nvim"

# Add texlive to path
export PATH=$PATH:/opt/texlive/2021/bin/x86_64-linux
export MANPATH=$MANPATH:/opt/texlive/2021/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/opt/texlive/2021/texmf-dist/doc/info

# Add $HOME/bin to path
export PATH=$PATH:$HOME/bin

# Without this, bash won't autocomplete after man and sudo
complete -c man which
complete -cf sudo
