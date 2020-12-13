#!/bin/bash

###	This file should be run in SUDO mode

### The script file needs to be executable, i.e.
#	chmod +x instal-components.sh

#	Update package index
apt-get update -y

#	Install tools
apt install -y \
    git
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    net-tools \
    jq

#	Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - 

#	Setup stable repo
add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

#	Update package index (again)
apt update -y

#	Install latest version of Docker
apt install -y docker-ce docker-ce-cli containerd.io

#   Install Golang
add-apt-repository ppa:longsleep/golang-backports -y
apt update -y
apt install -y golang-go

#	Upgrades all packages
# apt-get dist-upgrade -y

#   Creates the directory to store the project
mkdir -p project/bloc-server

#   Clones the project blockchain repository to the created directory
git clone https://github.com/Jalmeida1994/GatherChain-Server.git project/bloc-server

#   Change Working directory to the api directory inside the project directory
#cd project/bloc-server/api

#   Starts web-server
#go run main.go
