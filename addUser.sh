#!/bin/bash
user=$1

if whoami | grep -q $user;
then
  echo "I am $user already"
else
  echo "I am not $user"
  userExists=`cat /etc/group | grep $user | wc | awk '{print $1}'`
  if [ "0" -eq  "$userExists" ]; then
    echo "user $user doesn't exist, creating."
    useradd -ms /bin/bash $user
    usermod -aG sudo $user
    if [ -f /etc/sudoers ]; then
      echo "$user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
    else
      echo "/etc/sudoers doesn't exist."
    fi;
  fi;
fi;
