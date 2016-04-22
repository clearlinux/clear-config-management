# Ansible role: OpenStack-Neutron

This role setups the OpenStack Networking service

# Requirements
You need a previously setup of the OpenStack Identity service
where this role can create the users, roles, etc.

# Role variables
All variables of this role are defined in `defaults/main.yml`

## Mandatory variables
* `neutron_database_password`
* `metadata_proxy_shared_secret`

## Handlers
* `restart neutron server`
* `restart linux bridge agent`
* `restart l3 agent`
* `restart dhcp agent`
* `restart metadata agent`

# Dependencies
This role needs the OpenStack-common (os-common) role.

# Example playbook

# License
Apache-2.0

# Author Information
This role was created by [Leoswaldo Macias](leoswaldo.macias@intel.com)
