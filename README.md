Ansible Galaxy Role for helloworld project
=========

helloworld role demonstrates Ansible Galaxy project structure and uses VirtualBox, Vagrant and ServerSpec for development and testing.
**Current status:** Released

## How it works

This Ansible Role Repository can be handled with Ansible Galaxy.
The role is not expecting any other role, that is installed upfront.
It uses [Vagrant](#vagrant) and [ServerSpec](#serverspec) for testing.

### How to start

Please make sure you have setup any [prerequisites](README_SETUP.md)!

### Vagrant

If you have installed all [prerequisites](README_SETUP.md), then just type `vagrant status` to get an overview about available VMs.

To run/kill a VM `vagrant up [<name>]` and `vagrant destroy [<name>]` commands are your friends.

`vagrant provision [<name>]` can be called for running Ansible role inside VM environment and apply ServerSpec tests afterwards. Provision will be started implicit by Vagrant, when it create a new VM by up-command.

`vagrant provision [<name>] --provision-with test` will rerun [ServerSpec](#serverspec) tests without starting Ansible role again.\
Feel free to add more provisioning scenarios at the bottom of Vagrantfile file.

Additional scenarios added here, are:\
`vagrant provision --provision-with uninstall` will remove provisioned installation by calling ansible-playbook with -e state=absent.

For more details about vagrant commands visit: https://www.vagrantup.com/docs/cli/

### ServerSpec

This was developed on top of Ruby rspec framework to simplify acceptance testing at system configuration.
We use ServerSpec, even development has stopped, because it runs inside Vagrant and you don't need to setup anything local or in your VM.

For reference on tests visit: https://serverspec.org/resource_types.html

## Dependencies

None

## Role Variables

Variables that can be defined individually are:
* `message:` Message that will be printed for demonstration

## Example Playbook

//TODO Provide example

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```
- hosts: servers
  roles:
    - role: "helloworld"
      vars:
        message: "Hello world!"
```
