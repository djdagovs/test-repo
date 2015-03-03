#
# Cookbook Name:: jarv
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
include_recipe 'python'
include_recipe 'python::pip'
include_recipe 'apt'

# install ansible using pip
python_pip "ansible"

# install puppet using ppa

apt_repository "puppet" do
  distribution node['lsb']['codename']
  uri "https://apt.puppetlabs.com"
  components ['main']
  keyserver "pool.sks-keyservers.net"
  key "4BD6EC30"
end
