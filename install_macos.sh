# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

# install packages and apps from brew
brew install  \
	gcc \
	make \
	cmake \
	zsh \
	antidote \
	git \
	neovim \
	stow \
	yarn \
	fzf \
	fd \
	ripgrep \
	gh \
	node \
	bat \
    adobe-creative-cloud \
    basictex \
    bambu-studio \
    discord \
    font-awesome-terminal-fonts \
    iterm2 \
    jellyfin-media-player \
    microsoft-auto-update \
    microsoft-powerpoint \
    microsoft-teams \
    microsoft-word \
    notion \
    numi \
    obsidian \
    orcaslicer \
    rectangle \
    spotify \
    telegram-desktop \
    ticktick \
    typst \
    via \
    visual-studio-code \
    vlc \

# stow
stow zsh 
stow nvim

# generate ~/.zsh_plugins.zsh
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh

# .zshrc
source ~/.zsh_plugins.zsh
source .zshrc
