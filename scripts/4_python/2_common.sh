#!/bin/bash

set -e

# 安装 python 常用软件

# libsm6, libxrender1 for opencv
apt update
apt install -y \
    python3-pip \
    libsm6 \
    libxrender1

pip3 install -r requirements.txt
