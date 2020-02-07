# Hab Managed differences

The main differences here are:
* The directory structure, to include a habitat plan file and a policyfiles directory for hab to find the plan
* The environment attributes are now implemented at server provisioning using a the habitat `user.toml` feature.  Look at the terraform example to see how this is done.

### Example Host Configurations:
Hostname | Hab Package Identifier | Depot Channel
| --- | --- | --- |
acme_app_1_chef_dev | jvogt/acme_app_1 | dev
acme_app_2_chef_dev | jvogt/acme_app_2 | dev
acme_redis_chef_dev | jvogt/acme_redis | dev
acme_app_1_chef_prod | jvogt/acme_app_1 | prod
acme_app_2_chef_prod | jvogt/acme_app_2 | prod
acme_redis_chef_prod | jvogt/acme_redis | prod
