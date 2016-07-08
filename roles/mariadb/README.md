# mariadb
This role installs the mariadb service

It also secures the installation by setting
the `root` user password and removing anonymous access.

## Requirements
None

## Role variables
Note: Mandatory variables are shown in **bold**

Variable  | Default Value | Description
--------  | ------------- | -----------
swupd_args |  | Optional arguments for `swupd` program
**database_root_password** | | Password for the `root` user in the database

## Dependencies
None

## Example playbook
file *dbservers.yml*
```
- hosts: dbservers
  roles:
    - mariadb
```

file *group_vars/all*
```
database_root_password: secret
```

## License
Apache-2.0

## Author Information
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
