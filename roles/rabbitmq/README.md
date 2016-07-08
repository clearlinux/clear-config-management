# rabbitmq
This role installs rabbitmq service

## Requirements
None

## Role variables
Note: Mandatory variables are shown in **bold**

<table>
<tr>
  <td><b>Variable</b></td>
  <td><b>Default Value</b></td>
  <td><b>Description<b></td>
</tr>
<tr>
  <td>swupd_args</td>
  <td></td>
  <td>Optional arguments for swupd program</td>
</tr>
<tr>
  <td><b>rabbitmq_users</b></td>
  <td></td>
  <td>
    A list of users to create <br>
    For example:
    <pre>
      rabbitmq_users:
        - user: admin
          password: admin
          configure_priv: .*
          read_priv: .*
          write_priv: .*
    </pre>
  </td>
</tr>
<tr>
  <td>rabbitmq_delete_users</td>
  <td>- guest</td>
  <td>A list of users to remove <br>
      For example:
      <pre>
        rabbitmq_delete_users:
          - guest
      </pre>
  </td>
</tr>
</table>

## Dependencies
None

## Example playbook
file *mqservers.yml*
```
- hosts: messaging_servers
  roles:
    - rabbitmq
```

file *group_vars/all*
```
rabbitmq_users:
  - user: admin
    password: secret
```

## License
Apache-2.0

## Author Information
This role was created by [Leoswaldo Macias](leoswaldo.macias@intel.com)
