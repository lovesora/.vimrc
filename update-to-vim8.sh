#!bin/bash
yum remove vim -y

# 如果失败，提示unknown host apt.sw.be，手工安装：
# wget http://mirror.centos.org/centos/7/os/x86_64/Packages/ncurses-devel-5.9-13.20130511.el7.x86_64.rpm
# yum install ncurses-devel-5.9-13.20130511.el7.x86_64.rpm
yum install ncurses-devel -y

git clone https://github.com/vim/vim.git
cd vim/src

make
make install

cd ../..
rm -rf vim

echo '#!/bin/bash' > /etc/profile.d/path.sh && echo 'export PATH=$PATH:/usr/local/bin/vim' >> /etc/profile.d/path.sh

source /etc/profile.d/path.sh

