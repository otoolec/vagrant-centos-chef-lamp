Vagrant Centos LAMP Stack Provisioned by Chef
=============================================

A simple skeleton for setting up a LAMP stack for a PHP project.

Installation
------------

1. Install Vagrant 1.2.x from the [Vagrant downloads page](http://downloads.vagrantup.com/)

2. Install VirtualBox if needed (https://www.virtualbox.org/)

3. Install the Vagrant Berkshelf plugin

        $ vagrant plugin install vagrant-berkshelf

4. Install the Vagrant HostManager plugin

        $ vagrant plugin install vagrant-hostmanager

Configuration
-------------

1. Add your project to a sub-directory

        git submodule add <repository> <path>

2. Edit the `PROJECT_NAME` value in Vagrantfile to match your `<path>`

Setup
-----

1. Run `vagrant up`

2. Connect your browser to (http://192.168.92.68)

Note: Default passwords are set to `vagrant`
