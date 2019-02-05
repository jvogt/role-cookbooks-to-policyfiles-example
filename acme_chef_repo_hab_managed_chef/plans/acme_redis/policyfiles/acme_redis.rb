name 'acme_redis'

default_source :supermarket
default_source :chef_repo, '../../../cookbooks'

run_list 'acme_base::default', 'redisio::default'

default['redisio']['servers'] = [
  {'port' => '10000'}
]
