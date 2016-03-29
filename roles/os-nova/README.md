# Ansible role: OpenStack-Nova

This role setups the OpenStack Compute service

# Requirements
You need a previously setup of the OpenStack Identity service
where this role can create the users, roles, etc.

# Role variables
All variables of this role are defined in `defaults/main.yml`

## Mandatory variables
* `nova_database_password`

## Handlers

# Dependencies
This role needs the OpenStack-common (os-common) role.

# Example playbook

# License
Apache-2.0

# Author Information
This role was created by [Marcos Simental](marcos.simental.magana@intel.com).

Original `tasks/nova_virt_detect.yml` file taken from [openstack-ansible](https://github.com/openstack/openstack-ansible/blob/liberty/playbooks/roles/os_nova/tasks/nova_virt_detect.yml)
