#!/usr/bin/env bash

set -ex

sudo ln -s -f /dev/null /etc/udev/rules.d/70-persistent-net.rules

sudo dd if=/dev/zero of=/EMPTY bs=1M || echo "dd exit code $? is suppressed";
sudo rm -f /EMPTY;

sync;
