Using Docker

From GitHub Portal:
    1. Go to Actions > Runner > Self Hosted Runner
    2. Create Runner

From Host Machine:

    Run docker image
    docker run -it --rm \
    --name github-actions-runner \
    -e RUNNER_TOKEN=<RUNNER_TOKEN> \
    -e RUNNER_NAME=my_mac_runner \
    -e RUNNER_LABELS=label1,label2 \
    -e RUNNER_REPO_URL=https://github.com/zodgevaibhav/github-action-learn \


Inside the container:
    ./config.sh --url https://github.com/zodgevaibhav/github-action-learn --token <TOKEN>
    ./run.sh