VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'chef/ubuntu-12.04'
  config.vbguest.auto_update = false if Vagrant.has_plugin?('vagrant-vbguest')
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
  end
  config.vm.network 'forwarded_port', guest: 80, host: 8080
  config.vm.network 'forwarded_port', guest: 8888, host: 8888
  config.vm.network 'private_network', ip: '192.168.33.10'
  config.vm.provision 'shell', inline: 'sudo /vagrant/init.sh'
end
