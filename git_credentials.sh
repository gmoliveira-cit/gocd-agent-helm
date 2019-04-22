#!/bin/bash

mkdir -p /home/go2
echo "${GIT_PROTOCOL}://${GIT_USERNAME}:${GIT_PASSWORD}@${GIT_REPOSITORY}" > /home/go2/.git-credentials
chown -R 1000:1000 /home/go2
git config --global credential.helper 'store --file=/home/go2/.git-credentials'

