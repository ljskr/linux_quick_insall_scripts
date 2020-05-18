#!/bin/bash

set -e

# 安装 docker

# 添加源
cat << EOF > /etc/apt/sources.list.d/docker.list
# curl https://download.docker.com/linux/debian/gpg | apt-key add -
# apt install docker-ce
 
deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/debian buster stable

EOF

# 安装 docker
curl https://download.docker.com/linux/debian/gpg | apt-key add -
apt update
apt install docker-ce

# 下载 docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# 设置 docker 镜像源
cat << EOF > /etc/docker/daemon.json
{
    "registry-mirrors": ["https://registry.docker-cn.com"]
}

EOF
