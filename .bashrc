# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h $PWD]
$ '

for i in $HOME/Shell/*.sh
do
    . $i
done
