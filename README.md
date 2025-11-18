# Linux Bootstrap

Use this repo to "bootstrap" a newly provisioned Linux server with all your
preferred environment settings and utility scripts.  The steps listed below
are primarily done on Oracle Linux (binary compatible with RHEL) servers that
have been provisioned in Oracle Cloud Infrastructure (OCI).

Linux Setup Checklist
------------------------
1. Ideally, provision a VM using the OCI Console or CLI.

2. Configure a profile/session for the new VM in your SSH terminal emulator
   of choice (SecureCRT, Putty, etc.) using the correct private key.

3. Logon to new VM as opc user and run configuration steps below.

Configuration Steps
------------------------
~~~
# Update to latest Linux package releases (including refresh of repo list) without prompting and reboot.
sudo dnf upgrade --refresh -y
sudo reboot

# Install git
sudo dnf install git -y

# Get linux-bootstrap repo
mkdir repos
cd repos
git clone https://github.com/jwells00/linux-bootstrap.git ./linux_bootstrap
cd linux_bootstrap
./bootstrap.sh
~~~

Then logout and login to confirm new environment is set properly.

## Optional Component Setup

# ~/bin
~~~
# Setup $HOME/bin
cd ~
mkdir bin
cd bin
git clone https://github.com/jwells00/linux-bin.git ./bin
~~~
