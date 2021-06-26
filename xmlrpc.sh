#!/bin/bash
figlet -f 3d "Linux Electrons" | lolcat -d 2 -a
echo ""
echo"************************************************************"
echo"*            www.facebook.com/linuxelectrons               *"
echo"*              Youtube.com/linuxelectrons                  *"
echo"*            github.com/dip3nluit3l/linuxelectron          *"
echo"************************************************************"
echo "Enter The Url:"
read url
wget $url

figlet -f 3d "XMLRPC_TESTER" | lolcat -d 2 -a
echo ""

echo "Press any key to continue..."
read_line

isInFile=$(cat index.html | grep -c "xmlrpc.php")


if [ $isInFile -eq 0 ]; then
	echo "This site is not vulnerable to xmlrpc"
else
   echo "This site is vulnerable to xmlrpc"
fi
rm -rf index.html
