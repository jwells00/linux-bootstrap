--------------------------------------------------------------------------------
Common place for copies of GitLab repositories
--------------------------------------------------------------------------------
This file lists the common Git commands run on daily basis.  For other Git
commands, see other text files next in this directory.  Also see this page in
Confluence: https://confluence.sys.cigna.com/display/Dental/Git+and+GitLab
And finally also search for "Git Stuff" in local PC's pastebin.txt file.

#
# Clone an existing GitLab repo
#
cd $HOME/gitrepos
git clone git@git.sys.cigna.com:dental-ts/oracle-account/dba-scripts.git
cd dba-scripts

#
# Get updates from remote repo that you do not have (you may have to resolve
# conflicts if local and remote versions of a file were changed independently)
#
cd jack
git pull

#
# Update local repo with any new files added to the directory recently and push
# to remote repo.
#
git add --all
git commit -a -m "Synchronize all local repo changes."
git push

#
# Add a new file to the local repo and upload to GitLab
#
vi [newfile.txt]
git add [newfile.txt]
git commit -m "Initial creation of [newfile.txt]"
git push

#
# Change existing file
#
vi [file.txt]
git commit -m "Changed something." [file.txt]
git push

#
# Commit all local changes and upload to GitLab
#
vi [file1.txt]
vi [file2.txt]
vi ...
git commit -a -m "Synchronize all local repo changes."
git push

#
# List all new or modified files to be committed
#
git status

