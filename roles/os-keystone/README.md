# os-keystone
This role setups the OpenStack Identity service.

## Requirements
- A previously setup database server.
  You can setup one with [mariadb](https://github.com/clearlinux/clear-config-management/tree/master/roles/mariadb) role

## Role variables
The available variables for this roles are the variables from [os-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-common) plus the following

Note: Mandatory variables are shown in **bold**

Variable | Default Value | Description
-------- | ------------- | -----------
**keystone_database_password** | | Password for the `keystone` user in the database
**keystone_root_domain** | example.com | Domain to be used on Keystone certificates
**keystone_p12password** | | Password for Keystone certificates

#### The following variables can be used to specify custom services, projects, users and roles

<table>
<tr>
<td><b>Variable</b></td>
<td><b>Example</b></td>
<td><b>Description</b></td>
</tr>

<tr>
  <td>keystone_services</td>
  <td><pre><code>
    keystone_services:
      - service_name: nova
        service_type: compute
        description: OpenStack Compute Service
  </code></pre></td>
  <td>A list of services to be created</td>
</tr>

<tr>
  <td>keystone_projects</td>
  <td><pre><code>
    keystone_projects:
      - project_name: demo
        description: Demo Project
  </code></pre></td>
  <td>A list of projects to be created</td>
</tr>

<tr>
  <td>keystone_users</td>
  <td><pre><code>
    keystone_users:
      - user_name: demo
        password: secret
        project_name: demo
        email: demo@example.com
  </code></pre></td>
  <td>A list of users to be created</td>
</tr>

<tr>
  <td>keystone_roles</td>
  <td><pre><code>
    keystone_roles:
      - demo
      - admin
  </code></pre></td>
  <td>A list of roles to be created</td>
</tr>

<tr>
  <td>keystone_user_roles</td>
  <td><pre><code>
    keystone_user_roles:
      - user_name: demo
        project_name: demo
        role_name: demo
  </code></pre></td>
  <td>A list of user, role mappings</td>
</tr>

</table>

## Dependencies
- [os-common](https://github.com/clearlinux/clear-config-management/tree/master/roles/os-common)
- [OpenSSL](https://github.com/clearlinux/clear-config-management/tree/master/roles/OpenSSL)

## Example playbook
file *keystone.yml*
```
- hosts: openstack_identity
  roles:
    - os-keystone
```

file *group_vars/all*
```
database_root_password: secret
keystone_fqdn: identity.example.com
keystone_admin_password: secret

keystone_database_password: secret
keystone_root_domain: example.com
keystone_p12password: secret

keystone_projects:
  - project_name: demo

keystone_users:
  - user_name: demo
    password: secret
    project_name: demo

keystone_roles:
  - demo

keystone_user_roles:
  - user_name: demo
    project_name: demo
    role_name: demo
```

## License
Apache-2.0

## Author Information
This role was created by [Leoswaldo Macias](leoswaldo.macias@intel.com) and [Obed Munoz](obed.n.munoz@intel.com)
