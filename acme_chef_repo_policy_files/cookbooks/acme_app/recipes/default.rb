#
# Cookbook:: acme_app
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'apache2'

directory node['apache']['docroot_dir'] do
  recursive true
end

file "#{node['apache']['docroot_dir']}/index.html" do
  content "Hello World from #{node['acme']['app_name']}!!\n"
end
