# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.2"
  config.vm.define "node1" do |centos72|
      centos72.vm.hostname = "node1.local"
      centos72.vm.synced_folder ".", "/vagrant"
      centos72.vm.network "forwarded_port", guest: 443, host: 4431
      centos72.vm.network "private_network", ip: "192.168.33.11", virtualbox__intnet: "intnet"
      centos72.vm.provider "virtualbox" do |vb|
          vb.name = "node1"
          vb.customize ["modifyvm", :id, "--memory", 1024]
      end
  end
  config.vm.define "node2" do |centos72|
      centos72.vm.hostname = "node2.local"
      centos72.vm.synced_folder ".", "/vagrant"
      centos72.vm.network "forwarded_port", guest: 443, host: 4432
      centos72.vm.network "private_network", ip: "192.168.33.12", virtualbox__intnet: "intnet"
      centos72.vm.provider "virtualbox" do |vb|
          vb.name = "node2"
	  vb.customize ["modifyvm", :id, "--memory", 1024]
      end
  end
  config.vm.define "node3" do |centos72|
      centos72.vm.hostname = "node3.local"
      centos72.vm.synced_folder ".", "/vagrant"
      centos72.vm.network "forwarded_port", guest: 443, host: 4433
      centos72.vm.network "private_network", ip: "192.168.33.13", virtualbox__intnet: "intnet"
      centos72.vm.provider "virtualbox" do |vb|
          vb.name = "node3"
          vb.customize ["modifyvm", :id, "--memory", 1024]
      end
  end
  config.vm.define "node4" do |centos72|
      centos72.vm.hostname = "node4.local"
      centos72.vm.synced_folder ".", "/vagrant"
      centos72.vm.network "forwarded_port", guest: 443, host: 4434
      centos72.vm.network "private_network", ip: "192.168.33.14", virtualbox__intnet: "intnet"
      centos72.vm.provider "virtualbox" do |vb|
          vb.name = "node4"
          vb.customize ["modifyvm", :id, "--memory", 1024]
      end
  end
  config.vm.define "node5" do |centos72|
      centos72.vm.hostname = "node5.local"
      centos72.vm.synced_folder ".", "/vagrant"
      centos72.vm.network "forwarded_port", guest: 443, host: 4435
      centos72.vm.network "private_network", ip: "192.168.33.15", virtualbox__intnet: "intnet"
      centos72.vm.provider "virtualbox" do |vb|
          vb.name = "node5"
          vb.customize ["modifyvm", :id, "--memory", 1024]
      end
  end
  config.vm.provision :shell, path: "bootstrap.sh"
end
