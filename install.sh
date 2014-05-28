rm -rf /chef
cp -R $(pwd) /chef
cd /chef
librarian-chef install
chef-solo -c solo.rb
