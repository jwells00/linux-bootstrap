#
# 01-custom-defaults.sh
# jwells, Oct-2025
# Custom global environment settings for this server.
# Files in /etc/profile.d are sourced in alphabetical order so if anything
# set in this script is being overridden by other scripts in this directory,
# put it in the ZZ-custom-overrides.sh file instead.
#

# Source the standardized shell environment
. /usr/local/bin/commonenv

