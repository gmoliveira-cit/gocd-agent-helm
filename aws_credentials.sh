#!/bin/bash

sudo -u go mkdir -p /home/go/.aws
sudo -u go cat << EOF > /home/go/.aws/config
[default]
output = json
region = ${AWS_REGION}
EOF

sudo -u go cat << EOF > /home/go/.aws/credentials
[default]
aws_access_key_id = ${AWS_ACCESS_KEY}
aws_secret_access_key = ${AWS_SECRET}
EOF
