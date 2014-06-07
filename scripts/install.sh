DOTFILES_ROOT=$HOME/.dotfiles

link_files () {
  ln -s $1 $2
  echo "linked $1 to $2"
}

remove_existing_file () {
  if [ -f $1 ] || [ -h $1 ]
  then
    rm -rf $dest
    echo "removed existing $dest"
  fi

}

install_dotfiles () {
  echo "installing dotfiles"

  for source in `find $DOTFILES_ROOT -name \*.symlink`
  do
    dest="$HOME/.`basename \"${source%.*}\"`"
    remove_existing_file $dest
    link_files $source $dest
  done

  echo "done"
}

install_dotfiles
