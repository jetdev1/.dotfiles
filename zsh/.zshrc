# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# aliases
alias llt="eza -T --icons"
alias nv='nvim'
alias py='python3'
alias gs='git status'
alias cs='clear'
alias ve='source venv/bin/activate'
alias dve='deactivate'
alias nf='neofetch'
alias mpr='mpremote'
alias brewup='brew upgrade $(brew outdated --cask --greedy --quiet) --cask'
alias brewout='brew outdated --cask --greedy'
PATH="/opt/homebrew/bin:$PATH"

# move latest file from screenshot to current directory

# Function to find and move the newest file
move_newest_file() {
    local new_name=$1
    local desktop_dir=~/Desktop
    local current_dir=$(pwd)

    # Find the newest file on the desktop
    local newest_file=$(ls -t $desktop_dir/* 2> /dev/null | head -n 1)

    if [[ -z $newest_file ]]; then
        echo "No files found on the desktop."
        return 1
    fi

    # Move and rename the file to the current directory
    mv "$newest_file" "$current_dir/$new_name"
    
    if [[ $? -eq 0 ]]; then
        echo "Moved and renamed file to $current_dir/$new_name"
    else
        echo "Failed to move and rename the file."
    fi
}

mf() {
    # Check if the user provided a new name for the file
    if [[ -z $1 ]]; then
        echo "Usage: $0 <new_filename>"
    else
        # Call the function with the user-specified name
        move_newest_file "$1"
    fi

}

# Create portable python venv
cve () {
    python3 -m venv --copies venv
    sed -i '43s/.*/VIRTUAL_ENV="$(cd "$(dirname "$(dirname "${BASH_SOURCE[0]}" )")" \&\& pwd)"/' venv/bin/activate
    sed -i '1s/.*/#!\/usr\/bin\/env python/' venv/bin/pip*
}
# Fixing pip packages with hardcoded paths
fixpip () {
    sed -i '1s/.*python$/#!\/usr\/bin\/env python/' venv/bin/*
}

# source antidote
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ll="eza --header --long --all --icons --git"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
source <(fzf --zsh)
