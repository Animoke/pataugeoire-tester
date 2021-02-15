#!/bin/sh
find . -type f -name "*.sh" | sed 's/\.sh//g' | tr -d './' | sort -d
