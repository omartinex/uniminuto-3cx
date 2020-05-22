# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "debian/stretch64"
  config.vm.define "3cx"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.

  #config.vm.network "forwarded_port", guest: 5015, host: 5015, id: '3cxman'
  #config.vm.network "forwarded_port", guest: 5000, host: 5000, id: '3cxman0'
  #config.vm.network "forwarded_port", guest: 5001, host: 5001, id: '3cxman1'
  #config.vm.network "forwarded_port", guest: 5060, host: 5060, id: '3cxman5', protocol: "tcp"
  #config.vm.network "forwarded_port", guest: 5060, host: 5060, id: '3cxman4', protocol: "udp"
  #config.vm.network "forwarded_port", guest: 5090, host: 5090, id: '3cxman6', protocol: "tcp"
  #config.vm.network "forwarded_port", guest: 5090, host: 5090, id: '3cxman7', protocol: "udp"
  #config.vm.network "forwarded_port", guest: 6060, host: 6060, id: '3cxman3', protocol: "tcp"
  #config.vm.network "forwarded_port", guest: 6060, host: 6060, id: '3cxman2', protocol: "udp"

  #for i in 9000..9255
  #  config.vm.network "forwarded_port", guest: i, host: i, protocol: "udp"
  #end

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #config.vm.network "private_network", ip: "192.168.10.100"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"
  config.vm.network "public_network",
    use_dhcp_assigned_default_route: true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision :shell, path: "conf/bootstrap.sh"
end