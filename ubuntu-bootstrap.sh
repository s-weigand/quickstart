#!/usr/bin/env bash

set -e 

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install git-core -y
git config --global color.ui true

# Install deps
sudo apt-get install python3 libfreetype6-dev libpng-dev python-setuptools python3-dev -y
sudo apt-get install curl -y
sudo apt-get install tmux -y
sudo apt-get install build-essential gcc make g++ -y

cd ~
wget https://bootstrap.pypa.io/get-pip.py
sudo -H python3 get-pip.py
python3 --version 
pip3 --version

# sudo setfacl -m user:1000:rwx /usr/local/lib/python3.5/dist-packages
# cython3 python3-scipy libfreetype6-dev -y
# sudo pip3 install sympy
# sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose -y
# sudo apt-get install python3-numpy python3-scipy python3-matplotlib ipython ipython3-notebook python3-pandas python3-nose -y

# check if this is run in vagrant, and change dir if it is
VAGRANT_DIR="/vagrant"

if [ -d "$VAGRANT_DIR" ]; then
  cd $VAGRANT_DIR
fi

# install dependencies
sudo -H  pip3 install -r requirements.txt

# glotaran itself
# sudo -H  pip3 install git+https://github.com/glotaran/glotaran.git --process-dependency-links
# this is for no till PR # gets merged
sudo -H  pip3 install git+https://github.com/s-weigand/glotaran.git@make-pip+git-install-possible --process-dependency-links

# Intall minimal latex environment to allow print to pdf in jupyter
sudo apt-get install --no-install-recommends texlive-latex-base texlive-latex-extra texlive-fonts-recommended cm-super -y
sudo apt-get install --no-install-recommends pandoc -y
sudo setfacl -m user:1000:r-x /usr/local/bin
rm ~/get-pip.py

