# ciao-network
Ansible role to install the network node for a CIAO cluster

## Requirements
- A previously setup of a CIAO controller node.
  You can setup one with [ciao-controller](https://github.com/clearlinux/clear-config-management/tree/master/roles/ciao-controller) role

## Role Variables
The available variables for this roles are the variables from [ciao-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/ciao-common) plus the following

Variable  | Default Value | Description
--------  | ------------- | -----------
cnci_image_url | [clear-8260-ciao-networking.img.xz](https://download.clearlinux.org/demos/ciao/clear-8260-ciao-networking.img.xz) | URL for the latest ciao networking image

## Dependencies
* [ciao-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/ciao-common)

## Example Playbook
```
- hosts: ciao_network
  roles:
    - ciao-network
```

file *group_vars/all*
```
ciao_controller_fqdn: controller.example.com
```

## License
Apache-2.0

## Author Information
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
