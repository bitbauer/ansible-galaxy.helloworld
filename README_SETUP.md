## Prerequisites

### Local development

This is developed to support development under Mac OS X, Windows and Linux (Ubuntu, CentOS).\
For local testing you will need to install:
* [VirtualBox](#install-virtualbox) 5.0 - 5.2
* [Vagrant](#install-vagrant) 1.8.1 - 2.1.x
* [Vagrant Plugins](#install-vagrant-plugins) vagrant-hostmanager, vagrant-vbguest, vagrant-cachier, vagrant-serverspec

#### Install VirtualBox

To install required version of VirtualBox, please use official download page:
https://www.virtualbox.org/wiki/Download_Old_Builds_5_2

If you want to use your preferred package tool for Windows, OSX or Linux make sure to install required version.

#### Install Vagrant

To install required version of Vagrant, please use official download page:
https://releases.hashicorp.com/vagrant/2.1.5/

If you want to use your preferred package tool, make sure to install required version.

#### Install Vagrant Plugins

After you completed Vagrant installation, you can install required plugins with following command:
```
vagrant plugin install vagrant-hostmanager vagrant-vbguest vagrant-cachier vagrant-serverspec
```

**Note:** You do **not** need to install Ansible locally. It will be executed only in Vagrant test VM.

#### Local development Variables
You will find important variables, that can be overridden for testing in file `./tests/configuration.yml`.\
Variables that needs to be defined individually are:
* `role:` Name of the role (will be used to generate VM hostname)
* `project:` Name of the project (will be used to generate VM hostname)
* `domain:` Name of host domain
