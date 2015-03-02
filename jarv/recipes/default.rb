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

python_pip "ansible"
