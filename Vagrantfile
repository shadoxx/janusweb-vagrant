Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "janusweb"
  
  ## FORWARDED PORTS
  config.vm.network "forwarded_port", guest: 80, host: 8000     # Apache
  config.vm.network "forwarded_port", guest: 8080, host: 8080   # CORS Proxy
  config.vm.network "forwarded_port", guest: 5566, host: 5566   # Janus Prescence Server

  ## NETWORKING
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  ## PROVISION
  config.vm.provision "shell", path: "provision/01-install-os-packages.sh" 
end
