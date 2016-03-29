# Ansible role: OpenStack-Heat

This role setups the OpenStack Orchestration service

# Requirements
You need a previously setup of the OpenStack Identity service
where this role can create the users, roles, etc.

# Role variables
All variables of this role are defined in `defaults/main.yml`

## Mandatory variables
* `heat_domain_admin_password`
* `heat_user_password`
* `heat_database_password`

## Handlers
* `restart heat`: restart orchestration services

# Dependencies
This role needs the OpenStack-common (os-common) role.

# Example playbook

# License
Apache-2.0

# Author Information
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
