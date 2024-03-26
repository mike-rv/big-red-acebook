#!/bin/bash
# This is a before install script for a Node.js application on Amazon Linux 2

echo "Running before install script"
echo "Updating package list"
sudo yum update -y

# Install Node.js and npm if not already installed
echo "Installing Node.js"
curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
sudo yum install -y nodejs

# Optionally, install build tools to compile and install native addons from npm
sudo yum groupinstall -y 'Development Tools'

