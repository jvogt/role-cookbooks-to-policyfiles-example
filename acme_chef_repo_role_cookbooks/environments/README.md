# Chef Environments

This directory has two examples of environments under the role cookbook model.

1) Generic environments like `dev`, and `prod` are common, but don't allow for different pinnings of dependent cookbooks across roles.  This will cause unexpected untested upgrades of dependent cookbooks in production.
2) The workaround to 1) is to create environments which are a combination of env + role name.  The downside grows with scale.  If you had `10` roles and `10` environments, you would need `100` chef environments.
