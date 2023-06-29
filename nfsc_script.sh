
#!/bin/bash


yum install nfs-utils
systemctl enable firewalld --now
echo "192.168.56.50:/srv/share/ /mnt nfs vers=3,proto=udp,noauto,x-systemd.automount 0 0" >> /etc/fstab
systemctl daemon-reload
systemctl restart remote-fs.target
mount 192.168.56.50:/srv/share
touch /mnt/upload/final_check

