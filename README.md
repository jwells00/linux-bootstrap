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

### Configure SSH Key in GitHub
The step above created a local SSH public and private key pair.  Follow these steps to add them in your GitHub account.
1) Copy the public key into your clipboard.
~~~
cat ~/.ssh/${HOSTNAME}_id_rsa.pub
~~~
2) Login to your GitHub account and click on your avatar in upper right, then:
   - Settings
   - SSH and GPH keys (on the left side of screen)
   - New SSH key button
3) Enter:
   ~~~
   - Title.....: <user>@<clienthost> (ex: centos@novi1, opc@ncglxo01, jwells@OPTI5080)
   - Key Type..: Authentication Key
   - Key.......: Paste in contents of id_rsa.pub key copied above.
   ~~~
   Then click "Add SSH Key" button.

### Setup ~/bin
~~~
cd ~
git clone https://github.com/jwells00/linux-bin.git ./bin
~~~
