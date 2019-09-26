SHELL:=bash
githost=https://github.com/diacus
myzsh=https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master
host=/vagrant

# Vimrc configuration
vimrcv=1.1
vimrc_pkg=$(githost)/vimrc/archive/v$(vimrcv).zip

all: vim zsh

vim:
	wget $(vimrc_pkg)
	unzip v$(vimrcv).zip
	pushd vimrc-$(vimrcv) && make clean && make install && popd
	$(RM) -r vimrc-$(vimrcv) v$(vimrcv).zip

zsh:
	wget $(myzsh)/tools/install.sh
	sed -i '/env zsh/d' install.sh
	sh install.sh
	$(RM) install.sh

tmux:
	cp -f /vagrant/tmux.conf $(HOME)/.tmux.conf

clean:
	$(RM) -r $(HOME)/.vim $(HOME)/.zsh* $(HOME)/.oh-my-zsh
