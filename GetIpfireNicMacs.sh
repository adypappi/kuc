#!/usr/bin/env bash
# Get the list of ipfire's nic interfaces and associated mac addresses
# Display result in form of nicName=nicMacAddress 
#
res=""
declare -a nicData=($(ip addr | grep -Po "((red|green|blue|orange)[0-9]+:)|(link/ether\s+([a-zA-Z0-9]{2}:){5}[a-zA-Z0-9]{2})"))
for (( i=0;  i<${#nicData[*]}; i++ )) do 
if [[ $(echo ${nicData[$i]} | grep -P 'orange|blue|red|green') != "" ]]
then 
# Since the ip addr pu : on the end of nic name remove it with bash built in char deletetion '::' operator
res=$res"${nicData[$i]::-1}=${nicData[$((i+2))]}\n"
fi done
printf "$res"
