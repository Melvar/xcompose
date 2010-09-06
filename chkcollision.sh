#!/bin/sh

sed -re '/^[[:space:]]*#/d' -e '/^$/d' -e 's/^([^:]*>)[[:space:]]*:.*/\1/' xcompose | sort >sequences
chkprefix sequences

