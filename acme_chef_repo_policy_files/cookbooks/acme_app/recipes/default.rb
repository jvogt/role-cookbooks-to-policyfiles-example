#
# Cookbook:: acme_app
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

service 'apache2' do
  extend Apache2::Cookbook::Helpers
  service_name lazy { apache_platform_service_name }
  supports restart: true, status: true, reload: true
  action :nothing
end

apache2_install 'default_install'

apache2_default_site 'foo' do
  action :enable
end

file "/var/www/html/index.html" do
  content "Hello World from #{node['acme']['app_name']}!!\n"
end
