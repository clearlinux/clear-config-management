# os-keystone
This role setups the OpenStack Identity service.

## Requirements
- A previously setup database server.
  You can setup one with [mariadb](https://github.com/clearlinux/clear-config-management/tree/master/roles/mariadb) role

## Role variables

Variable | Default Value | Description
-------- | ------------- | -----------
mysql_fqdn | `{{ ansible_fqdn }}` | Fully Qualified Domain Name for mysql server
mysql_root_password | secret | Password for the `root` user in the database
keystone_fqdn | `{{ ansible_fqdn }}` | Fully Qualified Domain Name for Keystone server
keystone_db_password | secret | Password for the `keystone` user in the database
keystone_admin_password | secret | Password for the `admin` user in OpenStack

## Dependencies
None

## Example playbook
file *keystone.yml*
```
- hosts: openstack_identity
  roles:
    - os-keystone
```

file *group_vars/all*
```
mysql_root_password: secret
mysql_fqdn: database.example.com
keystone_fqdn: identity.example.com
keystone_admin_password: secret
keystone_db_password: secret
```

## License
Apache-2.0

## Author Information
This role was created by [Leoswaldo Macias](leoswaldo.macias@intel.com) and [Obed Munoz](obed.n.munoz@intel.com)
