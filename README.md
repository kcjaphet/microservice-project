# microservice machine learning

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/kcjaphet/eks-machine-learning-microservice/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/kcjaphet/eks-machine-learning-microservice/tree/main)
## A summary of the project

This is a Machine Learning Microservice API project with a pre-trained `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

- Some of the screenshots are listed in the files folder.

### Setup Project Environment

* Clone the project repo.
```
$ git clone https://github.com/kcjaphet/microservice-project.git
```

* Change to the project directory.
```
$ cd microservice-project
```

Environment Setup.

    Run make setup to setup python virtual environment.
    Run make install to install dependencies.

Step 1: Install dependencies.

    Create pyhton virtual environment python -m venv ~/.devops and activate source ~/.devops/bin/activate
    Install dependenciesand use make lint to lint the Python and Docker file
    Install docker as described in the link.  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    Install minikube as described here link  wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    chmod +x minikube-linux-amd64
    Install hadolint with these commands wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64

Step 2: Run Docker container

    Run the application on docker ./run_docker.sh
    Run ./make_predicton.sh to make predictions.

Step 3: Upload to Docker Hub

    Edit ./upload_docker.sh file, and run it to upload the docker image to docker hub

Step 4: Kubernetes deployment

    Run ./run_kubernetes.sh to deploy to kubernetes
    Run ./make_predicton.sh to make predictions.


Running app.py

    Standalone: python app.py
    Run in Docker: ./run_docker.sh
    Run in Kubernetes: ./run_kubernetes.sh

Kubernetes Steps

    Setup and Configure Docker locally
    Setup and Configure Kubernetes locally
    Create Flask app in Container
    Run via kubectl kubectl run kc-project --image=$dockerpath

### Folder and File Structure Explained
- app.py: `our flask application file`
- test_app.py: `file that exercise edge cases in code blocks`
- Makefile: `make utility file which defines set of tasks to be executed`
- Dockerfile: `file with instructions to build Docker images`
- .hadolint.yaml: `supports hadolint configurations like the ingnoring rules.`
- .dockerignore: `prevents files or folders from being listed in the build context`
- requirements.txt: `file with listed project dependecies`
- `docker_out.txt` and `kubernetes_out.txt`:
    - These are output files with given provided exercise logs
- `make_predictions.sh`, `run_docker.sh`, `run_kubernetes.sh`, `setup_installations.sh`, `upload_docker.sh`:
    - These are script files with a sequence of commands run to perform a given task.

### Author:
Kelechi Japhet DevOps Engr.
