This exercise shows how to create and run an ansible playbook. The playbook contains plays to install
httpd server and mariadb server on remote centos machines.


Commands used:

> ansible-playbook -i inventory web_db.yml

> ansible-playbook -i inventory web_db.yml -C = For dry run

> ansible-playbook -i inventory web_db.yml --syntax-check = to check the syntax of the playbook


