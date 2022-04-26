A Rails CRUD app for pharmaceutical products


# Table of Contents  


- [Installing Ruby](#ruby)  
  * [rbenv](#rbenv)
- [Installing Rails](#rails)  
  * [Node](#node)
- [Installing the project](#project)  
- [Running the project](#running)


<a name="ruby"/>

## Installing Ruby

First, make sure your Linux distribution is up to date. 
```
sudo apt update
sudo apt upgrade
```
Next, you need to install some required packages that do not come preinstalled:

`sudo apt install gcc make libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev`

<a name="rbenv"/>    

### rbenv

Install rbenv, which makes it easy to install and manage Ruby versions.
First,  clone the rbenv repository.

`git clone https://github.com/rbenv/rbenv.git ~/.rbenv`

Next, add some commands to allow rbenv to work properly:
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

This command will take some time. The --verbose flag will show you what’s going on so you can be sure it hasn’t gotten stuck.

When the last command is finished, set the Ruby version and verify that it’s working:

`rbenv global 3.0.2`

Then,

`ruby -v`

The above command should return something similar to this:

`ruby 3.0.2pxx (20xx-xx-xx revision xxxxx) [x86_64-linux]`

<a name="rails"/>

# Installing Rails

Run:

`gem install rails`

Once the installation finishes, you can check if everything went well by restarting your terminal and running the following command:

`rails -v`

This should display the version of Rails installed on your system indicating the installation went smoothly.

## Install Yarn

You can verify if you have Yarn installed already by running the following command:

`yarn --version`

<a name="node"/>

### Node

It is recommended to install Yarn through the npm package manager, which comes bundled with Node.js. To install Node:
`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`

If you DON'T have npm installed, you should be able to install it by running:

```
sudo apt install npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
```

Once you have npm installed you can run the following both to install and upgrade Yarn:

`sudo npm install --global yarn`

(If you run into a 'EACCES Permission denied' error on the node_modules folder, set node_modules to be owned by you:

(ownerName is your account's name, visible by running `whoami` in Linux)

`sudo chown -R ownerName: /usr/local/lib/node_modules'`

Alternatively, you can find the Yarn installer for each individual operating system here:

https://classic.yarnpkg.com/lang/en/docs/install

<a name="project"/>

# Installing the project

cd into the project:

`cd pharmarails`

Install Ruby gems by running:

`bundle`

Update webpacker:

`rails webpacker:install`

Configure database:

```
rails db:migrate
rails db:seed
```

Start the server:

`rails s`

<a name="running"/>   

# Running the project 

The project should be accessible on http://localhost:3000/ or http://127.0.0.1:3000/ . If not, the terminal should show the appropriate URL.

  The main page allows for creating new Items, as well as searching. Any created item can be searched by serial number. Pre-made products' serial numbers are:
  
```
    123456789 
    987654321
    111111111
    000000000 
    222222222
```
