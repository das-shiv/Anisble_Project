This exercise is to run ad hoc commands like yum, service, copy etc.

Using yum module we can install httpd server on remote machines.
Using the service module we can restart and enable httpd service.
Using the copy module we can copy the index.html file to /var/www/html/index.html in remote server.


Commands used:

> ansible -i inventory webserver -m ansible.builtin.yum -a "name=httpd state=present" --become

> ansible -i inventory webserver -m ansible.builtin.service -a "name=httpd state=started enabled=yes" --become

> ansible -i inventory webserver -m ansible.builtin.copy -a "src=index.html dest=/var/www/html/index.html" --become