if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
alias gh="git log --graph --pretty=format:'%Cred%h%Creset %d %s %Cgreen(%cr)%Creset %Cblue[%an]%Creset' --abbrev-commit --date=relative"
alias e="exit"
alias ff="firefox&"
alias sp="spyder&"
alias jn="jupyter notebook --ip 0.0.0.0"
alias h="hexchat&"
