docker build -t command_demo:latest -f dockerfile .

# With default command
docker run my_image

# Override command
docker run my_image echo "Hello, Docker!"