Examples
========

Ping all hosts
~~~
$ ansible -i hosts all -m ping
~~~

Get the hostname from all VMs in the "vms" group from the hosts file
~~~
$ ansible -i hosts vms -a '/bin/hostname'
~~~

Get python version from all VMs
~~~
$ ansible -i hosts all -a '/usr/bin/python --version'
~~~

Use the shell module to run the shutdown command on all VMs as root (-b)
~~~
$ ansible -i hosts vms -b -a 'shutdown -h now'
~~~

Run the command echo $TERM on all VMs
~~~
$ ansible -i hosts all -m shell -a 'echo $TERM'
~~~

Copy the file motd in the local directoy to all VMs
~~~
$ ansible -i hosts vms -m copy -b -a "src=motd dest=/etc/motd"
~~~

Get facts from all hosts
~~~
$ ansible -i hosts all -m setup
~~~

Increase how many operations occur concurrently
~~~
-f 10
~~~
