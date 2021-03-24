# Homebrew
#
# This installs homebrew if if it hasn't already and useful packages

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  echo "Installing Homebrew Bundle"
  # install the brew package manager
  brew tap Homebrew/bundle
fi

# install brew packages
brew bundle
