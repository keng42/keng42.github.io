apt-get install -y git
mkdir -p /var/repo/app.git
cd /var/repo/app.git
git init --bare
cd hooks
echo "#!/bin/sh" > post-receive
echo "git --work-tree=/var/www/app --git-dir=/var/repo/app.git checkout -f" >> post-receive
echo "cd /var/www/app && sh ./sh/deploy.sh" >> post-receive
chmod +x post-receive
