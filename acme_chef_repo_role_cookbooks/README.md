# Role Cookbook Pattern

There are 3 roles here, to demonstrate consuming a community cookbook directly (`acme_role_redis`), and consuming internally written wrapper cookbooks as well (`acme_role_app_x`)

Note the use of environmental attributes inside the `environments` directory, and the challenges with pinning dependent cookbooks.

Example node configurations:

Hostname | Runlist | Environment
| --- | --- | --- |
acme_app_1_chef_dev | recipe[acme_role_app_1] | dev
acme_app_2_chef_dev | recipe[acme_role_app_2] | dev
acme_redis_chef_dev | recipe[acme_role_redis] | dev
acme_app_1_chef_prod | recipe[acme_role_app_1] | prod
acme_app_2_chef_prod | recipe[acme_role_app_2] | prod
acme_redis_chef_prod | recipe[acme_role_redis] | prod
