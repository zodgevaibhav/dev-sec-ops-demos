#!/bin/sh

# Connect to AWS/GCP Secret. AWS/GCP creds can be hard coded here. Or Credential file can be used
# Get the secrets from cloud
# Set write in to local container file
echo "PASS=Test@123" > /etc/creds
echo "USR=saas" >>/etc/creds
