install_theme () {
  mkdir -p "$HOME/code/iterm2"

  solarized_theme_dir="$HOME/code/iterm2/solarized"

  if [ ! -d "$solarized_theme_dir" ]; then
    echo "downloading solarized theme"
    git clone https://github.com/altercation/solarized.git "$solarized_theme_dir"
    echo "installing solarized theme"
    open "$solarized_theme_dir/iterm2-colors-solarized/Solarized Dark.itermcolors"
  fi
}

install_theme
