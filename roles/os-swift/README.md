# os-swift
This role setups the OpenStack Object Storage service

## Requirements
- A previously setup OpenStack Identity service.
  You can setup one with [os-keystone](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-keystone) role
- At least two block devices to install swift (known as account device and container device).

## Role variables
The available variables for this roles are the variables from [os-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-common) plus the following

Note: Mandatory variables are shown in **bold**

Variable | Default Value | Description
-------- | ------------- | -----------
swift_fqdn | `{{ ansible_fqdn }}` | Fully Qualified Domain Name for Swift controller node
**swift_user_password** | | Password for the `swift` user in OpenStack
**swift_p12password** | | Password for Swift certificates
swift_storage_device_path | /dev/ | Location for storage devices
**swift_storage_devices** | | A list of devices to use for object storage without the `swift_storage_device_path` prefix
swift_replica_count | 3 | Number of replicas
**swift_hash_path_prefix** | | An uniqe value to prevent hash collisions
**swift_hash_path_suffix** | | An uniqe value to prevent hash collisions

## Dependencies
* [os-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-common)

## Example playbook
file *swift.yml*
```
- hosts: openstack_object_storage_controller
  roles:
    - os-swift

- hosts: openstack_object_storage
  roles:
    - os-swift
```

file *group_vars/all*
```
keystone_fqdn: identity.example.com
keystone_admin_password: secret

swift_fqdn: swift-controller.example.com
swift_user_password: secret
swift_p12password: secret

swift_storage_device_path: /dev/
swift_storage_devices:
  - sdb
  - sdc
  - sdd
swift_replica_count: 3
swift_hash_path_prefix: 06f5086772e0cd0b8f4e2381fa610d36
swift_hash_path_suffix: 9a5841b4ffccef51033ce2e19fadbde5
```

## License
Apache-2.0

## Author Information
This role was created by [Erick Oziel Cardona Ruiz](erick.cardona.ruiz@intel.com)
