#!/usr/bin/env bash

{ 
  echo "USER_ID=$(id -u "${USER}")"
  echo "GROUP_ID=$(id -g "${USER}")"
  echo "HOME_SIM=/home/sim"
  echo "CURRENT_DIRECTORY=$(pwd)"
} > .env

function ipfs() {
  docker exec vx_ipfs_host ipfs "$@"
}

export ANSIBLE_ROLES_PATH=roles