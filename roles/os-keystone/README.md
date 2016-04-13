# Ansible role: OpenStack-Keystone

This role setups the OpenStack Identity service

# Requirements

# Role variables
All variables of this role are defined in `defaults/main.yml`

## Mandatory variables
* `keystone_database_password`

## Handlers

* `restart keystone`: restart the keystone services
* `restart nginx`: restart the WSGI server (nginx web server)

# Dependencies
This role needs the OpenStack-common (os-common) role.

# Example playbook

# License
Apache-2.0

# Author Information
This role was created by [Leoswaldo Macias](leoswaldo.macias@intel.com) and [Obed Munoz](obed.n.munoz@intel.com)
