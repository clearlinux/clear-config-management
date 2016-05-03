ciao-compute
=========
Ansible role to install the compute node for a CIAO cluster

Requirements
------------
None

Role Variables
--------------
* `fedora_cloud_image_url`
* `clear_cloud_image_url`

Dependencies
------------
* `ciao-controller`

Example Playbook
----------------

```
- hosts: ciao_compute
  roles:
    - ciao-compute
```

License
-------
Apache-2.0

Author Information
------------------
This role was created by [Alberto Murillo](alberto.murillo.silva@intel.com)
