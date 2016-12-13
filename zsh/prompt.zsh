# turns on command substitution in the prompt
# turn on command substitution in the prompt
setopt prompt_subst

# load the colors function. this allows colors to be used in the prompt below
autoload -U colors && colors

PROMPT="%{$fg[black]%}[%{$fg[blue]%}%n%{$fg[black]%}@%{$fg[green]%}%m %{$fg[red]%}%~%{$fg[black]%}]$%{$reset_color%} "
RPROMPT='$(git_info)%{$reset_color%}'

git_info() {
  if git_dir &>/dev/null; then
    echo "$(current_branch)$(repo_dirty)$(needs_push)$(current_sha)"
  fi
}

current_branch() {
  local branch_name="$(current_branch_name)"

  if [ "$branch_name" = "HEAD" ]; then
    echo "%{$fg[red]%}DETACHED%{$reset_color%}"
  else
    echo "%{$fg[blue]%}$branch_name%{$reset_color%}"
  fi
}

current_sha() {
  echo " %{$fg[yellow]%}$(git rev-parse --short HEAD 2>/dev/null)%{$reset_color%}"
}

repo_dirty() {
  if [[ ! $(git status 2>/dev/null) =~ "nothing to commit, working tree clean" ]]; then
    echo " %{$fg[red]%}✗%{$reset_color%}"
  fi
}

needs_push() {
  if [[ -n "$(git cherry -v origin/$(current_branch_name) 2>/dev/null)" ]]; then
    echo " %{$fg[red]%}⬆%{$reset_color%} "
  fi
}

current_branch_name() {
  git symbolic-ref --short HEAD 2>/dev/null
}

git_dir() {
  git rev-parse --git-dir 2>/dev/null
}
