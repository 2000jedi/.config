ALL := $(HOME)/.zshrc $(HOME)/.gitconfig zsh

$(HOME)/.zshrc:
	ln -s $(shell readlink -f .zshrc) $(HOME)/.zshrc

$(HOME)/.gitconfig:
	ln -s $(shell readlink -f .gitconfig) $(HOME)/.gitconfig

zsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${HOME}/.oh-my-zsh/custom/themes/powerlevel10k
	source $(HOME)/.zshrc


install-yay:
	yay -Syu git-delta zsh git openssh lazygit neovim

