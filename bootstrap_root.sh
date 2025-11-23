#!/bin/bash
#
# bootstrap_root.sh - Runs custom configuations needing root privs (called from bootstrap.sh).
#

# Make sure user running this script is root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Re-alias cp command in case it is currently aliased with "-i" option.
alias cp='cp -v'

#
# In case this script is being run from another directory or remotely, change
# to the directory this script is located in.
#
cd $(dirname ${BASH_SOURCE})


echo "****************************************************************************"
echo "Put common scripts in /usr/local/bin"
echo "****************************************************************************"
cp -v ./usr_local_bin/* /usr/local/bin
cd /usr/local/bin
chmod 755 big bk rotate serverinfo
chmod 644 commonenv
cd -

echo "****************************************************************************"
echo "Put custom environment scripts in /etc/profile.d"
echo "****************************************************************************"
cp -v ./etc_profile_d/* /etc/profile.d
cd /etc/profile.d
chmod 644 01-custom-defaults.sh ZZ-custom-overrides.sh
cd -

echo "****************************************************************************"
echo "Change timezone to EST"
echo "****************************************************************************"
timedatectl set-timezone America/New_York
# List current timezone
timedatectl


