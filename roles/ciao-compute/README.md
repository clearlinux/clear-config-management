# ciao-compute
Ansible role to install the compute node for a CIAO cluster

## Requirements
- A previously setup of a CIAO controller node.
  You can setup one with [ciao-controller](https://github.com/clearlinux/clear-config-management/tree/master/roles/ciao-controller) role

## Role Variables
The available variables for this roles are the variables from [ciao-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/ciao-common) plus the following

Variable  | Default Value | Description
--------  | ------------- | -----------
fedora_cloud_image_url | [Fedora-Cloud-Base-23-20151030.x86_64.qcow2](https://dl.fedoraproject.org/pub/fedora/linux/releases/23/Cloud/x86_64/Images/Fedora-Cloud-Base-23-20151030.x86_64.qcow2) | URL for the latest fedora cloud image
clear_cloud_image_url | [clear-8970-cloud.img.xz](https://download.clearlinux.org/image/clear-8970-cloud.img.xz) | URL for the latest clearlinux cloud image

## Dependencies
* [ciao-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/ciao-common)

## Example Playbook
file *ciao_compute.yml*
```
- hosts: ciao_compute
  roles:
    - ciao-compute
```

file *group_vars/all*
```
ciao_controller_fqdn: controller.example.com
```

## License
Apache-2.0

## Author Information
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
