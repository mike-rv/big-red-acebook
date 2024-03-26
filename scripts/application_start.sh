#!/bin/bash
# This is a simple application start script for a Node.js application
echo "Running application start script"
echo "Starting application"
cd /var/www/myapp

# Start the application in the background
nohup npm start > /dev/null 2>&1 &