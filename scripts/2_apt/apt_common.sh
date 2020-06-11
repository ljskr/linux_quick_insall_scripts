#!/bin/bash

set -e

# 备份原来的 sources.list
DATE_TIME_NOW=`date +"%Y%m%d_%H%M"`
mv /etc/apt/sources.list /etc/apt/sources.list.bak_${DATE_TIME_NOW}

# 设置 sources.list
cat << \EOF > /etc/apt/sources.list
deb https://mirrors.tuna.tsinghua.edu.cn/debian buster main contrib non-free
deb https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main
EOF

# 安装常用基础软件
apt update
apt install -y \
    curl \
    gnupg2 \
    vim
