# Run gitleaks using docker
    Go to root folder of the repo (command must run at .git folder level)
    docker run -it --rm -v "$(pwd)":/path dnyanyog.org/gitleaks:latest detect