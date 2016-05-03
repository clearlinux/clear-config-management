ciao-network
============
Ansible role to install the network node for a CIAO cluster

Requirements
------------
None

Role Variables
--------------
* `cnci_image_url`

Dependencies
------------
* `ciao-common`

Example Playbook
----------------

```
- hosts: ciao_network
  roles:
    - ciao-network
```

License
-------
Apache-2.0

Author Information
------------------
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
