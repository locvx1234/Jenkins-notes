### Installing Jenkins on Ubuntu 16.04
--------------------------------------

This guide is to install Jenkins on Ubuntu 16.04. Please make sure that your system already was updated and running commands with root privilege.

#### Step 1: Install Java OpenJDK 8

```
apt update
apt install python-software-properties -y
add-apt-repository ppa:openjdk-r/ppa
apt update
apt install openjdk-8-jdk
```

Verify Java after installing

```
java -version
```

The command should be have a result like this:

<img src = '../images/java_result_1.png'>

#### Step 2: Install Jenkins

Add Jenkins key and repository to the system with the command below.
```
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo 'deb https://pkg.jenkins.io/debian-stable binary/' | tee -a /etc/apt/sources.list
```

Update repository and install Jenkins

```
apt update
apt install jenkins
```

#### Step 3: Update the configuration file.

In order to run Jenkins, it needs to be updated the path.

```
vim /etc/init.d/jenkins
```

Then update a new path at line 16.
```
PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/lib/jvm/java-8-openjdk-amd64/bin/
```

Restart daemon and Jenkins.
```
systemctl daemon-reload
systemctl restart jenkins
```

After running Jenkins then it will be open port 8080. Check it by this command:

```
netstart -an | grep 8080
```

#### References
[1] https://www.howtoforge.com/tutorial/how-to-install-jenkins-with-apache-on-ubuntu-16-04/
[2] https://stackoverflow.com/questions/39621263/jenkins-fails-when-running-service-start-jenkins
