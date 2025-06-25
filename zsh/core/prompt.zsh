# Minimal, fast, cross-shell prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '(%b%u%c)'
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'

setopt prompt_subst
PROMPT='%F{blue}%n@%m%f %F{green}%~%f %F{yellow}${vcs_info_msg_0_}%f %# '
RPROMPT='%F{red}%(?..[%?])%f'

# For slow environments, replace with:
# PROMPT='%F{blue}%n%f %F{green}%~%f %# '
