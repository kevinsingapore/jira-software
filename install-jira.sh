#!/usr/bin/bash

docker run -itd \
           --name jira \
           -p 8080:8080 \
           -v /etc/timezone:/etc/timezone:ro \
           -v /etc/localtime:/etc/localtime:ro \
           -v /mnt/jira/var/atlassian/application-data/jira:/var/atlassian/application-data/jira \
           -e JVM_MINIMUM_MEMORY=3072m \
           -e JVM_MAXIMUM_MEMORY=3072m \
           --restart always \
           atlassian/jira-software:8.3.1
           
