# Since original gitleaks is not much easy to use creating custom image
    docker build -t dnyanyog.org/gitleaks:latest -f dockerfile .

# Run gitleaks using docker
    Go to root folder of the repo (command must run at .git folder level)
        docker run -it --rm -v "$(pwd)":/path dnyanyog.org/gitleaks:latest detect -v