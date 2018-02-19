rm ~/Library/Developer/Xcode/UserData/xcdebugger/Breakpoints_v2.xcbkptlist
mkdir -p ~/Library/Developer/Xcode/UserData/xcdebugger
ln -s $DOTFILES/xcode/Breakpoints_v2.xcbkptlist ~/Library/Developer/Xcode/UserData/xcdebugger/Breakpoints_v2.xcbkptlist

rm -rf ~/Library/Developer/Xcode/UserData/CodeSnippets
ln -s $DOTFILES/xcode/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets