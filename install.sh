# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/jittery/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo apt-get install build-essential
sudo apt-get update

brew install \
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
    xclip

# stow
stow zsh 
stow nvim

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# generate ~/.zsh_plugins.zsh
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh

# .zshrc
source ~/.zsh_plugins.zsh
source .zshrc

# install gcc (the brew version doesn't work well with treesitter for some reason)
sudo apt-get install gcc -y

# and install g++ cos idk wtf is going on
sudo apt install g++ -y

# install python neovim thingy
pip3 install pynvim
