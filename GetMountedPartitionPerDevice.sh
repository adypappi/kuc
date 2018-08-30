#!/usr/bin/env bash
#
# Display per device the mounted partitions
# Use: 'df' and 'awk' commands 
df |  awk '/^\/dev\// {printf "%s\t:%s\n",$6,$1}'
