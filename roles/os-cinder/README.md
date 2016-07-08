# os-cinder
This role setups the OpenStack Block Storage service

## Requirements
- A previously setup database server.
  You can setup one with [mariadb](https://github.com/clearlinux/clear-config-management/tree/master/roles/mariadb) role
- A previously setup OpenStack Identity service.
  You can setup one with [os-keystone](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-keystone) role
- A previously setup messaging server.
  You can setup one with [rabbitmq](https://github.com/clearlinux/clear-config-management/tree/master/roles/rabbitmq) role.

## Role variables
The available variables for this roles are the variables from [os-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-common) plus the following

Note: Mandatory variables are shown in **bold**

Variable | Default Value | Description
-------- | ------------- | -----------
cinder_fqdn | `{{ ansible_fqdn }}` | Fully Qualified Domain Name for Cinder controller node
**cinder_user_password** | | Password for the `cinder` user in OpenStack
**cinder_database_password** | | Password for the `cinder` user in the database
**cinder_p12password** | | Password for Cinder certificates
**cinder_devices** | | A list of devices to use for block storage

## Dependencies
* [os-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-common)

## Example playbook
file *cinder.yml*
```
- hosts: openstack_block_storage_controller
  roles:
    - os-cinder

- hosts: openstack_block_storage
  roles:
    - os-cinder
```

file *group_vars/all*
```
database_root_password: secret

keystone_fqdn: identity.example.com
keystone_admin_password: secret

cinder_fqdn: cinder-controller.example.com
cinder_user_password: secret
cinder_database_password: secret
cinder_p12password: secret

cinder_devices:
  - /dev/sdb
  - /dev/sdc
```

## License
Apache-2.0

## Author Information
This role was created by [Erick Cardona](erick.cardona.ruiz@intel.com)
