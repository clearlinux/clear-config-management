OpenStack Multi Node
====================

In this example you will find the required configurations to run a Multi Node install for openstack using Clear-Playbooks.

Important Notes:
----------------
- In the hosts file, replace the IP Address with the manchine you want to use. If you want to make All in One just set the same IP Address in all groups.
- Replace any default value in group_vars/all if required, otherwise it will take default values for passwords and any other important parameter.

Requirements:
-------------
**Install the `sysadmin-hostmgmt` bundle** in your master (from where you are running ansible) node:
```
    # swupd bundle-add sysadmin-hostmgmt
```

Use:
----
```
    # ansible-playbook -i hosts openstack.yml
```
If you want to run it as different user use -u/--user=REMOTE_USER and the -k/--ask-pass to prompt for the password.

Assumptions:
------------ 
- Needs to be run with a priviliged user as root.
- If you run ansible without specifying the user and the password, you need to have deployed the corresponding keys for the user running it.
