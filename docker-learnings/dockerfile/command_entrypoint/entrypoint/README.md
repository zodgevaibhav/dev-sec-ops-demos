docker build -t entrypoint_demo:latest -f dockerfile .

# With default parameter
docker run --rm entrypoint_demo:latest

# With parameter externally
docker run --rm entrypoint_demo:latest "Vaibhav Zodge"

# With parameter externally (Can not override)
docker run --rm entrypoint_demo:latest "Vaibhav Zodge"