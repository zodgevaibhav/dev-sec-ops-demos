#!/bin/bash

./secret-injection.sh
rm -rf secret-injection.sh
echo "############ Running as admin ##############"
exec java -jar /app/hello-service.jar
