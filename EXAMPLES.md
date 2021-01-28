Examples
========

Ping all hosts
~~~
$ ansible -i hosts all -m ping
~~~

Get the hostname from all VMs in the "arm" group from the hosts file
~~~
$ ansible -i hosts arm -a '/bin/hostname'
~~~

Run a command on all hosts
~~~
$ ansible -i hosts all -a '/usr/bin/python --version'
~~~

Use the shell module to shutdown via sudo (-b)
~~~
$ ansible -i hosts arm -b -a 'shutdown -h now'
~~~

Run the command echo $TERM on all hosts
~~~
$ ansible -i hosts all -m shell -a 'echo $TERM'
~~~

Copy a file, "motd", in the local directoy to all hosts
~~~
$ ansible -i hosts arm -m copy -b -a "src=motd dest=/etc/motd"
~~~

Get facts from all hosts
~~~
$ ansible -i hosts all -m setup
~~~

Increase how many operations occur concurrently
~~~
-f 10
~~~

Run playbook for a particular host starting at a particular task
~~~
ansible-playbook -i hosts -l drew-serv --diff --start-at-step "docker; create container nightscout" local.yml
~~~
