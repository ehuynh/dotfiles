# Homebrew
#
# This installs homebrew if if it hasn't already and useful packages

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing Chisel"
brew install chisel

echo "Installing Cask"
brew install caskroom/cask/brew-cask

echo "Installing Reveal"
brew cask install reveal

echo "Installing Dash"
brew cask install dash

echo "Installing sublime-text"
brew cask install sublime-text

echo "Installing iterm"
brew cask install iterm2

echo "Installing sourcetree"
brew cask install sourcetree

echo "Installing flux"
brew cask install flux

