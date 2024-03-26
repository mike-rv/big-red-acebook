#!/bin/bash
set -e

echo "Running before install script"
echo "Updating package list"

# Determine the package manager based on the distribution (simplified example)
if [ -f /etc/debian_version ]; then
    apt-get update
elif [ -f /etc/redhat-release ]; then
    yum update -y
else
    echo "Unsupported distribution"
    exit 1
fi
