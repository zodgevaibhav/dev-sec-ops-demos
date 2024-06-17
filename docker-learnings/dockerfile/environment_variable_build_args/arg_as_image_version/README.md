1. Build docker file with default value
    docker build -t args_demo:latest -f dockerfile .
2. Run the built image and check the version
    docker run --rm args_demo:latest
3. Build docker file by passing build argument
    docker build -t args_demo:latest --build-arg VERSION="20.04" -f dockerfile .
4. Run the built image and check the version
    docker run --rm args_demo:latest