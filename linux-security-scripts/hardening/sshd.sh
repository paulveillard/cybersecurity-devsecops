#!/bin/bash
#
# Hardens sshd by modifying '/etc/ssh/sshd_config'.
#
# Note: This configures sshd_config to the recommendations of the security auditing tool
#       knonw as Lynis (https://github.com/CISOfy/lynis).
#
# Version: v1.0.3
# License: MIT License
#          Copyright (c) 2020-2021 Hunter T.
#
########################################################################################
#### [ Variables ]


config_file_bak="/etc/ssh/sshd_config.bak"
config_file="/etc/ssh/sshd_config"
cyan=$'\033[0;36m'
red=$'\033[1;31m'
nc=$'\033[0m'


##### End of [ Variables ]
########################################################################################
#### [ Prepping ]


## Check if the script was executed with root privilege.
if [[ $EUID != 0 ]]; then
    echo "${red}Please run this script as or with root privilege$nc" >&2
    echo -e "\nExiting..."
    exit 1
fi

## Confirm that 'sshd_config' exists.
if [[ ! -f $config_file ]]; then
    echo "${red}'sshd_config' doesn't exist" >&2
    echo "${cyan}sshd-server may not be installed$nc"
    echo -e "\nExiting..."
    exit 1
fi


#### End of [ Prepping ]
########################################################################################
#### [ Main ]


read -rp "We will now harden sshd. Press [Enter] to continue."

## Backup 'sshd_config' if 'sshd_config.bak' doesn't already exist.
if [[ ! -f $config_file_bak ]]; then
    echo "Backing up original 'sshd_config'..."
    cp $config_file $config_file_bak || {
        echo "${red}Failed to back up sshd_config" >&2
        echo "${cyan}Please create a backup of the original 'sshd_config'" \
            "before continuing$nc"
        exit 1
    }
fi

echo "Setting LogLevel VERBOSE..."
sed -i 's/\(#\)\?LogLevel\(.*\)\?/LogLevel VERBOSE/g' "$config_file" \
    || echo "${red}Failed to set LogLevel VERBOSE$nc"

echo "Setting LoginGraceTime 30..."
sed -i 's/\(#\)\?LoginGraceTime\(.*\)\?/LoginGraceTime 30/g' "$config_file" \
    || echo "${red}Failed to set LoginGraceTime 30$nc"

echo "Setting PermitRootLogin no..."
sed -i 's/\(#\)\?PermitRootLogin\(.*\)\?/PermitRootLogin no/g' "$config_file" \
    || echo "${red}Failed to set PermitRootLogin no$nc"

echo "Setting MaxAuthTries 3..."
sed -i 's/\(#\)\?MaxAuthTries\(.*\)\?/MaxAuthTries 3/g' "$config_file" \
    || echo "${red}Failed to set MaxAuthTries 3$nc"

echo "Setting MaxSessions 2..."
sed -i 's/\(#\)\?MaxSessions\(.*\)\?/MaxSessions 2/g' "$config_file" \
    || echo "${red}Failed to set MaxSessions 2$nc"

echo "Setting PubkeyAuthentication yes..."
sed -i 's/\(#\)\?PubkeyAuthentication\(.*\)\?/PubkeyAuthentication yes/g' "$config_file" \
    || echo "${red}Failed to set PubkeyAuthentication yes$nc"

# Uncomment only if an ssh key has been set
#echo "Setting PasswordAuthentication no..."
#sed -i 's/\(#\)\?PasswordAuthentication\(.*\)\?/PasswordAuthentication no/g' "$config_file" \
#    || echo "${red}Failed to set PasswordAuthentication no$nc"

echo "Setting PermitEmptyPasswords no..."
sed -i 's/\(#\)\?PermitEmptyPasswords\(.*\)\?/PermitEmptyPasswords no/g' "$config_file" \
    || echo "${red}Failed to set PermitEmptyPasswords no$nc"

echo "Setting ChallengeResponseAuthentication no..."
sed -i 's/\(#\)\?ChallengeResponseAuthentication\(.*\)\?/ChallengeResponseAuthentication no/g' \
    "$config_file" \ || echo "${red}Failed to set ChallengeResponseAuthentication no$nc"

echo "Setting UsePAM yes..."
sed -i 's/\(#\)\?UsePAM\(.*\)\?/UsePAM yes/g' "$config_file" \
    || echo "${red}Failed to set UsePAM yes$nc"

echo "Setting AllowAgentForwarding no..."
sed -i 's/\(#\)\?AllowAgentForwarding\(.*\)\?/AllowAgentForwarding no/g' "$config_file" \
    || echo "${red}Failed to set AllowAgentForwarding no$nc"

echo "Setting AllowTcpForwarding no..."
sed -i 's/\(#\)\?AllowTcpForwarding\(.*\)\?/AllowTcpForwarding no/g' "$config_file" \
    || echo "${red}Failed to set AllowTcpForwarding no$nc"

echo "Setting X11Forwarding no..."
sed -i 's/\(#\)\?X11Forwarding\(.*\)\?/X11Forwarding no/g' "$config_file" \
    || echo "${red}Failed to set X11Forwarding no$nc"

echo "Setting PrintMotd no..."
sed -i 's/\(#\)\?PrintMotd\(.*\)\?/PrintMotd no/g' "$config_file" \
    || echo "${red}Failed to set PrintMotd no$nc"

echo "Setting TCPKeepAlive no..."
sed -i 's/\(#\)\?TCPKeepAlive\(.*\)\?/TCPKeepAlive no/g' "$config_file" \
    || echo "${red}Failed to set TCPKeepAlive no$nc"

echo "Setting Compression no..."
sed -i 's/\(#\)\?Compression\(.*\)\?/Compression no/g' "$config_file" \
    || echo "${red}Failed to set Compression no$nc"

echo "Setting ClientAliveInterval 300..."
sed -i 's/\(#\)\?ClientAliveInterval\(.*\)\?/ClientAliveInterval 300/g' "$config_file" \
    || echo "${red}Failed to set ClientAliveInterval 30$nc"

echo "Setting ClientAliveCountMax 2..."
sed -i 's/\(#\)\?ClientAliveCountMax\(.*\)\?/ClientAliveCountMax 2/g' "$config_file" \
    || echo "${red}Failed to set ClientAliveCountMax 2$nc"

echo -e "\nRestarting sshd..."
systemctl restart sshd

echo -e "\nDone"
echo -e "${cyan}NOTE: It is highly recommended to manually:\n1) Change sshd default" \
    "port (22) to something else\n2) Add 'AllowUsers [your username]' to the bottom" \
    "of 'sshd_config'$nc"


#### End of [ Main ]
########################################################################################
