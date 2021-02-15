#!/bin/sh
cat /etc/passwd | grep -v '^#' | sed '1!n;d' | grep -io '[a-z_]*[:]\{1\}[*]\{1\}' | sed 's/\:\*//' | rev | sort -r | sed -n ''${FT_LINE1}','${FT_LINE2}'p'
