#!/bin/bash

echo "Welcome to the install script for N1 (https://github.com/nord-studio/docker-compose.yml/tree/n1)."
echo "Before the install begins, I just want to let you know  that the script is currently located at ${PWD}."
read -p "This is where your docker setup will be created (docker-compose.yml, mail/, vault/, etc). Do you want to continue? [Y/n] " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo
    exit 1
fi
echo
echo

echo "Updating packages..."
apt-get update > /dev/null
apt-get upgrade -y > /dev/null

echo "Installing wget and unzip..."
apt-get install wget unzip -y > /dev/null

if [ -x "$(command -v docker)" ]; then
    echo "Docker is already installed."
else
    echo "Installing docker"
    apt-get install ca-certificates curl gnupg lsb-release > /dev/null
    mkdir -p /etc/apt/keyrings > /dev/null
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg > /dev/null
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt-get update > /dev/null
    apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin > /dev/null
fi


if [ -x "$(command -v node)" ]; then
    ver=`node -v` 
    echo "Node.js is already installed on $ver, please make sure you are using LTS or higher."
else
    echo "Installing Node.js"
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash > /dev/null
    apt-get update > /dev/null
    apt-get install -y nodejs > /dev/null
fi

if [ -x "$(command -v git)" ]; then
    echo "Git is already installed."
else
    echo "Installing git..."
    apt-get install -y git > /dev/null
fi

echo
echo "WARNING: The folders ['mail/', 'vault/', 'proxy/', 'landing/'] and the files ['docker-compose.yml'] will be overwritten."
read -p "Are you sure you want to set up your Docker structure here? (${PWD}) [Y/n] " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo
    exit 1
fi

echo
echo
echo "Downloading the latest release from Github (github.com/nord-studio/docker-compose.yml/releases/download/0.1/n1.zip)..."
wget -o /dev/null https://github.com/nord-studio/docker-compose.yml/releases/download/0.1/n1.zip 
unzip -o n1.zip > /dev/null
rm -r n1.zip

echo
read -p "(Optional) Do you want me to run 'docker compose up -d' (Start all containers?) [Y/n] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo
    docker compose up -d > /dev/null
fi

echo
echo "Complete. Everything is set up for you. All that's left is configuration. Please refer to the README over at https://github.com/nord-studio/docker-compose.yml/tree/n1/ for additional help. GLHF!"

