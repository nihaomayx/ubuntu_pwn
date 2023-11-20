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

sudo apt install -y vim git gcc python3 qemu-user qemu-system gdb-multiarch libssl libffi-dev build-essential gem<br />
pip3 install --upgrade pwntools keystone-engine ropper keystone-engine<br />

___

cd /home/vboxuser/tools<br />
git clone https://github.com/Gallopsled/pwntools.git; https://github.com/longld/peda.git; https://github.com/pwndbg/pwndbg.git; https://github.com/hugsy/gef.git
cd pwndbg<br />
sudo ./setup.sh<br />

# append to ~/.gdbinit

___

source /home/vboxuser/tools/pwndbg/gdbinit.py<br />
\# source /home/vboxuser/tools/peda/peda.py<br />
\# source /home/vboxuser/tools/gef-dev/gef.py<br />

# plugins

___

## ROPgadget

sudo pip3 install capstone<br />
cd /home/vboxuser/tools<br />
git clone https://github.com/JonathanSalwan/ROPgadget.git<br />
sudo python3 ./ROPgadget/setup.py install<br />

## one_gadget

sudo apt install -y ruby ruby-dev<br />
sudo gem install one_gadget<br />

## seccomp-tools

sudo gem install seccomp-tools<br />

## LibcSearcher

mkdir /home/vboxuser/tools<br />
cd home/vboxuser/tools<br />
git clone https://github.com.cnpmjs.org/lieanu/LibcSearcher.git<br />
sudo python3 ./LibcSearcher/setup.py install<br />

## patchelf

sudo apt install -y patchelf<br />

## ARM PWN

sudo apt install -y gcc-arm-linux-gnueabi gcc-aarch64-linux-gnu<br />

## MIPS PWN

sudo apt install -y gcc-mips-linux-gnu gcc-mipsel-linux-gnu gcc-mips64-linux-gnuabi64 gcc-mips64el-linux-gnuabi64<br />
