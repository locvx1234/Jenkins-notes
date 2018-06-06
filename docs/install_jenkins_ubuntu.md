### Installing Jenkins on Ubuntu 16.04
--------------------------------------

This guide is to install Jenkins on Ubuntu 16.04. Please make sure that your system already was updated and running commands with root privilege.

#### Step 1: Install Java OpenJDK 7

```
apt update
apt install python-software-properties -y
add-apt-repository ppa:openjdk-r/ppa
apt update
apt install openjdk-7-jdk
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

When the installation is done, start Jenkins with this systemctl command.
```
systemctl start jenkins
```

After running Jenkins then it will be open port 8080. Check it by this command:

```
netstart -an | grep 8080
```

#### References
[1] https://www.howtoforge.com/tutorial/how-to-install-jenkins-with-apache-on-ubuntu-16-04/
