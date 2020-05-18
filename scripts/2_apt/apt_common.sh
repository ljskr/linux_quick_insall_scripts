#!/bin/bash

set -e

# 安装常用基础软件
apt update
apt install -y \
    curl \
    gnupg2 
