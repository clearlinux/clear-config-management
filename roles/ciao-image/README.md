# clearlinux.ciao-image
Ansible role to install the image service for a CIAO cluster

This role configures the following components

* ciao image

## Requirements
None

## Role Variables
The available variables for this roles are the variables from [clearlinux.ciao-image](https://github.com/clearlinux/ansible-role-ciao-image) plus the following:

Note: Mandatory variables are shown in **bold**

Variable  | Default Value | Description
--------  | ------------- | -----------
ciao_image_fqdn | `{{ ansible_fqdn }}` | Fully Qualified Domain Name of the CIAO Image node

## Dependencies
* [clearlinux.ciao-common](https://github.com/clearlinux/ansible-role-ciao-common)

## Example Playbook
file *ciao.yml*
```
- hosts: image
  roles:
    - clearlinux.ciao-image
```

file *group_vars/all*
```
ciao_image_fqdn: image.example.com
```

## Contribution
**Pull Requests and Issues should be opened at [clearlinux/clear-config-management](https://github.com/clearlinux/clear-config-management).**

## License
Apache-2.0

## Author Information
This role was created by [Erick Cardona](erick.cardona.ruiz@intel.com)
