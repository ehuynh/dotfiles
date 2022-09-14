# load antigen
source $(brew --prefix)/share/antigen/antigen.zsh

# add zsh-autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# add extra completions to zsh
antigen bundle zsh-users/zsh-completions

# add syntax highlighting (this must be last out of all the bundles)
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done.
antigen apply

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=30'
ZSH_DISABLE_COMPFIX="true"
