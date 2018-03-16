#!bin/bash
cd /home/ec2-user
yum update -y
echo "updating completed"
yum install wget -y
yum install git -y
echo  "installation of git has been completed"
local_path="/root/chef_repository/chef/chef-repo"
git clone https:https://github.com/NareashB/Chef-Terraform.git
echo "cloning from github repository"
[ -f chefdk-2.5.3-1.el7.x86_64.rpm ] && echo "chef is already installed" || \
(
wget https://packages.chef.io/files/stable/chefdk/2.5.3/el/7/chefdk-2.5.3-1.el7.x86_64.rpm
rpm -Uvh https://packages.chef.io/files/stable/chefdk/2.4.17/el/7/chefdk-2.4.17-1.el7.x86_64.rpm
)
echo "chef got installed.Its version is"
chef -v 
curl -L https://www.opscode.com/chef/install.sh | bash
echo "chef-solo got installed.Its version is"
chef-solo -v
[ -f master ] && echo "extracting not needed" || \
(
wget http://github.com/opscode/chef-repo/tarball/master
tar zxvf master
)
mv chef-boneyard-chef-repo-605eeda/* $local_path/
mkdir $local_path/.chef
echo " cookbook_path [ '/root/chef_repository/chef/chef-repo/cookbooks' ]" > $local_path/.chef/knife.rb
cd $local_path
echo "Running of cookbooks"
chef-solo -c solo.rb -j web.json
