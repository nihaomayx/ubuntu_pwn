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
<li> Display Memory: 128MB</li>
</ul>

# Installing

___

```shell
sudo apt install -y vim git gcc python3 qemu-user qemu-system gdb-multiarch libssl libffi-dev build-essential gem
pip3 install --upgrade pwntools keystone-engine ropper keystone-engine
```

___

```shell
cd /home/vboxuser/tools
git clone https://github.com/Gallopsled/pwntools.git; https://github.com/longld/peda.git; https://github.com/pwndbg/pwndbg.git; https://github.com/hugsy/gef.git
cd pwndbg
sudo ./setup.sh
```

# append to ~/.gdbinit

___

source /home/vboxuser/tools/pwndbg/gdbinit.py<br />
\# source /home/vboxuser/tools/peda/peda.py<br />
\# source /home/vboxuser/tools/gef-dev/gef.py<br />

# plugins

___

## ROPgadget

```shell
sudo pip3 install capstone
cd /home/vboxuser/tools
git clone https://github.com/JonathanSalwan/ROPgadget.git
sudo python3 ./ROPgadget/setup.py install
```

## one_gadget

```shell
sudo apt install -y ruby ruby-dev
sudo gem install one_gadget
```

## seccomp-tools

```shell
sudo gem install seccomp-tools
```

## glibc-all-in-one
```shell
git clone https://github.com/matrix1001/glibc-all-in-one
```

## LibcSearcher

```shell
mkdir /home/vboxuser/tools
cd home/vboxuser/tools
git clone https://github.com.cnpmjs.org/lieanu/LibcSearcher.git
sudo python3 ./LibcSearcher/setup.py install
```

## patchelf

```shell
sudo apt install -y patchelf
```

## ARM PWN

```shell
sudo apt install -y gcc-arm-linux-gnueabi gcc-aarch64-linux-gnu
```

## MIPS PWN

```shell
sudo apt install -y gcc-mips-linux-gnu gcc-mipsel-linux-gnu gcc-mips64-linux-gnuabi64 gcc-mips64el-linux-gnuabi64
```

## Apktools

<ol>
<li> Download Linux [wrapper](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool) script (Right click, Save Link As ```apktool```)</li>
<li> Download latest [Apktool](https://bitbucket.org/iBotPeaches/apktool/downloads)</li>
<li> Rename downloaded jar to ```apktool.jar```</li>
<li> Move both files (```apktool.jar``` & ```apktool```) to ```/usr/local/bin```(root needed)</li>
<li> Make sure both files are executable(```chmod + x```)</li>
<li> Try running ```apktool``` via cli</li>
</ol>

## jadx

```shell
git clone https://github.com/skylot/jadx.git
cd jadx
./gradlew dist
```