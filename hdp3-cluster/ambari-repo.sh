#!/usr/bin/env bash

AMBARI_VERSION=2.7.4.0-118
cat > /etc/yum.repos.d/ambari.repo <<EOL
[Updates-ambari-${AMBARI_VERSION}]
name=ambari-${AMBARI_VERSION} - Updates
baseurl=http://repo-hdp3-cluster.local/ambari/centos7/${AMBARI_VERSION}/
enabled=1
priority=1
gpgcheck=0
EOL