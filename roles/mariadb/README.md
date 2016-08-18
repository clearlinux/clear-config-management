# mariadb
This role installs clearlinux/mariadb docker container

## Requirements
* docker

## Role variables

Variable  | Default Value | Description
--------  | ------------- | -----------
mysql_root_password | secret | Password for the `root` user in the database
mysql_data | /var/lib/mysql/ | Path for mysql data

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
mysql_data: /var/lib/mysql
```

## License
Apache-2.0

## Author Information
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
