#! /bin/bash

echo "Welcome to rec0vering 1.0 (remade), a unc0ver removal tool for iOS 11 to 11.4b3.. rec0vering will remove all tweak and jailbreak files. Rec0vering Tool made by Chr1sPwn3d (@Chr1sPwn3d & Chr1sPwn3d#9333), not associated with unc0ver or the unc0ver team, including Pwn20wnd, sbingner, Samg, and others. Need help? Contact me on twitter (@Chr1sPwn3d) or on Discord (Chr1sPwn3d#9333). Ready? (Y/N)"
read starter
if [[ $starter == Y || $starter == Yes || $starter == y || $starter == yes ]]
then
echo "Starting.. Downloading Bootstrap (1/X)"
curl -L -o unc0verstrap.tar.lzma https://github.com/pwn20wndstuff/Undecimus/raw/master/Undecimus/resources/strap.tar.lzma

if [[ -e /var/mobile/unc0verstrap.tar.lzma ]]
then
mkdir /var/mobile/unc0verstrap
mv /var/mobile/unc0verstrap.tar.lzma /var/mobile/unc0verstrap

echo "Waiting for Bootstrap to be moved..."
sleep 5
if [[ -e /var/mobile/unc0verstrap/unc0verstrap.tar.lzma ]]
then
echo "Extracting Bootstrap..."
cd /var/mobile/unc0verstrap
tar -xvf unc0verstrap.tar.lzma
rm unc0verstrap.tar.lzma
else
echo "Error! : Bootstrap couldn't be moved."
exit
fi

else
echo "Error! : Couldn't download or find the bootstrap."
exit
fi
echo "Scanning Filesystem for JB files (2/X)"
fi
