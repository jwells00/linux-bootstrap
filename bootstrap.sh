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
# Note: be very careful to spell out all hidden files.. if you are not you might
# mistakenly include "." which could overwrite the permissions on $HOME.  This
# was noticed during unit testing.  A better technique would be to use the find
# command with "-type f" and loop through the result copying each file and changing
# permissions one by one.
cp -v ./home/.vimrc ~
cd ~
chmod 644 .vimrc
cd -

# Put Git "how-to" cheat sheets in ~/repos
cp -v ./repos/* ~/repos
find ~/repos -maxdepth 1 -type f -exec chmod 664 {} \;
