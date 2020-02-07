case node.policy_group
when 'prod'
  default['ntp']['servers'] = [
    'ntp0.prod.acme.internal',
    'ntp1.prod.acme.internal'
  ]
when 'dev', 'stage', 'integration'
  default['ntp']['servers'] = [
    'ntp0.nonprod.acme.internal',
    'ntp1.nonprod.acme.internal'
  ]
else
  default['ntp']['servers'] = ['0.pool.ntp.org', '1.pool.ntp.org']
end