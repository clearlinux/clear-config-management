# ciao-webui
Ansible role to install the dashboard for a CIAO cluster

## Requirements
- A previously setup of a CIAO controller node.
  You can setup one with [ciao-controller](https://github.com/clearlinux/clear-config-management/tree/master/roles/ciao-controller) role

## Role Variables
None

## Dependencies
* [ciao-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/ciao-common)

## Example Playbook
file *ciao_webui.yml*
```
- hosts: ciao_controller
  roles:
    - ciao-webui
```

## License
Apache-2.0

## Author Information
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
