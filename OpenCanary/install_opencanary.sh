#!/bin/bash
# Installs OpenCanary on Ubuntu
opencanary_path=/srv/opencanary
opencanary_user=opencanary
opencanary_group=opencanary

# Update Apt
apt-get update -y

# Install dependant components
apt-get install python-dev python-pip python-virtualenv build-essential libssl-dev libffi-dev -y

# create user and install folder
adduser --system --no-create-home --home $opencanary_path $opencanary_user
addgroup --system $opencanary_group
mkdir $opencanary_path
cd $opencanary_path


# Create virtualenv environment and activate
virtualenv venv/
. venv/bin/activate

# Install rdpy
pip install rdpy

# Install OpenCanary
pip install opencanary

chown -R $opencanary_user $opencanary_path

# Create configuration file

# Create service
#touch /etc/systemd/system/minecraft-server.service
#printf '[Unit]\nDescription=Minecraft Service\nAfter=rc-local.service\n' >> /etc/systemd/system/minecraft-server.service
#printf '[Service]\nWorkingDirectory=%s\n' $minecraft_server_path >> /etc/systemd/system/minecraft-server.service
#printf 'ExecStart=/usr/bin/java -Xms%s -Xmx%s -jar %s/%s nogui\n' $memoryAllocs $memoryAllocx $minecraft_server_path $server_jar >> /etc/systemd/system/minecraft-server.service
#printf 'ExecReload=/bin/kill -HUP $MAINPID\nKillMode=process\nRestart=on-failure\n' >> /etc/systemd/system/minecraft-server.service
#printf '[Install]\nWantedBy=multi-user.target\nAlias=minecraft-server.service' >> /etc/systemd/system/minecraft-server.service
#chmod +x /etc/systemd/system/minecraft-server.service

# Start service
#systemctl start minecraft-server
