#!/bin/bash
set -e
source provision/scripts/group_exists
set -x

# $(does_group_exist app)

does_group_exist(){
  local result=group_exists "app"
  # echo "$result"
  assertFalse "This test should fail" result
}

. shunit2-2.0.3/src/shell/shunit2
# com.apple.access_ftp
#if does_group_exist app;
#then
#  echo "The group exists"
#else
#  echo "The group does not exist"
#fi
