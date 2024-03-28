#!/bin/bash

# This is a simple application start script for a Node.js application

echo "Running application start script"

echo "Restarting application with PM2"

cd /var/www/myapp

# # Check if the application is already running
# if pm2 list | grep -q myapp; then
#     echo "Application is already running. Skipping start."
# else
#     # Start the application with PM2 if it's not already running
#     echo 'npm starting'
#     npm start ./bin/www --name myapp
# fi

echo 'npm starting'
pm2 start ./bin/www --name myapp