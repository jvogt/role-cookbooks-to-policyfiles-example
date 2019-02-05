#
# Cookbook:: acme_role_redis
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'acme_base'
include_recipe 'redisio'
include_recipe 'redisio::enable'
