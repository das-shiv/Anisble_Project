This exercise shows the use of ansible.cfg file, how to create it and use it.


Notes:

> The ansible.cfg file contains configuration settings that ansible uses. The ansible.cfg file
    can be present in different locations and they have different priority based on the location they are present.


> Priority of ansible.cfg file.

    1. ANSIBLE_CONFIG environment variable will have the highest priority.

    2. The ansible.cfg file in the local working directory has the next priority.

    3. The ~/.ansible.cfg file in the users home directory has the next priority.

    4. The global cfg file located at /etc/ansible/ansible.cfg has the last priority.

