# cyber_security_envir

___

# Requirements

___

<ul>
<li>OS</li>
<ul>
<li> Ubuntu: 20.04.6 or higher</li>
<li> Oracle VM VirtualBox: 7.0.12 or higher</li>
</ul>
<li> RAM: 10240MB</li>
<li> Storage: 2.0T</li>
</ul>

# Installing

___

sudo apt install -y vim git gcc python3 qemu-user qemu-system gdb-multiarch libssl libffi-dev build-essential gem
pip3 install --upgrade pwntools keystone-engine ropper keystone-engine

___

cd /home/vboxuser/tools
git clone https://github.com/Gallopsled/pwntools.git; https://github.com/longld/peda.git; https://github.com/pwndbg/pwndbg.git; https://github.com/hugsy/gef.git
./pwndbg/setup.sh

# append to ~/.gdbinit

___

source /home/vboxuser/tools/pwndbg/gdbinit.py
\# source /home/vboxuser/tools/peda/peda.py
\# source /home/vboxuser/tools/gef-dev/gef.py

# plugins

___

## ROPgadget

sudo pip3 install capstone
cd /home/vboxuser/tools
git clone https://github.com/JonathanSalwan/ROPgadget.git
sudo python3 ./ROPgadget/setup.py install

## one_gadget

sudo apt install -y ruby ruby-dev
sudo gem install one_gadget

## seccomp-tools

sudo gem install seccomp-tools

## LibcSearcher

cd home/vboxuser/tools
git clone https://github.com.cnpmjs.org/lieanu/LibcSearcher.git
sudo python3 ./LibcSearcher/setup.py install

## patchelf

sudo apt install -y patchelf

## ARM PWN

sudo apt install -y gcc-arm-linux-gnueabi gcc-aarch64-linux-gnu

## MIPS PWN

sudo apt install -y gcc-mips-linux-gnu gcc-mipsel-linux-gnu gcc-mips64-linux-gnuabi64 gcc-mips64el-linux-gnuabi64