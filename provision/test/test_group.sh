#!/bin/bash
#set -e
#set -x

# $(does_group_exist app)

does_group_exist(){
  local result=$(grep -ic "^$1:" /etc/group)
  # echo "$result"
  assertEquals $result 1
}

. shunit2-2.0.3/src/shell/shunit2
# com.apple.access_ftp
#if does_group_exist app;
#then
#  echo "The group exists"
#else
#  echo "The group does not exist"
#fi
