#!/usr/bin/env bash

yum update
yum install -y ambari-agent

sed -i "s/^hostname=.*/hostname=management-hdp3-cluster.local/g" /etc/ambari-agent/conf/ambari-agent.ini

systemctl restart ambari-agent