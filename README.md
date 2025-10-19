# Linux Bootstrap

Use this repo to "bootstrap" a newly provisioned Linux server with all your
preferred environment settings and utility scripts.  The steps listed below
are primarly done on Oracle Linux servers provisioned in Oracle Cloud Infrastructure (OCI).

Linux Setup Checklist
------------------------
1. Ideally, provision a VM using the CLI (see above).
   > First decide if you will be using the common SSH keypair (convenient but
     less secure) or a newly generated SSH keypair specifically for the new
     VM (more secure, but a pain to manage).
     If generating a new keypair, search for the "ssh stuff" section above and
     run the ssh-keygen command.
   > Prepare the CLI script using the common or specific public key you decided
     on in prior step.
   > Run the CLI script and wait for the new VM to be provisioned.

2. Create a SecureCRT profile session for the new VM using the correct private
   key (either the common or specific on you decided on in the prior step).

3. Logon to new VM as opc user and run configuration steps

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
cd linux-bootstrap
./bootstrap.sh
~~~

Then logout and login to confirm new environment set.

4. Make individual adjustments