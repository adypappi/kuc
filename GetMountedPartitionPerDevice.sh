#!/usr/bin/env bash
#
# Display per device the mounted partitions
# User must have sudo or root on df command. 
# Use: df command
df |  awk '/^\/dev\// {printf "%s\t:%s\n",$6,$1}'
