#!/bin/bash

if [ $(id -u) -ne 0 ] ; then
    echo -e "需要使用\033[0;31m root \033[0m用户执行"
    exit -1
fi

for folder in `ls ./scripts` ; do
    cd ./scripts/${folder}

    for file in `ls *.sh` ; do
        echo -e "run \033[0;36m scripts/${folder}/${file} \033[0m ..."
        bash ${file}
        if [ $? -eq 0 ] ; then
            echo -e "run \033[0;36m scripts/${folder}/${file} \033[0m [\033[0;32m success \033[0m]"
        else
            echo -e "run \033[0;36m scripts/${folder}/${file} \033[0m [\033[0;31m fail \033[0m]"
        fi
    done

    cd - > /dev/null
done
