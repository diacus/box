# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-jessie64"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 5000, host: 5000
  config.vm.synced_folder "../src", "/src"
  config.vm.synced_folder "../data", "/data"
  config.vm.synced_folder "../scripts", "/opt/bin"
  config.vm.provision "shell", inline: <<-SHELL
    apt-get -y update
    apt-get -y upgrade
    apt-get -y install vim build-essential python3 python3-pip git openjdk-7-jdk
    apt-get -y install tmux rsync cscope ctags wget htop zsh zip unzip curl
    chsh -s /bin/zsh vagrant
    su - vagrant -c 'make -f /vagrant/setup.mk'
    su - vagrant -c 'cp /vagrant/tmux.conf /home/vagrant/.tmux.conf'
  SHELL
end
