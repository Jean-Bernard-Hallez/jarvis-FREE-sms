#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software
[[ -z $(which curl) ]] && sudo apt-get install curl