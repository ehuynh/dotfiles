alias g='git'

alias gs='git status'

alias ga='git add'
alias gapp='ga -p $(gs | pick | awk '\''{ print $2 }'\'')'

alias gc='git commit -v'

alias gp='git push origin HEAD' # Pushes HEAD (current branch) to master

alias gpl='git pull --prune'

alias gco='git checkout'
alias gcop="git branch -l --sort=-committerdate | pick | awk '{ print $1 }' | xargs git checkout"

alias gre='git rebase'

# diffs
alias gd='git diff' # Changes in the working tree not yet staged for the next commit.
alias gds='git diff --cached' # Changes between the index and your last commit.
alias gdh='git diff HEAD' # Changes in the working tree since your last commit

alias glog="git log --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# gitignore files
alias gitignore-swift='curl https://raw.githubusercontent.com/github/gitignore/master/Swift.gitignore > .gitignore'
alias gitignore-objc='curl https://raw.githubusercontent.com/github/gitignore/master/Objective-C.gitignore > .gitignore'
alias gitignore-ruby='curl https://raw.githubusercontent.com/github/gitignore/master/Ruby.gitignore > .gitignore'
alias gitignore-node='curl https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore > .gitignore'
