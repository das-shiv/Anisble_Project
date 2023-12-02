This exercise shows how to install and setup httpd server and then copy an index.html file to remote server that 
will become the default webpage for the httpd server.


Commands:

> ansible-playbook --tags webpage -i inventory website_setup.yml = run tasks that matches the tags