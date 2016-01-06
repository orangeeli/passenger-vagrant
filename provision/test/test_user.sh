#!/bin/bash
set -e
source provision/scripts/user_exists
set -x
# if id -u app >/dev/null 2>&1; then
#  echo "User already exists"
#  username=""
# fi

# if [ getent passwd root >/dev/null 2>&1 ]; then
#  echo "User already exists"
# else
#  echo "User does not exist"
# fi

does_user_exist(){
  local result=user_exists "app"
  # echo "$result"
  assertFalse "This test should fail" $result
}

. shunit2-2.0.3/src/shell/shunit2

# com.apple.access_ftp
#if does_user_exist root;
#then
#  echo "The user exists"
#else
#  echo "The user does not exist"
#fi
