# Dockerized Nginx and PHP 8.4

For testing code on an Nginx server running the latest version of PHP.

Also included a MySQL Database and PHPMyAdmin for any database related testing.

## Startup the Container

```shell
docker-compose up -d
```

Site will be accessible at <http://localhost:8080>

The index.php only returns phpinfo() to verify the current settings and check the volumes are mapped correctly.

PHPMyAdmin will be running at <http://localhost:8081>

### Development

Once running, you can modify the code in the **app** directory.

You can check the **logs** to view any errors or access issues.

In the **php** directory you can update the **my-php.ini** file or add other .ini files to modify the environment to your liking.

This is the current configuration:

```shell
display_errors = On
error_reporting = E_ALL
memory_limit = 1024M
max_execution_time = 400
max_input_vars = 5000
post_max_size = 64M
upload_max_filesize = 64M
max_input_time = 3600
```

## Useful Commands

```shell
# run shell commands in server
docker exec -it <CONTAINER_ID> bash
```

### MAKE Commands

To *make* things easier, MAKE commands are available as well.

```shell
# start containers
make start

# list of running containers
make list

# shell access to web server
make bash

# shutdown running containers
make stop
```

## Resources

- <https://docs.docker.com/>
- <https://tecadmin.net/docker-compose-for-mysql-with-phpmyadmin/>
- <https://www.geeksforgeeks.org/php-php-ini-file-configuration/>
