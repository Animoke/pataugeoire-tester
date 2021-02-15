#!/bin/sh
ifconfig -a | awk '/ether/' | sed -e "s/ether//" | tr -d " "
