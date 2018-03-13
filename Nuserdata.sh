#!bin/bash
yum update
yum install git
yum install chef-solo
local_path="/root/Chef-Terraform/chef-repo"
mkdir /root/Chef-Terraform
mkdir /root/Chef-Terraform/chef-repo
echo "git got installed" 〉 $local_path/git_log.txt
wget https://packages.chef.io/files/stable/chefdk/2.4.17/ubuntu/16.04/chefdk_2.4.17-1_amd64.deb
dpkg -i *.deb
chef -v 〉〉 hello.txt
curl -L https://www.opscode.com/chef/install.sh | bash
chef-solo -v 〉〉 hello.txt
wget http://github.com/opscode/chef-repo/tarball/master
tar zxvf master
mv chef-boneyard-chef-repo-605eeda/* $local_path/
mkdir $local_path/.chef
echo " cookbook_path [ '/root/Chef-Terraform/chef-repo/cookbooks' ]" 〉 $local_path/.chef/knife.rb
echo "chef got installed" 〉〉 chef_log.txt
cd $local_path/cookbooks
chef generate cookbook apache2
echo "cookbook ntp  has been generated " 〉〉$local_path/cookbook_log.txt
cd $local_path/cookbooks/apache2/recipes/
echo "entered into cookbook"
echo "package 'apache2'
service 'apache2' do
  action [:enable, :start]
end
file '/var/www/html/index.html' do
  content '〈html〉
  〈body〉
    〈h1〉hello world〈/h1〉
  〈/body〉
〈/html〉'
end" 〉 $local_path/cookbooks/apache2/recipes/default.rb
rm -rf chef-boneyard-chef-repo-605eeda chefdk_2.4.17-1_amd64.deb
cd $local_path/cookbooks
echo "cookbook for java"
knife cookbook site download java_se
knife cookbook site download apt
knife cookbook site download build-essential
knife cookbook site download mingw
knife cookbook site download seven_zip
knife cookbook site download ark
knife cookbook site download homebrew
knife cookbook site download windows
tar -xvf java_se-9.0.4.tar.gz
tar -xvf apt-6.1.4.tar.gz
tar -xvf build-essential-8.0.4.tar.gz
tar -xvf mingw-2.0.2.tar.gz
tar -xvf seven_zip-2.0.2.tar.gz
tar -xvf ark-3.1.0.tar.gz
tar -xvf homebrew-5.0.1.tar.gz
tar -xvf windows-4.0.1.tar.gz
cd $local_path
git clone https://github.com/NareashB/Chef-Terraform.git
cd /root/Chef-Terraform/chef-repo/sample123/chef-repo/
cp -rf solo.rb web.json $local

