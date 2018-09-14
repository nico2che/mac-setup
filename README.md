### Mac Setup

This is an [Ansible](https://www.ansible.com/) playbook to quickly setup a new Mac.

To setup run the following command :
```
curl -s https://raw.githubusercontent.com/nico2che/mac-setup/master/install.sh | /bin/bash
```
## Roles

These roles are dependants, so they need to be runned in this order only.

When all roles was runned, you can start one independantly with a tag option.

- **setup** install 
- **apps** install mac applications and their preferences
- **desktop** install global preferences

## Coming

- choose work 'env': install dev apps ? install personal apps ?
- aerial save screener
- google drive auto connexion, and sync some files
