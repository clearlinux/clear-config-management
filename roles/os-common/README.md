# os-common
This role is common for the OpenStack roles.

## Requirements
None

## Role variables
The following variables are available for all OpenStack roles

Note: Mandatory variables are shown in **bold**

Variable | Default Value | Description
-------- | ------------- | -----------
swupd_args | | Optional arguments for `swupd` program
log_debug | False | Set to True to enable debug level log for all services
**database_root_password** | | Password for the `root` user in the database
keystone_fqdn | `{{ ansible_fqdn }}` | Fully Qualified Domain Name for Keystone node
keystone_admin_port | 35357 | Port for Keystone admin endpoint
keystone_public_port | 5000 | Port for Keystone public endpoint
**keystone_admin_password** | | Password for the `admin` user in OpenStack

## Dependencies
None

## Example playbook
None

## License
Apache-2.0

## Author Information
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)

`library/keystone.py` taken from [openstack ansible](https://github.com/openstack/openstack-ansible/blob/liberty/playbooks/library/keystone).

`library/glance.py` taken from [openstack ansible](https://github.com/openstack/openstack-ansible/blob/liberty/playbooks/library/glance).
