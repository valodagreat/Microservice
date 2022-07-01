[![CircleCI](https://dl.circleci.com/status-badge/img/gh/valodagreat/Microservice/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/valodagreat/Microservice/tree/main)

## Project Overview 

This project makes use of the `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project serves out predictions (inference) about housing prices through API calls

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally by installing Docker Desktop
* Setup and Configure Kubernetes locally either by using kubectl that comes with Docker Desktop
* Or install minikube to run kubectl `brew install minikube` for Mac or vist [minikube homepage](https://minikube.sigs.k8s.io/docs/start/) for the required steps on installing minikube
* Create Flask app in Container
* Run via kubectl `./run_kubernetes.sh`
