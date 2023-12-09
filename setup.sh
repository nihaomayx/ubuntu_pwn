# apt-get update
echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
sudo apt-get update

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

# ROPgadget
pip3 install capstone
git clone https://github.com/JonathanSalwan/ROPgadget.git
sudo python3 ./ROPgadget/setup.py install

# one-gadget seccomp-tools LibSearcher
sudo apt install -y ruby ruby-dev
sudo gem install one_gadget
sudo gem install seccomp-tools
git clone https://github.com.cnpmjs.org/lieanu/LibcSearcher.git
sudo python3 ./LibcSearcher/setup.py install

# glibc-all-in-one
git clone https://github.com/matrix1001/glibc-all-in-one

# vscode
[vscode](https://code.visualstudio.com/)
and the extension
**Python**