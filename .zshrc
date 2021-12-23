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
# compinit
compinit -d ~/.cache/zsh/.zcompdump
_comp_options+=(globdots)		# Include hidden files.

## https://blog.sebastian-daschner.com/entries/zsh-aliases
# blank aliases
typeset -a baliases
baliases=()

balias() {
  alias $@
  args="$@"
  args=${args%%\=*}
  baliases+=(${args##* })
}

# ignored aliases
typeset -a ialiases
ialiases=()

ialias() {
  alias $@
  args="$@"
  args=${args%%\=*}
  ialiases+=(${args##* })
}

# functionality
expand-alias-space() {
  [[ $LBUFFER =~ "\<(${(j:|:)baliases})\$" ]]; insertBlank=$?
  if [[ ! $LBUFFER =~ "\<(${(j:|:)ialiases})\$" ]]; then
    zle _expand_alias
  fi
  zle self-insert
  if [[ "$insertBlank" = "0" ]]; then
    zle backward-delete-char
  fi
}
zle -N expand-alias-space

bindkey " " expand-alias-space
bindkey -M isearch " " magic-space

alias la="ls -lah --color"
ialias ll="exa --long --header --icons -a --sort=type --group-directories-first --no-time --no-user"
# ialias ll="exa --header --icons -a --sort=type --group-directories-first --no-time --no-user"
alias gs="git status"
alias zrc="nvim ~/.zshrc"
alias src="source ~/.zshrc"
alias ..="cd .."
alias dev="cd ~/dev"
ialias bat="batcat"

## fish like abbr
# declare a list of expandable aliases to fill up later
#typeset -a ealiases
#ealiases=()
#
## write a function for adding an alias to the list mentioned above
#function abbrev-alias() {
#    alias $1
#    ealiases+=(${1%%\=*})
#}
#
## expand any aliases in the current line buffer
#function expand-ealias() {
#    if [[ $LBUFFER =~ "\<(${(j:|:)ealiases})\$" ]]; then
#        zle _expand_alias
#        zle expand-word
#    fi
#    zle magic-space
#}
#zle -N expand-ealias
#
## Bind the space key to the expand-alias function above, so that space will expand any expandable aliases
#bindkey ' '        expand-ealias
#bindkey '^ '       magic-space     # control-space to bypass completion
#bindkey -M isearch " "      magic-space     # normal space during searches
#
## A function for expanding any aliases before accepting the line as is and executing the entered command
#expand-alias-and-accept-line() {
#    expand-ealias
#    zle .backward-delete-char
#    zle .accept-line
#}
#zle -N accept-line expand-alias-and-accept-line
#
#abbrev-alias la="ls -lah --color"
## abbrev-alias ll="exa --long --header --icons -a --sort=type --group-directories-first --no-time --no-user"
#abbrev-alias gs="git status"
#abbrev-alias zrc="nvim ~/.zshrc"
#abbrev-alias src="source ~/.zshrc"
#abbrev-alias ..="cd .."
### abbr - end
#
## aliases
#ialias bat="batcat"
#ialias ls="exa --long --header --icons -a --sort=type --group-directories-first --no-time --no-user"

# My custom prompt
# source ~/.config/zsh/prompt.zsh-theme # custom prompt

# All scripts from oh-my-zsh goes here
source ~/.config/zsh/git.zsh # from oh-my-zsh

# zsh-autosuggestions
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Spaceship prompt
autoload -U promptinit; promptinit
prompt spaceship

# node version manager
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# zsh-syntax-highlighting
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
