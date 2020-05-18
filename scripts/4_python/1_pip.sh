#!/bin/bash

set -e

# 设置 pip.conf

cat << EOF >> /etc/pip.conf
[global]
# 豆瓣源
# index-url = https://pypi.douban.com/simple
# 清华源
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
# 阿里云源
# index-url = https://mirrors.aliyun.com/pypi/simple

EOF
