#!/bin/bash
#
# Locks the root account and erases it's current password.
#
# Version: v1.0.3
# License: MIT License
#          Copyright (c) 2020-2021 Hunter T.
#
########################################################################################
#### [ Variables ]


config_file_bak="/etc/shadow.bak"
config_file="/etc/shadow"
green=$'\033[0;32m'
cyan=$'\033[0;36m'
red=$'\033[1;31m'
nc=$'\033[0m'


##### End of [ Variables ]
########################################################################################
#### [ Prepping ]


## Check if this script was executed with root privilege.
if [[ $EUID != 0 ]]; then
    echo "${red}Please run this script as or with root privilege$nc" >&2
    echo -e "\nExiting..."
    exit 1
fi


#### End of [ Prepping ]
########################################################################################
#### [ Main ]


read -rp "We will now disable the root account. Press [Enter] to continue."

## Backup 'shadow' if 'shadow.bak' doesn't already exist.
if [[ ! -f $config_file_bak ]]; then
    echo "Backing up original 'shadow'..."
    cp "$config_file" "$config_file_bak" || {
        echo "${red}Failed to back up shadow" >&2
        echo "${cyan}Please create a backup of the original 'shadow' before continuing$nc"
        exit 1
    }
fi

echo "Disabling root account..."
passwd -dl root && echo -e "\n${green}The root account has been locked$nc" \
    || echo -e "\n${red}Failed to lock the root account$nc"


#### End of [ Main ]
########################################################################################
