#! /bin/sh

HOST=192.168.1.17
USER=pi
PASS=aavpi

ftp -n -i $HOST <<EOF_
quote USER $USER
quote PASS $PASS

mget *.jpg
quit
EOF_
