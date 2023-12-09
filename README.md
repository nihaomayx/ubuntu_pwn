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
sudo apt install -y vim git gcc python3 libffi-dev build-essential gem
pip3 install --upgrade pwntools
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

## one_gadget

```shell
sudo apt install -y ruby
sudo gem install one_gadget
```

## glibc-all-in-one
```shell
git clone https://github.com/matrix1001/glibc-all-in-one
```

## patchelf

```shell
sudo apt install -y patchelf
```

## ghidra
[ghidra](https://github.com/NationalSecurityAgency/ghidra/releases)

## ida pro
[ida pro](https://hex-rays.com/ida-pro/)

# vscode
[vscode](https://code.visualstudio.com/)
and the extension
**Python**