# Ansible role: OpenStack-Swift

This role setups the OpenStack Object Storage service

# Requirements
You need a previously setup of the OpenStack Identity service
where this role can create the users, roles, etc.
You need at least two block devices to install swift(known as account device and container device).

# Role variables
All variables of this role are defined in `defaults/main.yml

## Mandatory variables
* swift_user_password
* swift_database_password
* swift_storage_device_path
* swift_replica_count
* swift_hash_path_suffix
* swift_hash_path_prefix
* swift_public_interface_name

## Handlers
* restart swift controller node services
* restart swift storage node services
* restart rsyncd

# Dependencies
This role needs the OpenStack-common (os-common) role.

# Configurate scenarios(Mandatory, just one scenario is allowed):
* **Identical storage nodes and devices**
  - Set the swift_storage_devices variable in group_vars/all as follows:
  ```
  swift_storage_devices:
    - sdb
    - sdc
    - sdd
    - sdf
  ```
* **Different storage nodes**
  - Create the host_vars directory inside clear-config-management
  - For each storage node create a new file inside host_vars/
    - e.g. host_vars/swift_storage_node1
  - In each file, add the storage devices of each node in their own file
    - e.g. host_vars/swift_storage_node1
    ```
    ---
    devices:
      - sdb
      - sdc
      - sdd
    ```

# License
Apache-2.0

# Author Information
This role was created by [Erick Oziel Cardona Ruiz](erick.cardona.ruiz@intel.com)
