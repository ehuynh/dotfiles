install_theme () {
  mkdir -p "$HOME/code/iterm2"

  iterm_theme_dir="$HOME/code/iterm2/themes"

  if [ ! -d "$iterm_theme_dir" ]; then
    echo "downloading iterm themes"
    git clone git@github.com:mbadolato/iTerm2-Color-Schemes.git "$iterm_theme_dir"
    # echo "installing solarized theme"
    # open "$solarized_theme_dir/iterm2-colors-solarized/Solarized Dark.itermcolors"
  fi
}

install_theme
