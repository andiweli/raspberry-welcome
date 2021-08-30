# Raspberry Pi ASCII art welcome message
(based off https://github.com/reloxx13/reloxx13.github.io)

![Image of MOTD for PiHole](https://github.com/andiweli/raspberry-welcome/blob/main/images/pihole-motd.png)

## Install instructions:
1. sudo mkdir /opt/motd
2. sudo curl -o /opt/motd/motd.sh [path to .sh script from my repository]
3. sudo chmod +x /opt/motd/motd.sh
4. sudo ln -s /opt/motd/motd.sh /etc/update-motd.d/11-raspberry-welcome-message
5. sudo chmod -x /etc/update-motd.d/10-uname
6. sudo mv /etc/motd /etc/motd.backup

> Currently available for PiHole, ioBroker and Minecraft<br>
> Minimal version available for ioBroker and NextcloudPi
