cd $HOME

echo "# print 3SCALE_README on login
echo -e \"\e[0;32m======================================\e[0m\"
cat \$HOME/3SCALE_README
echo -e \"\e[0;32m======================================\e[0m\"


# env variable for Nginx user agent
export THREESCALE_DEPLOYMENT_ENV=\"-ami\"
" >> .profile

# clean bash history
find /root/.*history /home/*/.*history -exec rm -f {} \;

# erase ssh authorized keys
find / -name "authorized_keys" –exec rm –f {} \;
sudo rm /etc/ssg/ssh_host_dsa_key* /etc/ssh/ssh_host_rsa_key* /etc/ssh/ssh_host_key* /etc/ssh/ssh_host_ecdsa_key*

# disable root and ubuntu user password
sudo passwd -l root
passwd -l ubuntu

# set automatic security updates
