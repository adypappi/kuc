#!/usr/bin/env bash
#Get the mac address (hardware address) of all network interface on linux host by using `ip addr`  command
ip addr | awk  '/link\/([a-zA-Z0-9_])/ {print $2}'

