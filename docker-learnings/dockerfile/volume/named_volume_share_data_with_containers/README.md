1. Create volume
    docker volume create vz_volume
2. Map volume with the directory intended to be volume at the time of run
    docker run --rm -dit -v vz_volume:/usr/src/app/data volume:latest
3. Access the data from one container to other container
    docker run --rm -it -v vz_volume:/usr/src/app/data busybox sh