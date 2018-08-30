
#!/usr/bin/env bash
# Read for given username the subgid/subgid and their corresponding count according to /etc/subuid and /etc/subgid files.
# Params: username
# Output is: 
#     subuid:subuidcount
#     subgid:subgidcount
# If the username exist into /etc/sub|ug]id. 
# If the username does not exist and empty string if returned
set -o errexit
set -o pipefail
set -o nounset
if [[ $# -ne 1 ]]
then
  printf "The username is required as argument to run this script.\n\tUsage:$0 timsli\n"
  exit -1
fi
username=$1; grep $username /etc/sub*id | cut -d":" -f3-4
