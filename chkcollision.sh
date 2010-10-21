#!/bin/sh

sed -re '/^[[:space:]]*#/d' -e '/^$/d' -e 's/^([^:]*>)[[:space:]]*:.*/\1/' \
	xcompose | sort | php -B '$lastline = "�";' -R 'if (strpos($argn, $lastline) === 0) { echo $lastline; echo $argn; }'
#chkprefix sequences

