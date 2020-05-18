#!/bin/bash

set -e

# 安装 python 常用软件

apt update
apt install -y \
    python3-pip \
    # for opencv
    libsm6 \
    libxrender1

pip3 install -r requirements.txt
