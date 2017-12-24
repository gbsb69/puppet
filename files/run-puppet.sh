#!/bin/bash
cd /etc/puppetlabs/code/environments/production && sudo git pull
sudo /opt/puppetlabs/bin/puppet apply manifests/
