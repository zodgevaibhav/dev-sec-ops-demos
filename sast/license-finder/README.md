# Run below command in project directory
    docker run -it --rm "$(pwd)":/scan licensefinder/license_finder:latest
    license_finder

# Default Build docker image some time not work if override the CMD
    Build Custom image using docker file from this project
    docker build -t dnyanyog.org/license_finder:latest -f dockerfile .

    Run below command from project folder
    docker run -it --rm -v "$(pwd)":/scan custom_license_finder

