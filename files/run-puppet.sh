#!/bin/bash
cd /etc/puppetlabs/code/environments/production/puppet && sudo git pull
sudo /opt/puppetlabs/bin/puppet apply manifests/
