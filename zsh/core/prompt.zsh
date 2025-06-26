# Minimal, fast, cross-shell prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '(%b%u%c)'
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'

setopt prompt_subst

function prompt_path() {
    local current_path="${PWD/#$HOME/~}"
    local path_parts=(${(s:/:)current_path})
    local num_parts=${#path_parts}
    
    if (( num_parts > 2 )); then
        echo "${path_parts[-2]}/${path_parts[-1]}"
    else
        echo "$current_path"
    fi
}

PROMPT='%F{blue}%n@%m%f %F{green}$(prompt_path)%f %F{yellow}${vcs_info_msg_0_}%f%F{red}%(?.. [%?])%f'$'\n''> '
RPROMPT=''  # Clear RPROMPT (or keep it if you want right-aligned info)

# For slow environments, replace with:
# PROMPT='%F{blue}%n%f %F{green}%~%f %# '
