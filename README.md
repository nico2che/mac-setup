### Mac Setup

This is an [Ansible](https://www.ansible.com/) playbook to quickly setup a new Mac.

To setup run the following command :

```
curl -s https://raw.githubusercontent.com/nico2che/mac-setup/master/install.sh | /bin/bash
```

## Roles

These roles are dependants, so they need to be runned in this order only.

When all roles was runned, you can start one independantly with a tag option.

`ansible-playbook playbook.yml --tags=setup,apps,desktop -e 'perso=yes pro=yes'`

- **setup** install homebrew & global npm packages
- **apps** install mac applications and their preferences
- **desktop** install global preferences

`perso` and `pro` extra vars are available on playbook command to install these
environments type

## Coming

- add dotfiles perso repo
- aerial save screener
- google drive auto connexion, and sync some files
