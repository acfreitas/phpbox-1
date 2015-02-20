Vagrant.configure(2) do |config|
    config.vm.box = "chef/debian-7.6"
    config.vm.hostname = 'phpbox'
    
    config.vm.network :private_network, ip: '192.168.33.10'
    config.vm.network :forwarded_port, guest: 80, host: 80
    config.vm.network :forwarded_port, guest: 3306, host: 3306
    config.vm.network :forwarded_port, guest: 5432, host: 5432
    config.vm.network :forwarded_port, guest: 27017, host: 27017
    config.vm.network :forwarded_port, guest: 9000, host: 9000
    
    config.vm.synced_folder "/Users/eric/Sites", "/vagrant", type: "nfs"

    config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", "512"]
    end
    
    config.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = [
            "cookbooks",
            "~/.berkshelf/cookbooks"
        ]
        chef.add_recipe 'main'
    end

    config.vm.post_up_message = "Environment ready to be used."
end
