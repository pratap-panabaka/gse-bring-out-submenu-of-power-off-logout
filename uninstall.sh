#! /bin/bash
set -e

NAME=BringOutSubmenuOfPowerOffLogoutButton
DOMAIN=pratap.fastmail.fm
UUID=$NAME@$DOMAIN

echo -e "\n\n\t~~~~~~~~~~~~~~~~ Bring Out Submenu Of Power Off Button ~~~~~~~~~~~~~~~~\n"
echo -e "\trunning the script...\n"

if $(gnome-extensions list | grep -q $UUID); then
    gnome-extensions uninstall $UUID
else
    echo -e "\tBring Out Submenu Of Power Off Button is not installed, exiting..."
    echo -e "\n\t~~~~~~~~~~~~~~~~~~ Thank You ~~~~~~~~~~~~~~~~~~\n\n"
    exit 1
fi

echo -e "\t------------------------------------------
\t| Bring Out Submenu Of Power Off Button is uninstalled |
\t------------------------------------------"

echo -e "\n\t~~~~~~~~~~~~~~~~~~ Thank You ~~~~~~~~~~~~~~~~~~\n\n"
exit 0
