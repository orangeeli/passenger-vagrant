#!/bin/bash
#set -e
#set -x

# $(does_group_exist app)

does_group_exist(){
  local result=$(grep -ic "^$1:" /etc/group)
  # echo "$result"
  [ $result -eq 1 ]
}
# com.apple.access_ftp
if does_group_exist;
then
  echo "The group exists"
else
  echo "The group does not exist"
fi
