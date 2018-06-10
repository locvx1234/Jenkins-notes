#!/usr/bin/env bash

echo "Install Jenkins on Ubuntu 16"
echo "Please check your version to make sure that yours is right"
sleep 3

echo "Check whether Java8 is in your OS or not"
echo "Install Java8"
sleep 3

sudo apt update -y
sudo apt install software-properties-common python-software-properties apt-transport-https -y
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update -y
sudo apt install openjdk-8-jdk -y

java -version

echo "Done installing Java"
sleep 3
echo "Installing Jenkins"

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo 'deb https://pkg.jenkins.io/debian-stable binary/' | tee -a /etc/apt/sources.list

sudo apt update -y
sudo apt install jenkins -y
echo "Done installing Jenkins"
echo "Restart Jenkins"
sleep 3
systemctl restart jenkins

echo "Done!!!"

