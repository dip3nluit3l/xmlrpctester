#!/bin/bash

echo "Enter The Url:"
read url
wget $url

isInFile=$(cat index.html | grep -c "xmlrpc.php")


if [ $isInFile -eq 0 ]; then
	echo "This site is not vulnerable to xmlrpc"
else
   echo "This site is vulnerable to xmlrpc"
fi
rm -rf index.html
