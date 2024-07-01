Compile using container
    docker run -it --rm -v "$(PWD)":/app dnyanyog.org/c-compiler:latest gcc hello.c -o hello --static