--------------------------------------------------------------------------------
Git Commands
--------------------------------------------------------------------------------
Common Git commands run on daily basis.  For additional Git commands, run:

githelp
githelp2
cat ~/repos/jw_gitflow.txt
cat ~/repos/Other_Git_Commands.txt
cat ~/repos/Resolve_Merge_Conflict.txt

And for comprehensive documentation, see the "git_info.txt" file on JW PC.

#
# Clone an existing GitHub repo
#
cd
git clone git@github.com:jwells00/oradba.git
cd oradba
git remote -v

#
# Get updates from remote repo that you do not have (you may have to resolve
# conflicts if local and remote versions of a file were changed independently)
#
cd ~/oradba
git pull

#
# Update local repo with any new files added to the directory recently and push
# to remote repo.
#
git add --all
git commit -m "Synchronize all local repo changes."
git push

#
# Add a new file to the local repo and upload to GitHub
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
# List all new or modified files to be committed
#
git status

