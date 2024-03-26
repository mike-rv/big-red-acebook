#!/bin/bash
# This is a simple application stop script for a Node.js application
echo "Running application stop script"
echo "Stopping application"
pkill -f "node /var/www/myapp/app.js"