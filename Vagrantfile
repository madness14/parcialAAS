Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.define "dns" do |dns|
    dns.vm.hostname = "ns.patitohosting.licic"
    dns.vm.network "private_network", ip: "192.168.56.103"
    dns.vm.provision "ansible" do |ansible|
      ansible.playbook = "roles/playbookDNS.yml"
      ansible.inventory_path = "inventory.ini"
    end
  end

  config.vm.define "db" do |db|
    db.vm.hostname = "db.patitohosting.licic"
    db.vm.network "private_network", ip: "192.168.56.102"
    db.vm.provision "ansible" do |ansible|
      ansible.playbook = "roles/playbookBD.yml"
      ansible.inventory_path = "inventory.ini"
    end
  end

  config.vm.define "ldap" do |ldap|
    ldap.vm.hostname = "ldap.patitohosting.licic"
    ldap.vm.network "private_network", ip: "192.168.56.105"
    ldap.vm.provision "ansible" do |ansible|
      ansible.playbook = "roles/playbookLDAP.yml"
      ansible.inventory_path = "inventory.ini"
    end
  end

  config.vm.define "email" do |email|
    email.vm.hostname = "email.patitohosting.licic"
    email.vm.network "private_network", ip: "192.168.56.104"
    email.vm.provision "ansible" do |ansible|
      ansible.playbook = "roles/playbookCorreo.yml"
      ansible.inventory_path = "inventory.ini"
    end
  end

  config.vm.define "web" do |web|
    web.vm.hostname = "www.patitohosting.licic"
    web.vm.network "private_network", ip: "192.168.56.101"
    web.vm.provision "ansible" do |ansible|
      ansible.playbook = "roles/playbookWeb.yml"
      ansible.inventory_path = "inventory.ini"
    end
  end
end

