#!/bin/bash

#fill in your credentials
USERNAME="voxceleb000"
PASS="xxxxxxx"

wget -c --user ${USERNAME} --password ${PASS}  -i download_files.list
