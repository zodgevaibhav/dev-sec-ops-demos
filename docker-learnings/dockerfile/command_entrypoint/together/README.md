1. Build the docker image
    docker build -t command_entry_together:latest -f dockerfile . 

2. Run with default CMD
    docker run --rm command_entry_together:latest

3. Override the CMD parameter
    docker run --rm command_entry_together:latest "Shivraj Zodge"
