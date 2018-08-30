
#!/usr/bin/env bash
# In adypappi ndc architecture each datacenter has a proxy fw umt server. 
# This script generate the other script /etc/profile.d/adipappi_proxy.sh on each server to allow internet access. 
# Adapt the content and 
export  PapiProxyEnvFile=/etc/profile.d/adipappi_proxy.sh
export PROXY_FQDN=pfwprxlnx1.adipappi.int
export PROXY_PORT=8989
export PRX_SRV_URL="http://${PROXY_FQDN}:${PROXY_PORT}"
export NDC_INTERNAL_DOMAINE_NAME=adipappi.int
printf "#Configuration of Adipappi NDC PROXY SERVER\n" >> $PapiProxyEnvFile
chmod a+x $PapiProxyEnvFile
printf  "export http_proxy=$PRX_SRV_URL\n" >> $PapiProxyEnvFile
printf  "export https_proxy=$PRX_SRV_URL\n" >> $PapiProxyEnvFile
printf  "export ftp_proxy=$PRX_SRV_URL\n" >> $PapiProxyEnvFile
printf  "export no_proxy=localhost,127.0.0.1,.${NDC_INTERNAL_DOMAINE_NAME}\n" >> $PapiProxyEnvFile
