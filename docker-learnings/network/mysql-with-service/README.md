# Link two independent containers
    -   Two independent container can be linked with each other
        
        -- Run My SQL container on default network
        docker run --rm -dit -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=Test@123 mysql:latest
        
        -- Find the ip of container using inspect command
        docker container inspect mysql
        
        -- Run My SQL container on default networn
        docker run -it --rm -e DB_HOST=172.17.0.6  dnyanyog.org/network-auth-svc:latest