name 'acme_app_1'

default_source :supermarket
default_source :chef_repo, '../cookbooks'

run_list 'acme_base::default', 'acme_app::default'

default['acme']['app_name'] = 'App 1'
