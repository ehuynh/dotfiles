# sublime dir
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 2/Packages

init_user_settings () {
		# symlink the User settings
	for source in `find $DOTFILES/sublime/User -name \*.\*`
	do
		file=`basename $source`
		rm "$sublime_dir/User/$file"
		ln -s $source "$sublime_dir/User/$file"
	done
}

init_soda_theme () {
	soda_dir="$sublime_dir/Theme - Soda"

	if [ ! -d "$soda_dir" ]; then
		echo "its not there"
		git clone https://github.com/buymeasoda/soda-theme/ "$soda_dir"
	fi
}

if [ -d "$sublime_dir" ]; then
	echo "installing sublime settings"

	init_user_settings
	init_soda_theme

	echo "completed installing sublime settings"
fi
