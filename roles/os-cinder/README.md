# Ansible role: OpenStack-Cinder

This role setups the OpenStack Block Storage service

# Requirements
- A previously setup of the OpenStack Identity service
where this role can create the users, roles, etc.

- A previously setup messaging server like RabbitMQ

# Role variables
All variables of this role are defined in `defaults/main.yml`

## Mandatory variables
* `cinder_devices` *This is a list of devices*

  ```
    Example:

    cinder_devices:
      - /dev/sdb
      - /dev/sdc
      - /dev/sdd
      - /dev/sdf
  ```
* `cinder_user_password`
* `cinder_database_password`

## Handlers
* `restart cinder controller`
* `restart cinder storage`

# Dependencies
This role needs the OpenStack-common (os-common) role.

# Example playbook

# License
Apache-2.0

# Author Information
This role was created by [Erick Cardona](erick.cardona.ruiz@intel.com)
