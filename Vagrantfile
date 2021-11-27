# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  # config.vm.network :forwarded_port, guest: 3000, host: 3000
  # config.vm.synced_folder "../src", "/src"
  # config.vm.synced_folder "../data", "/data"
  # config.vm.synced_folder "../scripts", "/opt/bin"
  config.vm.provision "shell", inline: <<-SHELL
    apt -y update
    apt -y upgrade
    xargs apt -y install < /vagrant/packages.txt
    chsh -s /usr/bin/zsh vagrant
    su -s /usr/bin/zsh -c "/vagrant/setup.zsh" vagrant
  SHELL
end
