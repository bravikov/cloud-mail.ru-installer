#!/bin/bash -e

# Cloud Mail.Ru install script for Ubuntu
#
# Links:
#  * Project page: https://github.com/bravikov/cloud-mail.ru-installer
#  * Official description of method: https://help.mail.ru/cloud_web/app/linux

echo "deb https://linuxdesktopcloud.mail.ru/deb default free" | sudo tee /etc/apt/sources.list.d/mail.ru-cloud.list
wget -q https://linuxdesktopcloud.mail.ru/mail.ru-cloud.gpg -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install mail.ru-cloud
