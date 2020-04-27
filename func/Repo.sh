#!/bin/bash
ReplaceEnterpriseSource() {
    if [ -f "/etc/apt/sources.list.d/pve-enterprise.list"  ]; then
    mv /etc/apt/sources.list.d/pve-enterprise.list /etc/apt/sources.list.d/pve-enterprise.list.bak
    echo -e 'deb https://mirrors.ustc.edu.cn/proxmox/debian/pve buster pve-no-subscription\n' > /etc/apt/sources.list.d/pve-community.list

    fi
    echo "Source replacement already complete"
}

ReplaceDebianUpdateRepo() {
    cat > /etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/debian/ buster main non-free contrib
deb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib
deb http://mirrors.aliyun.com/debian-security buster/updates main non-free contrib
deb-src http://mirrors.aliyun.com/debian-security buster/updates main non-free contrib
deb http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib
deb-src http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib
deb http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib
deb-src http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib
EOF
}


