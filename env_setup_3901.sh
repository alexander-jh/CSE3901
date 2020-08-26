## CSE3901 VM Config to Execute:
##  bash env_setup_3901.sh
sudo apt update
sudo apt upgrade -y

## Install text editors
sudo apt install git apt-transport-https emacs -y

## Create SSH
ssh-keygen -t rsa -b 4096

## Install Ruby and Rails
wget -q https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer -O- | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
sudo apt install zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev -y
rbenv install 2.6.6
rbenv global 2.6.6
sudo apt install nodejs npm -y
sudo npm install yarn -g
gem install --no-document rails -v 6.0.3

## Confirm Ruby installation
##	ruby -v
##
## Confirm Rails Installation	
##  mkdir rails_work
##	cd rails_work
##	rails new demo
##	cd demo
##	rake about  # version info, checks for a javascript runtime, etc
##	rails server
##
## snap-install Optional IDEs

sudo snap install rubymine --classic
sudo snap install code --classic
sudo snap install sublime-text --classic

## Reboot VB after installation
##	sudo reboot
