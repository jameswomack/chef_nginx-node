[ -d /usr/local/src ] || mkdir /usr/local/src
rm -rf /chef
cp -R $(pwd) /chef
cd /chef
librarian-chef install
chef-solo -c solo.rb
