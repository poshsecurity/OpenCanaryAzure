#!/bin/bash
# Installs OpenCanary on Ubuntu

# Update Apt
apt-get update -y

# Install dependant components
apt-get install python-dev python-pip python-virtualenv build-essential libssl-dev libffi-dev -y

# create user and install folder
#adduser --system --no-create-home --home /srv/minecraft-server $minecraft_user
#addgroup --system $minecraft_group
#mkdir $minecraft_server_path
#cd $minecraft_server_path


# Create virtualenv environment and activate
virtualenv venv/
. venv/bin/activate

# Install rdpy
pip install rdpy

# Install OpenCanary
pip install opencanary

# Create configuration file

# Create service

# Start service
#touch /etc/systemd/system/minecraft-server.service
#printf '[Unit]\nDescription=Minecraft Service\nAfter=rc-local.service\n' >> /etc/systemd/system/minecraft-server.service
#printf '[Service]\nWorkingDirectory=%s\n' $minecraft_server_path >> /etc/systemd/system/minecraft-server.service
#printf 'ExecStart=/usr/bin/java -Xms%s -Xmx%s -jar %s/%s nogui\n' $memoryAllocs $memoryAllocx $minecraft_server_path $server_jar >> /etc/systemd/system/minecraft-server.service
#printf 'ExecReload=/bin/kill -HUP $MAINPID\nKillMode=process\nRestart=on-failure\n' >> /etc/systemd/system/minecraft-server.service
#printf '[Install]\nWantedBy=multi-user.target\nAlias=minecraft-server.service' >> /etc/systemd/system/minecraft-server.service
#chmod +x /etc/systemd/system/minecraft-server.service

#systemctl start minecraft-server
