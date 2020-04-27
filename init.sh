cd ~/Downloads
mkdir -p debs
cd debs

# * Install snaps *
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# * Install uget *
# sudo add-apt-repository ppa:plushuang-tw/uget-stable
# sudo apt install -y ./uget_2.2.1-0ubuntu0_bionic_amd64.deb

cd

sudo apt install -y git
sudp apt install curl
sudo apt install -y gcc g++ make
sudo apt install -y gnome-tweak-tool
sudo apt install -y openconnect network-manager-openconnect network-manager-openconnect-gnome ocproxy
sudo apt install -y htop
sudo apt install -y net-tools
sudo apt install -y libssl-dev libffi-dev libxml2-dev libjpeg-dev libxslt1-dev

# * Install snaps *
sudo snap install code --classic
sudo snap install skype --classic
sudo snap install spotify
sudo snap install vlc
sudo snap install discord

# * Install node *
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y -y nodejs
node --version

# * Install yarn *
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn
yarn --version

# * Install postgres *
echo 'deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main' | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update
sudo apt install -y postgresql-12 # or postgresql-10

# * Run postgres server *
pg_ctlcluster 12 main start
sudo systemctl start postgresql@12-main

# * Install pip3 *
sudo apt install -y python3-pip
pip3 --version

# * Instsall python venv *
sudo apt install -y python3-venv

# * Install fish shell *
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# * Set fish as default login shell *
chsh -s `which fish`

# * Install omf and theme *
curl -L https://get.oh-my.fish | fish
fish
omf install batman

# * Install thefuck *
sudo pip3 install thefuck
# thefuck --alias ok
# or use fish ok function
