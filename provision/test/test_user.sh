#!/bin/bash
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
  local result=$(grep -ic "^app:" /etc/passwd)
  # echo "$result"
  assertFalse "This test should fail" [$result -eq 1]
}

. shunit2-2.0.3/src/shell/shunit2

# com.apple.access_ftp
#if does_user_exist root;
#then
#  echo "The user exists"
#else
#  echo "The user does not exist"
#fi
