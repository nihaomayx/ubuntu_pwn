sudo su

apt install -y vim git gcc python3 qemu-user qemu-system gdb-multiarch libssl libffi-dev build-essential gem
pip3 install --upgrade pwntools keystone-engine ropper keystone-engine

mkdir /home/vboxuser/tools
cd /home/vboxuser/tools
git clone https://github.com/Gallopsled/pwntools.git; https://github.com/longld/peda.git; https://github.com/pwndbg/pwndbg.git; https://github.com/hugsy/gef.git
./pwndbg/setup.sh

echo -e "source /home/vboxuser/tools/pwndbg/gdbinit.py\n\# source /home/vboxuser/tools/peda/peda.py\n\# source /home/vboxuser/tools/gef-dev/gef.py" >> ~/.gdbinit

pip3 install capstone
git clone https://github.com/JonathanSalwan/ROPgadget.git
python3 ./ROPgadget/setup.py install

apt install -y ruby ruby-dev
gem install one_gadget
gem install seccomp-tools
git clone https://github.com.cnpmjs.org/lieanu/LibcSearcher.git
python3 ./LibcSearcher/setup.py install

apt install -y patchelf

apt install -y gcc-arm-linux-gnueabi gcc-aarch64-linux-gnu

apt install -y gcc-mips-linux-gnu gcc-mipsel-linux-gnu gcc-mips64-linux-gnuabi64 gcc-mips64el-linux-gnuabi64