#!/bin/bash
cd /etc/puppetlabs/code/environments/production/puppet && sodu git pull
sudo /opt/puppetlabs/bin/puppet apply manifests/
