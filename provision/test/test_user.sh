#!/bin/bash

if id -u app >/dev/null 2>&1; then
  echo "User already exists"
  username=""
fi
