#!/bin/bash

# Step 1: get each repositories in the repositories array in the YAML file repos.yaml
readarray -t arr < <(yq '.repositories[]' repos.yaml)
echo "${arr[0]}"

# Step 2: loop through the array of repos and download the README from the repository
