ciao-controller
=========
Ansible role to install the controller node for a CIAO cluster

This role configures the following components

* ciao scheduler
* ciao controller

Requirements
------------
None

Role Variables
--------------
* `ciao_csr_password`
* `ciao_ssh_public_key`
* `ciao_admin_email`
* `ciao_cert_organization`

Dependencies
------------
* `ciao-common`

Example Playbook
----------------

```
- hosts: ciao_controller
  roles:
    - ciao-controller
```

License
-------
Apache-2.0

Author Information
------------------
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
