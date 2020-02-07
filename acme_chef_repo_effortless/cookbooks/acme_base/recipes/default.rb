#
# Cookbook:: acme_base
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update

include_recipe 'os-hardening'
include_recipe 'ntp'
