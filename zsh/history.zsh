# location of history file
HISTFILE=~/.history

# number of commands to remember
HISTSIZE=2000

# number of commands to save
SAVEHIST=$HISTSIZE

# zsh sessions will append their history list to the history file, rather than replace it. 
# multiple parallel zsh sessions will all have the new entries from their history lists added to the history file, 
# in the order that they exit.
setopt APPEND_HISTORY

# imports new commands from the history file, 
# and also causes your typed commands to be appended to the history fileshare history between multiple shells 
# straigh away, as oppose to when the session ends.
setopt SHARE_HISTORY

# If I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS

# If a new command line being added to the history list duplicates an older one, 
# the older command is removed from the list (even if it is not the previous event)
setopt HIST_IGNORE_ALL_DUPS

# When writing out the history file, older commands that duplicate newer ones are omitted
setopt HIST_SAVE_NO_DUPS

# Pretty    Obvious.  Right?
setopt HIST_REDUCE_BLANKS

# If the internal history needs to be trimmed to add the current command line, 
# setting this option will cause the oldest history event that has a duplicate to be lost 
# before losing a unique event from the list
setopt HIST_EXPIRE_DUPS_FIRST
