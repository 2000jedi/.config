ALL := $(HOME)/.zshrc zsh

$(HOME)/.zshrc:
	ln -s $(shell readlink -f .zshrc) $(HOME)/.zshrc

zsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${HOME}/.oh-my-zsh/custom/themes/powerlevel10k
