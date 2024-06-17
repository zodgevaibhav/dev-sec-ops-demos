docker build --build-arg USR="saas" --build-arg PASS="Test@123"  -t env_arg_creds:latest -f dockerfile_scratch .

docker run --rm -it env_arg_creds:latest