# Installing Ruby

First, make sure your Linux distribution is up to date. 
```
sudo apt update
sudo apt upgrade
```
Next, you need to install some required packages that do not come preinstalled. Be sure to copy and paste this command.

`sudo apt install gcc make libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev`
## rbenv
Install rbenv, which makes it easy to install and manage Ruby versions.
First,  clone the rbenv repository.

`git clone https://github.com/rbenv/rbenv.git ~/.rbenv`

Next, we’ll add some commands to allow rbenv to work properly. 
```
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exit
```
After running the final exit command, you will need to close out of all open terminals and open a new terminal.

Next, you need to install ruby-build to help compile the Ruby binaries. Run these commands in the terminal to create a directory for the ruby-build plugin and then download it to the proper directory.
```
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```
Finally, run

`rbenv -v`

from your terminal to verify that rbenv has been installed correctly. You should get an output with a version number similar to this:

`rbenv 1.2.0-8-ga76c4aa`

Inside the terminal, run this command:

`rbenv install 3.0.2 --verbose`

This command will take 10-15 minutes to complete. The --verbose flag will show you what’s going on so you can be sure it hasn’t gotten stuck.

When the last command is finished, set the Ruby version and verify that it’s working:

`rbenv global 3.0.2`

Then,

`ruby -v`

The above command should return something similar to this:

`ruby 3.0.2pxx (20xx-xx-xx revision xxxxx) [x86_64-linux]`
