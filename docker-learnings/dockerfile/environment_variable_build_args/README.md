docker build --build-arg USR="saas" --build-arg PASS="Test@123"  -t env_user:latest -f dockerfile_scratch .

docker run --rm -it env_user:latest