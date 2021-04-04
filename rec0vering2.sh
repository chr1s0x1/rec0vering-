#! /bin/bash

echo "(Rec0vering) Welcome to rec0vering 1.0 (remade), a unc0ver removal tool for iOS 11 to 11.4b3.. rec0vering will remove all tweaks and jailbreak files. Ready? (Y/N)"
read starter
if [[ $starter == Y || $starter == Yes || $starter == y || $starter == yes ]]
then
echo "(Rec0vering) [TWEAKS] Starting.. Removing Tweaks.. (1/X)"
apt-get -y purge com.ex.substitute
apt-get -y purge science.xnu.undecimus.resources
apt-get -y purge science.xnu.injector
apt-get -y purge com.sbingner.spawn
echo "(Rec0vering) [JBFILES] Downloading Bootstrap.. (2/X)"
# We download the boostrap, since it contains the jailbreak files that will be installed
curl -L -o unc0verstrap.tar.lzma https://github.com/pwn20wndstuff/Undecimus/blob/undecimus-2.1/Undecimus/resources/strap.tar.lzma

if [[ -e /var/mobile/unc0verstrap.tar.lzma ]]
then
mkdir /var/mobile/unc0verstrap
mv /var/mobile/unc0verstrap.tar.lzma /var/mobile/unc0verstrap # Move to better place

echo "(Rec0vering) [JBFILES] Waiting for Bootstrap to be moved..."
sleep 5
if [[ -e /var/mobile/unc0verstrap/unc0verstrap.tar.lzma ]]
then
echo "(Rec0vering) [JBFILES] Extracting Bootstrap..."
cd /var/mobile/unc0verstrap
tar -xvf unc0verstrap.tar.lzma
rm unc0verstrap.tar.lzma

if [[ -e /var/mobile/unc0verstrap/unc0verstrap.tar.lzma || -e unc0verstrap.tar.lzma ]]
echo "(Rec0vering) [JBFILES] W: Boostrap zip file wasn't removed, non fatal error, continuing.."
else
echo "(Rec0vering) [JBFILES] Error! : Bootstrap couldn't be moved."
exit
fi

else
echo "(Rec0vering) [JBFILES] Error! : Couldn't download or find the bootstrap."
exit
fi
echo "(Rec0vering) [JBFILES] Scanning Filesystem for JB files (3/X)"
var fexists = 0
# The magic starts here
# What we do here is scan the filesystem for any files that have similar names
# to the jailbreaks files in the bootstrap.


if [[ fexists = 1 ]]
then
echo "(Rec0vering) [JBFILES] Notice! : Jailbreak files exists on this device"
echo "(Rec0vering) [JBFILES] Removing Jailbreak Files (4/X)"


# Remove Cydia.app
echo "(rec0vering) [CYDIA] Removing Cydia.. (5/X)"
i[[ -e /Applications/Cydia.app ]]
rm -rf /Applications/Cydia.app
if [[ ! -e /Applications/Cydia.app ]]
then
echo "(Rec0vering) [CYDIA] Cydia has been succesfully removed"
echo "(Rec0vering) All Jailbreak files and Tweaks have been removed! Please wait 30 secs before Rebooting.."
echo "(Rec0vering) You may experience apps crashing when you open them, this is completely normal, rebooting after 30 secs will fix this issue. Running uicache.."
uicache
echo "(Rec0vering) Success, Exiting.."
exit
else
echo "(Rec0vering) [CYDIA] Error! : Cydia.app could not be removed. This is not a fatal error, Jailbreak files & Tweaks have been removed, but the Cydia app will still be present on your device, just not operable. Running uicache.."
uicache
echo "(Rec0vering) Success, Exiting.."
exit
exit
else
echo "(Rec0vering) [CYDIA] Notice! : Cydia.app not found. will run uicache, Please wait 30 secs before Rebooting.."
uicache
echo "(Rec0vering) Success, Exiting.."
exit
else # Should not get this if files are present 
echo "(Rec0vering) [JBFILES] Notice! : No Jailbreak files can be found on this device. If you are sure there are some present, please report this issue to me over on Discord (Chr1s#9333) or Twitter (@Chr1s_0x1). To prevent a possible issue, Rec0vering will exit.."
exit
fi
elif [[$starter == N || $starter == No || $starter == n || $starter == no]]
echo "(Rec0vering) Exiting.."
exit
fi
