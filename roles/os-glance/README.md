# Ansible role: OpenStack-Glance

This role setups the OpenStack Image service

# Requirements
You need a previously setup of the OpenStack Identity service
where this role can create the users, roles, etc.

# Role variables
All variables of this role are defined in `defaults/main.yml`

## Mandatory variables
* `glance_user_password`
* `glance_database_password`

## Handlers
* `restart glance`: restart the image services

# Dependencies
This role needs the OpenStack-common (os-common) role.

# Example playbook

# License
Apache-2.0

# Author Information
This role was created by [Marcos Simental](marcos.simental.magana@intel.com)
