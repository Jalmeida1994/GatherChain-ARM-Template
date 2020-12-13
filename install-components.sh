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

#	Upgrades all packages
apt-get dist-upgrade -y

#	Install net-tools and jq
apt install -y net-tools
apt install -y jq


# mkdir -p mywork && cd mywork && curl -o minifab -sL https://tinyurl.com/twrt8zv && chmod +x minifab
