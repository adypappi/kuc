#!/usr/bin/env bash
#
# Display the path-id of the pci devices  provided by linux specicial fs /dev/disk/by-path/
# This script take no argument
# Return the pci devide corresponding to perl compatible regex  '(pci[\w\-\.:]+part([1-9]|([1-9][0-9])))'
# Use: 'ls' 'grep' commands
ls -l /dev/disk/by-path/ | grep -Po "(pci[\w\-\.:]+part([1-9]|([1-9][0-9])))"
