1. Build the ubuntu container which can compile c language code as static
    docker build -t my-c-program-compiler -f dockerfile_ubuntu_static_c_compiler .
2. Run the container with current directory mounting
    docker run --rm -v "$(pwd)":/usr/src/app my-c-program-compiler
3. Compile the hello.c with static
    gcc hello.c -o hello -static
4. Exit the container
5. Executable "hello" is available for the executing