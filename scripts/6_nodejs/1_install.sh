#!/bin/bash

set -e

# 安装 nodejs

# 添加源
cat << EOF > /etc/apt/sources.list.d/nodesource.list
# curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
# apt install nodejs
 
deb https://mirrors.tuna.tsinghua.edu.cn/nodesource/deb_12.x buster main
deb-src https://mirrors.tuna.tsinghua.edu.cn/nodesource/deb_12.x buster main

EOF

# 安装 nodejs
curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
apt update
apt install nodejs

# 设置 npm 代理
npm config set registry https://registry.npm.taobao.org

# 设置证书
cat << \EOF >> /etc/bash.bashrc
#===============================
# nodejs block start
#===============================

# 让 npm 使用系统证书
export NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt

#===============================
# nodejs virtualenv block end
#===============================

EOF
