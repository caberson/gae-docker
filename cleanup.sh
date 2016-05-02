#!/bin/sh -x

. /build/config.sh

# AUTO_ADDED_PACKAGES=`apt-mark showauto`
# apt-get remove --purge -y $AUTO_ADDED_PACKAGES

rm -rf /tmp/* /var/tmp/*

apt-get clean
rm -rf /var/lib/apt/lists/*