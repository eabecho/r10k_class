# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "puppet-nocm"

  config.vm.hostname = "puppet.example.com"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-fusion503-nocm.box"

  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
  
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "384"]
  end

  config.vm.provision :shell do |shell|
    shell.path = "provision/provision.sh"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "provision"
    puppet.manifest_file  = "provision.pp"
    puppet.module_path    = "provision/modules"
  end
end
