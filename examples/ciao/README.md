# Ansible roles for CIAO
This is sample playbook to deploy CIAO using ansible.

## Prework

### Access
Ansible requires that the user running the playbook has passwordless ssh access to the managed nodes and sudo privileged.

### Requirements
The deployment machine require certain python modules and packages to be installed as they are requirements for ansible modules used in this playbook.

#### Install Ansible
The required version of ansible is 2.1 or later. Install ansible in your distribution as described in [Installing ansible](http://docs.ansible.com/ansible/intro_installation.html)

##### Install ansible roles dependencies
This playbook make use of roles that requires extra dependencies. These dependencies are usually outdated in the OS package manager and is recomended to
install them from pip.

    pip install netaddr docker-py python-keystoneclient

#### Install Go
To build ciao from sources the deployment machine requires golang to be installed. Install the latest release of go for your distribution as described in [Installing Go](https://golang.org/doc/install)

#### Install qemu
qemu is required to create the cnci image. Use your distribution package manager
to install the `qemu` package

NOTE: In ClearLinux, all the dependencies can be installed with the following bundles

    swupd bundle-add sysadmin-hostmgmt go-basic kvm-host python-openstack-clients os-core-dev

## Configuration

### ansible-galaxy
Install the required roles from ansible-galaxy

    ansible-galaxy install -r requirements.yml

### Edit the hosts file according to your cluster setup
hosts.yml
```
[controllers]
controller.example.com

[networks]
network.example.com

[computes]
compute1.example.com
compute2.example.com
compute3.example.com
```

Optionally edit `group_vars/all` file to change default passwords and other settings

### Run the playbook

    ansible-playbook -i hosts ciao.yml
