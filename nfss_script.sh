#!/bin/bash

yum install nfs-utils
systemctl enable firewalld --now
firewall-cmd --add-service="nfs3" --add-service="rpc-bind" --add-service="mountd" --permanent
firewall-cmd --reload
systemctl enable nfs --now
mkdir -p /srv/share/upload
chown -R nfsnobody:nfsnobody /srv/share
chmod 0777 /srv/share/upload
cat << EOF > /etc/exports
/srv/share 192.168.56.50/27(rw,sync,root_squash)
EOF
exportfs -r
exportfs -s
touch  /srv/share/upload/check_file

