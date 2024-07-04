# Build docker image for auth-service
        docker build -t dnyanyog.org/auth-service:latest -f dockerfile-auth-svc .

# Connect two containers over Bridge(default) network using IP
        
        -- Run My SQL container on default network
        docker run --rm -dit -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=Test@123 mysql:latest
        
        -- Find the ip of container using inspect command
        docker container inspect mysql
        
        -- Run My SQL container on default networn
        docker run -it --rm -e DB_HOST=172.17.0.6 dnyanyog.org/auth-service:latest

# Connect two containers over Bridge(default) network using container name (--link)
    To connect the containers each other using domain name (container name), we need to link the containers with each other
    It's useful for default network but not needed or available for other network

        -- docker run --rm -dit -p 3306:3306 --name mysql_directory -e MYSQL_ROOT_PASSWORD=Test@123 mysql:latest

        -- docker run -it --rm -e DB_HOST=mysql --link mysql_directory:mysql --name directory-svc dnyanyog.org/auth-service:latest

# Run two containers in named network
    To connect the containers each other using domain name (container name), we need to link the containers with each other
    It's useful for default network but not needed or available for other network

        -- docker run --rm -dit -p 3306:3306 --name mysql_directory -e MYSQL_ROOT_PASSWORD=Test@123 mysql:latest

        -- docker run -it --rm -e DB_HOST=mysql --link mysql_directory:mysql --name directory-svc dnyanyog.org/auth-service:latest
