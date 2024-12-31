# Dockerized Nginx and PHP 7.4

For testing code on an Nginx server running the latest version of PHP.

### Startup the Container

```bash
docker-compose up -d
```
Site will be accessible at **http://localhost:8080**

The index.php only returns phpinfo() to verify the current settings and check the volumes are mapped correctly.

### Development

Once running, you can modify the code in the **app** directory as you wish. 

You can check the **logs** to view any errors or access issues.

In the **php** directory you can update the **my-php.ini** file or add other .ini files to modify the environment to your liking.

## Useful Commands

```shell
docker exec -it <CONTAINER_ID> bash
```

## Resources

- https://tecadmin.net/docker-compose-for-mysql-with-phpmyadmin/
