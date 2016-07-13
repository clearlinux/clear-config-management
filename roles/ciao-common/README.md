# ciao-common
This role is a requirement for other ciao roles

Tasks included in this role are:
* install ciao software

## Requirements
None

## Role Variables
The following variables are available for all ciao roles

Variable  | Default Value | Description
--------  | ------------- | -----------
swupd_args |  | Optional arguments for `swupd` program
ciao_dev | False | Set to True to install ciao from the master branch, Otherwise CIAO will be installed from the operating system packages.
ciao_controller_fqdn | `{{ ansible_fqdn }}` | FQDN for CIAO controller node

## Dependencies
None

## Example Playbook
None

## License
Apache-2.0

## Author Information
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
