### Installing Jenkins on docker environment
-------------------------------------------

#### Step 1: Install docker

To run Jenkins on docker then Docker needs to be installed firstly.

```
apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```

```
apt update
apt install docker-ce
```

#### Step 2: Run Jenkins on docker

**Option1**: To persist the data within docker container

```
docker volume create --name jenkins_data
docker run --name jenkins -d -v jenkins_data:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins:latest
```

**Option 2**: To persist the data within host

```
docker run --name jenkins -d -v /Users/jenkins:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins:latest

```
