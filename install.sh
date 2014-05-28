rm -rf /chef
cp -R $(pwd) /chef

sudo touch /var/log/node_3001.log
sudo touch /var/log/node_3002.log
sudo chmod 777 /var/log/node_3001.log
sudo chmod 777 /var/log/node_3002.log

cd /chef
librarian-chef install
chef-solo -c solo.rb

start uxtcExpress
