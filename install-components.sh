#!/bin/bash

###	This file should be run in SUDO mode

### The script file needs to be executable, i.e.
#	chmod +x instal-components.sh

#	Update package index
apt-get update

#	Install tools
apt-get install -y \
    git
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

#	Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - 

#	Setup stable repo
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

#	Update package index (again)
apt-get update

#	Install latest version of Docker
apt-get install -y docker-ce docker-ce-cli containerd.io
