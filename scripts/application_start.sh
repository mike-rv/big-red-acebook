#!/bin/bash
# Ensuring PM2 is installed
which pm2 > /dev/null
if [ $? -ne 0 ]; then
    echo "PM2 not found. Installing PM2 globally..."
    npm install pm2 -g
fi

echo "Running application start script"
echo "Restarting application with PM2"
cd /var/www/myapp

# Using pm2 restart to handle both stopped and already running applications
pm2 restart ./bin/www --name myapp || pm2 start ./bin/www --name myapp