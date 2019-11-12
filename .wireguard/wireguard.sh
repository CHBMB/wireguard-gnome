#!/bin/bash

export SUDO_ASKPASS=/usr/bin/ssh-askpass

if ip a | grep -q 'wg0'; then
   sudo -A wg-quick down wg0
else
   sudo -A wg-quick up wg0
fi
