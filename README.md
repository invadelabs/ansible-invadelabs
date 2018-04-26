ansible-invadelabs
==================
Ansible run for invadelabs using either [invadelabs/vbox-invadelabs](https://github.com/invadelabs/vbox-invadelabs) on local or terraform for cloud.

# Install Ansible on host machine
~~~
sudo apt-get install -y ansible
~~~

# Install Ansible Galaxy roles and run our playbook:
~~~
ansible-galaxy install -r requirements.yml -p roles/
ansible-playbook -i hosts site.yml -b
~~~

# Example Ansible Commands
[EXAMPLES.md](EXAMPLES.md) - Getting started, basic commands, example usage.
