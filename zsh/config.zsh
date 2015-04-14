# initialize autocomplete here. e.g. this allows git auto completion
autoload -U compinit && compinit

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# set default editor to vim
export EDITOR=vim

# enable color
export CLICOLOR=1

