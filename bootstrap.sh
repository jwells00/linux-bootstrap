#!/bin/bash
#
# bootstrap.sh - Configures a newly provisioned server to a standardized setup.
#

# In case this script is being run from another directory or remotely, change
# to the directory this script is located in.
cd $(dirname ${BASH_SOURCE})

# Apply custom configuations needing root privs 
sudo ./bootstrap_root.sh

# Put config/preference files in HOME
cp -a ./home/* ~
cd ~
chmod 644 .vimrc
cd -

# Put Git "how-to" cheat sheets in ~/repos
cp ./repos/* ~/repos
find ~/repos -maxdepth 1 -type f -exec chmod 664 {} \;
