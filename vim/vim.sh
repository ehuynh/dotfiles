install_vundle () {
	vundle_dir="$HOME/.vim/bundle/Vundle.vim"

	if [ ! -d "$vundle_dir" ]; then
		echo "cloning vundle"
		git clone https://github.com/gmarik/Vundle.vim.git "$vundle_dir"
	fi
}

mkdir -p "$HOME/.vim/bundle"

install_vundle
