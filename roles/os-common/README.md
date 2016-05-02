# Ansible role: OpenStack-common

This role is common for the OpenStack roles.

# Requirements
None

# Role variables
All variables of this role are defined in `defaults/main.yml`

## Mandatory variables
* `database_root_password`
* `keystone_admin_password`

## Handlers
None

# Dependencies
None

# Example playbook

# License
Apache-2.0

# Author Information
This role was created by

`library/keystone.py` taken from [openstack ansible](https://github.com/openstack/openstack-ansible/blob/liberty/playbooks/library/keystone).

`library/glance.py` taken from [openstack ansible](https://github.com/openstack/openstack-ansible/blob/liberty/playbooks/library/glance).
