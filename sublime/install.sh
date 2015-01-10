echo "installing sublime settings"

# sublime dir
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 2/Packages

# symlink the User settings
for source in `find $DOTFILES/sublime/User -name \*.\*`
do
	file=`basename $source`
	rm "$sublime_dir/User/$file"
	ln -s $source "$sublime_dir/User/$file"
done

echo "completed installing sublime settings"
