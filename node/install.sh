#!/bin/bash -e

echo "================= Installing NVM ==================="
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash

# Set NVM_DIR so the installations go to the right place
export NVM_DIR="/root/.nvm"

# add source of nvm to .bashrc - allows user to use nvm as a command
echo "source ~/.nvm/nvm.sh" >> $HOME/.bashrc

echo "================= Installing nodejs 6.x ==================="
curl --silent https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
echo "deb https://deb.nodesource.com/node_6.x trusty main" | sudo tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src https://deb.nodesource.com/node_6.x trusty main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list
apt-get update
apt-get install -y nodejs
