## Install arduino_cli
cd $HOME
sudo apt-get install curl -y
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
echo "export PATH=$HOME/bin:$PATH" >> .bashrc

sudo adduser $USER dialout