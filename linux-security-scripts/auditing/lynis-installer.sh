#!/bin/bash
#
# A script for installing and running lynis with recommended options.
#
# Version: v1.0.3
# License: MIT License
#          Copyright (c) 2020-2021 Hunter T.
#
########################################################################################
#### [ Variables ]


green=$'\033[0;32m'
cyan=$'\033[0;36m'
red=$'\033[1;31m'
nc=$'\033[0m'


##### End of [ Variables ]
########################################################################################
#### [ Prepping ]


## Check if the script was executed with root privilege.
if [[ $EUID != 0 ]]; then
    echo "${red}Please run this script as or with root privilege${nc}" >&2
    echo -e "\nExiting..."
    exit 1
fi


#### End of [ Prepping ]
########################################################################################
#### [ Main ]


read -rp "We will now download lynis. Press [Enter] to continue."

echo "Changing working directory to '/home/$SUDO_USER'..."
cd /home/"$SUDO_USER" || {
    echo "${red}Failed to change working directory to '/home/$SUDO_USER'"
    echo "${cyan}Lynis will download to '$PWD'$nc"
}

echo "Downloading lynis..."
git clone https://github.com/CISOfy/lynis || {
    echo "${red}Failed to download lynis$nc" >&2
    echo -e "\nExiting..."
    exit 1
}
echo "Changing ownership of lynis to root:root..."
chown -R root:root lynis

echo -e "\n${green}Lynis has been downloaded to your system"
echo -e "${cyan}To perform a system scan with lynis, execute the following command in" \
    "the lynis root directory: sudo ./lynis audit system$nc"


#### End of [ Main ]
########################################################################################
