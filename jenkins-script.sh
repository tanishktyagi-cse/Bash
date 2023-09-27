#!/bin/bash

sudo apt install openjdk-17-jre-headless -y
sudo apt install openjdk-17-jdk-headless -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
apt update -y
apt install jenkins -y
systemctl start jenkins 
systemctl enable jenkins
