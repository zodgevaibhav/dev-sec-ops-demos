
docker network create gitlab-network
docker network create --subnet=172.23.0.0/16 gitlab-network

docker run --detach --hostname gitlab.dnyanyog.org --publish 443:443 --publish 80:80 --publish 22:22 --name gitlab --restart always --network gitlab-network --ip 172.23.0.2 gitlab/gitlab-ce:latest


docker volume create gitlab-runner-config   => Or directly config file can be mapped as volume to avoid manual changes
docker run -d --name gitlab-runner --restart always --network gitlab-network -v gitlab-runner-config:/etc/gitlab-runner -v /var/run/docker.sock:/var/run/docker.sock gitlab/gitlab-runner:latest

docker run --rm -it --network gitlab-network -v gitlab-runner-config:/etc/gitlab-runner gitlab/gitlab-runner:latest register
  Add extra host in config file in runner /etc/gitlab-runner/config.toml
     network_mode = "gitlab-network"  => When runner run inside the container it runs on bridge network
    extra_hosts = ["gitlab.dnyanyog.org:172.22.0.2"] => This will not require if runner configured on user defined network
