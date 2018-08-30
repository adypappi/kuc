#!/usr/bin/env bash
#Get the name of all network interface on linux host by using `ip addr`  command
 ip addr | grep -Po "(?<=^\d:\s)(\w+)" 
