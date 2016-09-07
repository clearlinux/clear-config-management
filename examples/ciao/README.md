# Ansible roles for CIAO
This is an example of a playbook to deploy CIAO using ansible.

---
## Prework

### Access
Ansible requires that the user running the playbook has passwordless ssh access to the managed nodes, sudo privileges and python installed on each node.

### Requirements

#### CIAO nodes
CIAO can be installed in ClearLinux, Fedora 24 and Ubuntu 16.04 and its dependencies will be installed automatically.

#### Deployment machine
The deployment machine can be any Linux OS as long as it has the following requirements installed.

NOTE: In ClearLinux, all the requirements can be installed with the following bundles:

    swupd bundle-add sysadmin-hostmgmt go-basic kvm-host python-openstack-clients os-core-dev

###### Install Ansible
The required version of ansible is 2.1 or later. Install ansible in your distribution as described in [Installing ansible](http://docs.ansible.com/ansible/intro_installation.html)

###### Install ansible roles dependencies
This playbook make use of roles that requires extra dependencies. These dependencies are usually outdated in the OS package manager and is recomended to
install them from pip.

    pip install netaddr docker-py python-keystoneclient

###### Install Go
To build ciao from sources the deployment machine requires golang to be installed. Install the latest release of go for your distribution as described in [Installing Go](https://golang.org/doc/install)

###### Install qemu
qemu is required to create the cnci image. Use your distribution package manager
to install the `qemu` package

---

## Configuration

### ansible-galaxy
Install the required roles from ansible-galaxy

    ansible-galaxy install -r requirements.yml

### Edit the [hosts](hosts) file according to your cluster setup
```ini
[controllers]
controller.example.com

[networks]
network.example.com

[computes]
compute1.example.com
compute2.example.com
compute3.example.com
```

Optionally edit [group_vars/all](group_vars/all) file to change default passwords and other settings

---

### Run the playbook

    ansible-playbook -i hosts ciao.yml

Note: In order to deploy ciao from the latest development branch set `ciao_dev = True` in [group_vars/all](group_vars/all) file or pass the command line argument `--extra-vars "ciao_dev=true"`
