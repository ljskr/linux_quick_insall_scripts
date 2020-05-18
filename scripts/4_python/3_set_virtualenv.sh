#!/bin/bash

set -e

# 设置 python 虚拟环境

cat << \EOF >> /etc/bash.bashrc
#===============================
# python virtualenv block start
#===============================

# 加载 virtualenvwrapper 脚本
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
  export WORKON_HOME='~/.virtualenvs'
  source /usr/local/bin/virtualenvwrapper.sh
fi
 
# 让 pip 使用系统证书
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

#===============================
# python virtualenv block end
#===============================

EOF
