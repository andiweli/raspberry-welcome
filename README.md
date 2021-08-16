# raspberry-welcome
Raspberry Pi Welcome Message (based off https://github.com/reloxx13/reloxx13.github.io)

Install instructions:
1. mkdir /home/pi/scripts
2. curl -o /home/pi/scripts/motd.sh [path to .sh script from my repository]
3. chmod +x /home/pi/scripts/motd.sh
4. sudo ln -s /home/pi/scripts/motd.sh /etc/update-motd.d/11-raspberry-welcome-message
5. sudo chmod -x /etc/update-motd.d/10-uname
6. sudu mv /etc/motd /etc/motd.backup

Updates coming.
