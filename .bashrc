orange=$(tput setaf 166);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[\033]0;\W\007\]"; # working directory base name
PS1+="\[${bold}\]\n";
PS1+="\[${orange}\]\u";     #username
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\w";
PS1+="\n";                  #newline
PS1+="\[${white}\]$ \[${reset}\]";
export PS1;

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\"";}
export DISPLAY=localhost:0.0
