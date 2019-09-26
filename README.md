# box

Vagrant virtual configuration with environment setup.

## Installation

After clonning this repository just run:

	cd box
	vagrant up
	vagrant ssh

To start a session within the box. See [Vagrant documentation][vagrant] for
details.

## Software installed

* Debian
* git
* rsync
* Vim
* cscope
* excuberant ctags
* wget
* htop
* zip/unzip
* bpython
* ipython
* zsh
* tmux

## Software configuration

* Zsh is configured with [Oh MyZsh][ohzsh]
* Vim is configured with [diacus/vimrc][vimrc]

[ohzsh]:http://ohmyz.sh
[vimrc]:https://github.com/diacus/vimrc
[vagrant]:https://www.vagrantup.com/docs
