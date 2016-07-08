# os-glance
This role setups the OpenStack Image service

## Requirements
- A previously setup database server.
  You can setup one with [mariadb](https://github.com/clearlinux/clear-config-management/tree/master/roles/mariadb) role
- A previously setup OpenStack Identity service.
  You can setup one with [os-keystone](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-keystone) role

## Role variables
The available variables for this roles are the variables from [os-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-common) plus the following

Note: Mandatory variables are shown in **bold**

Variable | Default Value | Description
-------- | ------------- | -----------
glance_fqdn | `{{ ansible_fqdn }}` | Fully Qualified Domain Name for Glance node
**glance_user_password** | | Password for the `glance` user in OpenStack
**glance_database_password** | | Password for the `glance` user in the database
**glance_p12password** | | Password for Glance certificates

## Dependencies
* [os-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-common)

## Example playbook
file *glance.yml*
```
- hosts: openstack_image
  roles:
    - os-glance
```

file *group_vars/all*
```
database_root_password: secret

keystone_fqdn: identity.example.com
keystone_admin_password: secret

glance_fqdn: image.example.com
glance_user_password: secret
glance_database_password: secret
glance_p12password: secret
```

## License
Apache-2.0

## Author Information
This role was created by [Marcos Simental](marcos.simental.magana@intel.com)
