alias g='git'

alias gs='git status'

alias ga='git add'

alias gc='git commit'

alias gp='git push origin HEAD' # Pushes HEAD (current branch) to master

alias gpl='git pull --prune'

alias gco='git checkout'

alias gre='git rebase'

# stashing
alias gst='git stash'
alias gstpush='git stash push'
alias gstpop='git stash pop'

# reset
alias gr='git reset'
alias grhcc='git reset --hard HEAD' # Reset HARD to current commit
alias grmpc='git reset --mixed HEAD~1' # Reset MIXED to previous commit

# diffs
alias gd='git diff' # Changes in the working tree not yet staged for the next commit.
alias gds='git diff --cached' # Changes between the index and your last commit.
alias gdh='git diff HEAD' # Changes in the working tree since your last commit

alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
