 #!/usr/bin/env/bash 
 # When running this script on a server all ethernet' nic name and mac address are  returned as nicname=>macaddress
 # depends on kuc's scripts : {GetNetworkInterfaceNames.sh, GetNetworkInterfaceMacAddresses.sh}
 # this script most of time needs sudoes or root permission. 
 declare -a nicNames=($(./GetNetworkInterfaceNames.sh))
 declare -a nicMacs=($(./GetNetworkInterfaceMacAddresses.sh))
 for (( i=0; i<${#nicNames[@]};  i++ )); do echo "${nicNames[i]}=>${nicMacs[i]}"; done

 
