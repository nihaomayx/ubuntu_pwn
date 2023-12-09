# update
echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
sudo apt-get update
sudo apt update

# libssl
sudo apt-get install libssl

# essential gadgets
sudo apt install -y vim git gcc python3 python3-pip libffi-dev build-essential gem
pip3 install --upgrade pwntools

if [ ! -d "/home/vboxuser/tools" ];then
    mkdir /home/vboxuser/tools
fi
cd /home/vboxuser/tools

# pwntools peda pwndbg gef patchelf
git clone https://github.com/Gallopsled/pwntools.git; https://github.com/longld/peda.git; https://github.com/pwndbg/pwndbg.git; https://github.com/hugsy/gef.git
cd pwndbg
sudo ./setup.sh
cd ..
echo "# source /home/vboxuser/tools/peda/peda.py\n# source /home/vboxuser/tools/gef-dev/gef.py" >> ~/.gdbinit
sudo apt install -y patchelf

# one-gadget
sudo apt install -y ruby
sudo gem install one_gadget

# glibc-all-in-one
git clone https://github.com/matrix1001/glibc-all-in-one