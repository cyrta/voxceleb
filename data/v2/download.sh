#!/bin/bash

#fill in your credentials
USERNAME="voxceleb000"
PASS="xxxxxxx"

wget --user ${USERNAME} --password ${PASS}  -i download_files.list
