#!/bin/bash
#set -e
#set -x

# $(does_group_exist app)

does_group_exist(){
  local result=$(grep -ic "^app:" /etc/group)
  # echo "$result"
  assertFalse "This test should fail" [$result -eq 1]
}

. shunit2-2.0.3/src/shell/shunit2
# com.apple.access_ftp
#if does_group_exist app;
#then
#  echo "The group exists"
#else
#  echo "The group does not exist"
#fi
