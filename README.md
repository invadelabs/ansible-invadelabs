# ansible-invadelabs

Ansible run for invadelabs.

# Install Ansible on controller machine
~~~
sudo apt-get install -y ansible
sudo dnf install -y ansible
~~~

# Run playbooks:
~~~
# local.yml = internal network, invadelabs.com.yml = external

# Check (don't take action) and show diff:
ansible-playbook -i hosts local.yml --check --diff
ansible-playbook -i hosts invadelabs.com.yml --check --diff --private-key=~/.ssh/google_compute_engine

# Take action and show diff:
ansible-playbook -i hosts local.yml --diff
ansible-playbook -i hosts invadelabs.com.yml --diff --private-key=~/.ssh/google_compute_engine

# Ex limit:
ansible-playbook -i hosts local.yml --diff -l "drew-serv,!drew-piv"

# Start at task and acknowledge each step
ansible-playbook -i hosts -l drew-serv --start-at-task="httpd; add site templates" --step
~~~

# Example Ansible Commands
[EXAMPLES.md](EXAMPLES.md) - Getting started, basic commands, example usage.
