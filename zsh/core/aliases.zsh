# Cross-platform core aliases
#
LS_COMMON_OPTS=(--color=auto)
ls() { command ls "${LS_COMMON_OPTS[@]}" "$@" }
la() { ls -A "${LS_COMMON_OPTS[@]}" "$@" }
ll() { ls -lh "${LS_COMMON_OPTS[@]}" "$@" }
lla() { ls -lha "${LS_COMMON_OPTS[@]}" "$@" }
alias grep="grep --color=auto"

# Safe operations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'

# Directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Platform-specific aliases should go in platform files
