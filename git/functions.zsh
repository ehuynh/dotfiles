pr() {
    open "https://github.com/$(org_name)/$(repo_name)/pull/new/$(branch_name)"
}

gpr() {
  git fetch origin && git reset --hard origin/$(branch_name)
}

org_name() {
 git remote -v | grep -m 1 "(push)" | sed -e "s/.*github.com[:/]\(.*\)\/.*.git.*/\1/"
}

repo_name() {
  git remote -v | grep -m 1 "(push)" | sed -e "s/.*github.com[:/].*\/\(.*\)\.git.*/\1/"
}

branch_name() {
  git name-rev --name-only HEAD
}
