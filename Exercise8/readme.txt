This exercise shows the use of variables in ansible playbook. In this exercise only playbook variables are used.


Notes:
> Variables in ansible are used to store values that we can refer to in our playbooks.

> There are different type of valiables in ansible.

    1. Global variables: These variables are defined at the top of the playbook or role and is accessible to all the plays
     inside the playbook and role.

    2. Playbook variables: These variable are defined in a playbook and are accessible in the playbook only.

    3. Role variables:  Variables specific to an Ansible role. They are defined in the role's directory structure 
    and are accessible within that role.
    These are present under the roles/common/vars/main.yml file

    4. Inventory variables: We can define variables inside our inventory file as well. In the inventory file we declare
    variables under [defaults] section or under each group.

    5. Facts variables: When ansible connect to a remote machines it gathers a lot of facts about the remote machine,
    such as ansible_os_family, ansible_os_kernel etc. and many more.
    we can use these variables in our playbooks.


    6. Command line variables: We can pass inline variable while running ansible playbooks as well using the -e option.
    e.g.    ansible-playbook -e "my_var=value" my_playbook.yml

    7. Register module: We can use register module to save the output of a task and use it as variable in our playbook.

> The order of priority of ansible variables is as follows:

    command line variables > playbook variables > External included var files > Inventory variables > Fact variables > 
    
    Role variables > Task variables > Varibales defined in inventory files under hosts vars group











