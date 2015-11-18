install_vundle () {
	vundle_dir="$HOME/.vim/bundle/Vundle.vim"

	if [ ! -d "$vundle_dir" ]; then
		echo "cloning vundle"
		git clone https://github.com/gmarik/Vundle.vim.git "$vundle_dir"
	fi
}

install_theme () {
  mkdir -p "$HOME/code/vim"

  solarized_theme_dir="$HOME/code/vim/vim-colors-solarized"

  if [ ! -d "$solarized_theme_dir" ]; then
    echo "downloading solarized theme"
    git clone https://github.com/altercation/vim-colors-solarized.git "$solarized_theme_dir"
    echo "installing solarized theme"
    mkdir -p ~/.vim/colors/
    cp $solarized_theme_dir/colors/solarized.vim ~/.vim/colors/
  fi
}

mkdir -p "$HOME/.vim/bundle"

install_vundle
install_theme
