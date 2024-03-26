#!/bin/bash
# This is a simple application start script for a Node.js application
echo "Running application start script"
echo "Starting application with PM2"
cd /var/www/myapp

# Use PM2 to start the application
pm2 start ./bin/www --name myapp -f

