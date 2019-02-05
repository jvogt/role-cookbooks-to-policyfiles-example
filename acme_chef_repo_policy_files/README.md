# Policyfile differences

The main differences here are:
* The role cookbooks are gone, and replaced with policyfiles.
* The environment attributes are moved into the `acme_base`, and `acme_app` cookbooks, and are chosen based on `node.policy_group`


### Example Node Configurations:
Hostname | Policy Name | Policy Group
| --- | --- | --- |
acme_app_1_chef_dev | acme_app_1 | dev
acme_app_2_chef_dev | acme_app_2 | dev
acme_redis_chef_dev | acme_redis | dev
acme_app_1_chef_prod | acme_app_1 | prod
acme_app_2_chef_prod | acme_app_2 | prod
acme_redis_chef_prod | acme_redis | prod
