# ansible-invadelabs

Ansible run for invadelabs.

# Install Ansible on controller machine
~~~
sudo apt-get install -y ansible
~~~

# Install python on guest machine
~~~
Fedora 28:
sudo dnf install -y python2

Ubuntu 18.04:
sudo apt-get install -y python-minimal
~~~

# Install Ansible Galaxy roles, check, and run our playbooks:
~~~
# local.yml = internal network, invadelabs.com.yml = external

# Download community modules:
ansible-galaxy install -r requirements.yml -p roles/

# Check (don't take action) and show diff:
ansible-playbook -i hosts local.yml --check --diff
ansible-playbook -i hosts invadelabs.com.yml --check --diff --private-key=~/.ssh/google_compute_engine

# Take action and show diff:
ansible-playbook -i hosts local.yml --diff
ansible-playbook -i hosts invadelabs.com.yml --diff --private-key=~/.ssh/google_compute_engine

# Ex limit:
ansible-playbook -i hosts local.yml --diff -l drew-serv,drew-piv3

# Ex start at task / step
ansible-playbook -i hosts -l drew-serv --start-at-task="httpd; add site templates" --step
~~~

# Example Ansible Commands
[EXAMPLES.md](EXAMPLES.md) - Getting started, basic commands, example usage.
