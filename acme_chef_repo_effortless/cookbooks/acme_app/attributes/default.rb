default['apache']['default_site_enabled'] = true
default['acme']['app_name'] = 'Default App'

case node.policy_group
when 'prod'
  default['apache']['loglevel'] = 'emerg'
else
  default['apache']['loglevel'] = 'info'
end
