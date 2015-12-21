#!/bin/bash
createTunnel() {
  /usr/bin/ssh -i "/root/raspi.pem" -N -R 22223:localhost:22 ubuntu@52.77.229.57
  if [[ $? -eq 0 ]]; then
    echo Tunnel to jumpbox created successfully
  else
    echo An error occurred creating a tunnel to jumpbox. RC was $?
  fi
}
/bin/pidof ssh
if [[ $? -ne 0 ]]; then
  echo Creating new tunnel connection
  createTunnel
fi
