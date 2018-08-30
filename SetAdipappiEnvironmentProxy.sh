

export  PapiProxyEnvFile=/etc/profile.d/adipappi_proxy.sh
export PROXY_FQDN=pfwprxlnx1.adipappi.int
export PROXY_PORT=8989
export PRX_SRV_URL="http://${PROXY_FQDN}:${PROXY_PORT}"
printf "#Configuration of Adipappi NDC PROXY SERVER\n" >> $PapiProxyEnvFile
chmod a+x $PapiProxyEnvFile
printf  "export http_proxy=$PRX_SRV_URL\n" >> $PapiProxyEnvFile
printf  "export https_proxy=$PRX_SRV_URL\n" >> $PapiProxyEnvFile
printf  "export ftp_proxy=$PRX_SRV_URL\n" >> $PapiProxyEnvFile
printf  "export no_proxy=localhost,127.0.0.1,172.16.224.0/20,172.16.240.0/21,172.16.3.0/24\n" >> $PapiProxyEnvFile
