# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# aliases
alias llt="exa -T --icons"
alias nv='nvim'
alias py='python3'
alias cs='clear'
alias ve='source venv/bin/activate'
alias dve='deactivate'

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
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ll="exa --header --long --all --icons --git"
