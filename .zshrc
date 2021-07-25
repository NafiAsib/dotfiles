# setopt promptsubst # enable command substitution in prompt

autoload -U colors && colors

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# auto tab completion
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

## fish like abbr
# declare a list of expandable aliases to fill up later
typeset -a ealiases
ealiases=()

# write a function for adding an alias to the list mentioned above
function abbrev-alias() {
    alias $1
    ealiases+=(${1%%\=*})
}

# expand any aliases in the current line buffer
function expand-ealias() {
    if [[ $LBUFFER =~ "\<(${(j:|:)ealiases})\$" ]]; then
        zle _expand_alias
        zle expand-word
    fi
    zle magic-space
}
zle -N expand-ealias

# Bind the space key to the expand-alias function above, so that space will expand any expandable aliases
bindkey ' '        expand-ealias
bindkey '^ '       magic-space     # control-space to bypass completion
bindkey -M isearch " "      magic-space     # normal space during searches

# A function for expanding any aliases before accepting the line as is and executing the entered command
expand-alias-and-accept-line() {
    expand-ealias
    zle .backward-delete-char
    zle .accept-line
}
zle -N accept-line expand-alias-and-accept-line


abbrev-alias ll="ls -lah --color"
abbrev-alias gs="git status"
abbrev-alias zshrc="nvim ~/.zshrc"
abbrev-alias src="source ~/.zshrc"
abbrev-alias ..="cd .."
## abbr - end

# source ~/.config/zsh/prompt.zsh-theme # custom prompt
source ~/.config/zsh/git.zsh # from oh-my-zsh
autoload -U promptinit; promptinit
prompt spaceship
