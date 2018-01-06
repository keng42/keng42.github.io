mkdir -p ~/.ssh
wget https://raw.githubusercontent.com/keng42/keng42.github.io/master/keng42_rsa.pub -O - >> ~/.ssh/authorized_keys
echo 'AddressFamily inet' | sudo tee -a /etc/ssh/sshd_config
sed -e 's/^.*PasswordAuthentication.*$/PasswordAuthentication no/g' /etc/ssh/sshd_config | tee /etc/ssh/sshd_config
systemctl restart sshd
