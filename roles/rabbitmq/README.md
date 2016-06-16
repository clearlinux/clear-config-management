# Ansible role: RabbitMQ

This role installs the message-broker-rabbitmq bundle and
starts the rabbitmq-server service

# Requirements

# Role variables
All variables of this role are defined in `defaults/main.yml`

## Mandatory variables
``rabbitmq_users``: a dictionary with users to create for rabbitmq
for example:

rabbitmq_users: [
        {
                "user": "admin",
                "password": "secret",
                "configure_priv": ".*",
                "configure_priv": ".*",
                "configure_priv": ".*"
        }
]


## Handlers
None

# Dependencies
None

# Example playbook

# License
Apache-2.0

# Author Information
This role was created by [Leoswaldo Macias](leoswaldo.macias@intel.com)
