#! /bin/bash

echo "(Rec0vering) Welcome to rec0vering 1.0 (remade), a unc0ver removal tool for iOS 11 to 11.4b3.. rec0vering will remove all tweak and jailbreak files. rec0vering is not associated with unc0ver or the unc0ver team, including Pwn20wnd, sbingner, Samg, and others. Need help? Contact me on twitter (@Chr1s0x1) or on Discord (Chr1s0x1#9333). Ready? (Y/N)"
read starter
if [[ $starter == Y || $starter == Yes || $starter == y || $starter == yes ]]
then
echo "(Rec0vering) Starting.. Downloading Bootstrap (1/X)"
# We download the boostrap, since it contains the jailbreak files that will be installed
curl -L -o unc0verstrap.tar.lzma https://github.com/pwn20wndstuff/Undecimus/blob/undecimus-2.1/Undecimus/resources/strap.tar.lzma

if [[ -e /var/mobile/unc0verstrap.tar.lzma ]]
then
mkdir /var/mobile/unc0verstrap
mv /var/mobile/unc0verstrap.tar.lzma /var/mobile/unc0verstrap # Move to better place

echo "(Rec0vering) Waiting for Bootstrap to be moved..."
sleep 5
if [[ -e /var/mobile/unc0verstrap/unc0verstrap.tar.lzma ]]
then
echo "(Rec0vering) Extracting Bootstrap..."
cd /var/mobile/unc0verstrap
tar -xvf unc0verstrap.tar.lzma
rm unc0verstrap.tar.lzma

if [[ -e /var/mobile/unc0verstrap/unc0verstrap.tar.lzma || -e unc0verstrap.tar.lzma ]]
echo "(Rec0vering) W: Boostrap zip file wasn't removed, non fatal error, continuing.."
else
echo "(Rec0vering) Error! : Bootstrap couldn't be moved."
exit
fi

else
echo "(Rec0vering) Error! : Couldn't download or find the bootstrap."
exit
fi
echo "(Rec0vering) Scanning Filesystem for JB files (2/X)"
var fexists = 0
# The magic starts here
# What we do here is scan the filesystem for any files that have similar names to the jailbreaks files in the bootstrap.
if [[ fexists = 1 ]]
then
echo "(Rec0vering) Notice! : Jailbreak files exists on this device"
echo "(Rec0vering) Removing Jailbreak Files (3/X)"
else
echo "(Rec0vering) Notice! : No Jailbreak files can be found on this device. If you are sure there are some present, please report this issue to me over on Discord (Chr1s0x1#9333) or Twitter (@Chr1s0x1). To prevent a possible issue, Rec0vering will exit.."
exit
fi
elif [[$starter == N || $starter == No || $starter == n || $starter == no]]
exit
fi
