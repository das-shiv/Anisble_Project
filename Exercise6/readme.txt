This exercise shows how to setup a mariadb server and create an initial databse and users.

Commands:

> ansible-galaxy collection list = Lists the installed modules for ansible

> ansible-galaxy collection install community.mysql = installs the community.mysql module




Notes:

> To avoid the Please explicitly state intended protocol error, use the login_unix_socket argument, 
  for example, login_unix_socket: /run/mysqld/mysqld.sock.

From Chatgpt:

Unix Socket for MySQL:

    MySQL can be configured to listen for connections over Unix sockets, in addition to the traditional TCP/IP sockets.
    A Unix socket is represented by a file on the filesystem. In the case of MySQL, this file is commonly named mysql.sock.
    The default location for the MySQL Unix socket file is often /var/lib/mysql/mysql.sock.

Ansible MySQL Module and login_unix_socket Parameter:

    Ansible provides a MySQL module (community.mysql.mysql_db and community.mysql.mysql_user in this case) 
    that allows you to interact with MySQL databases and users.
    The login_unix_socket parameter in these modules specifies the location of the Unix socket file to use 
    when connecting to the MySQL server.

Why Use Unix Sockets:

    Local connections via Unix sockets are generally faster than connections over TCP/IP because they 
    do not involve the network stack.
    Unix sockets are more secure for local connections as they are not exposed to the network and are accessible 
    only by processes running on the same machine.

Connection Example:

    When connecting to MySQL using a Unix socket, the client (in this case, Ansible) communicates with the 
    MySQL server through the Unix socket file.
    The connection details in the playbook indicate that Ansible should use the specified Unix socket file for 
    connecting to the MySQL server.

         login_unix_socket: /var/lib/mysql/mysql.sock

            This ensures that the Ansible tasks for creating a database and a user are performed with a 
            connection to the MySQL server via the specified Unix socket.

In summary, the login_unix_socket parameter in Ansible's MySQL modules allows you to specify the Unix socket 
file's location when connecting to the MySQL server. This is particularly useful for local connections and 
provides improved performance and security compared to connecting over TCP/IP.