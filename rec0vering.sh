sjfdsv#!/bin/bash

echo "Welcome to rec0vering v1.1, a unc0ver removal script for iOS 11-11.4b3, This build will removes tweaks, so keep that in mind. If you have any issues please contact me on Twitter (@Chr1sPwn3d) or on the r/Jailbreak Discord. rec0vering removal tool made by Chr1sPwn3d, not associated with unc0ver, including pwn20wnd, sbingner, or any other unc0ver developers. Ready? (Y/N)"
read runner

if [[ $runner == Y || Yes || y || yes ]]
then
echo "Starting..Removing Tweaks"
apt-get -y purge com.ex.substitute
apt-get -y purge science.xnu.undecimus.resources
apt-get -y purge science.xnu.injector
apt-get -y purge com.sbingner.spawn

# searching for unc0ver & cydia files and removing them
echo "Removing unc0ver . . .(1/10)"
rm /.installed_unc0ver
rm /.cydia_no_stash
rm /.bootstrapped_electra
 rm -rf /electra

echo "Checking for left over files in (/). . ."
# Checking if the files were removed in /...
if [[ ! -e /.installed_unc0ver  && /.cydia_no_stash  && /.bootstrapped_electra && /electra ]]
then
echo "Files in / were removed succesfully..."
else
echo "Error : Line 17 (/) . . . Files were detected and wasn't removed."
exit
fi

echo "Removing Files in (/jb/). . .(2/10)"
# removing files in the /jb/ Directory...
 rm -rf /jb

echo "Checking for left over files in (/jb/). . ."
# Checking if the files were removed in /jb/...
if [[ ! -e /jb ]]
then
echo "Files in /jb/ were removed succesfully..."
else
echo "Error : Line 31 (/jb/) . . . Files were detected and wasn't removed."
exit
fi
# removing files in the /Library Directory...
echo "Removing files in (/Library). . .(3/10)"
 rm -rf /Library/MobileSubstrate
 rm -rf /Library/PreferenceBundles
 rm -rf /Library/PreferenceLoader
 rm -rf /Library/dpkg
 rm -rf /Library/Themes
 rm -rf /Library/LaunchDaemons

echo "Checking for left over files in (/Library). . ."
# Checking if the files were removed in /Library...
if [[ ! -e /Library/MobileSubstrate && /Library/PreferenceBundles && /Library/PreferenceLoader && /Library/dpkg && /Library/Themes && /Library/LaunchDaemons ]]
then
echo "Files in /Library were removed succesfully..."
else
echo "Error : Line 49 (/Library) . . . Files were detected and wasn't removed."
exit
fi

echo "Removing files in (/etc). . .(4/10)"
 rm -rf /etc/alternatives
 rm -rf /etc/apt
 rm -rf /etc/default
 rm -rf /etc/dpkg
rm /etc/profile
 rm -rf /etc/profile.d
 rm -rf /etc/rc.d

echo "Checking for left over files in (/etc). . ."
# Checking if the files were removed in /etc...
if [[ ! -e /etc/alternatives && /etc/apt && /etc/default && /etc/dpkg && /etc/profile && /etc/profile.d && /etc/rc.d ]]
then
echo "Files in /etc were removed succesfully..."
else
echo "Error : Line 68 (/etc) . . . Files were detected and wasn't removed."
exit
fi

echo "Removing files in (/var). . .(5/10)"
 rm -rf /var/cache/apt
 rm -rf /var/mobile/Library/Cydia
 rm -rf /var/mobile/Library/Caches/com.saurik.Cydia
 rm -rf /var/mobile/Library/Logs/Cydia
 rm -rf /var/mobile/Library/Preferences
rm /var/tmp/cydia.log
rm /var/tmp/jailbreakd.pid
 rm -rf /var/lib/apt
 rm -rf /var/lib/cydia
rm /var/lib/dpkg
 rm -rf /var/lib/misc

echo "Checking for left over files in (/var). . ."
# Checking if the files were removed in /var...
if [[ ! -e /var/cache/apt && /var/mobile/Library/Cydia && /var/mobile/Library/Caches/com.saurik.Cydia && /var/mobile/Library/Logs/Cydia && /var/tmp/cydia.log && /var/tmp/jailbreakd.pid/var/lib/apt && /var/lib/cydia && /var/lib/dpkg && /var/lib/misc ]]
then
echo "Files in /var were removed succesfully..."
else
echo "Error : Line 90 (/var) . . . Files were detected and wasn't removed."
exit
fi

echo "Removing files in (/sbin). . .(6/10)"
rm /sbin/dmesg
rm /sbin/dynamic_pager
rm /sbin/halt
rm /sbin/quotacheck
rm /sbin/umount
rm /sbin/fstyp
rm /sbin/fstyp_msdos
rm /sbin/fstyp_ntfs
rm /sbin/fstyp_udf
echo "Checking for left over files in (/sbin). . ."
# Checking if files were removed in /sbin...
if [[ ! -e /sbin/dmesg && /sbin/dynamic_pager && /sbin/halt && /sbin/quotacheck && /sbin/reboot && /sbin/umount && /sbin/fstyp && /sbin/fstyp_msdos && /sbin/fstyp_ntfs && /sbin/fstyp_udf ]]
then
echo "Files in /sbin were removed succesfully..."
else
echo "Error : Line 110 (/sbin) . . . Files were detected and wasn't removed."
exit
fi

echo "Removing files in (/bin). . .(7/10)"
rm /bin/bunzip2
rm /bin/bzcat
rm /bin/bzip2
rm /bin/bzip2recover
rm /bin/cat
rm /bin/chgrp
rm /bin/chmod
rm /bin/chown
rm /bin/cp
rm /bin/date
rm /bin/dd
rm /bin/dir     # So many files lol
rm /bin/egrep
rm /bin/false
rm /bin/fgrep
rm /bin/grep
rm /bin/gunzip
rm /bin/gzexe
rm /bin/gzip
rm /bin/kill
rm /bin/ln
rm /bin/launchctl
rm /bin/ls
rm /bin/mkdir
rm /bin/mknod
rm /bin/mktemp
rm /bin/mv
rm /bin/pwd
rm /bin/readlink
rm /run-parts
rm /bin/sed
rm /bin/sh
rm /bin/sleep    # Like serously
rm /bin/stty
rm /bin/sync
rm /bin/tar
rm /bin/touch
rm /bin/true
rm /bin/uname
rm /bin/uncompress
rm /bin/vdir
rm /bin/zcat
rm /bin/zcmp
rm /bin/zdiff
rm /bin/zegrep    # Why is there so much -_-
rm /bin/zfgrep
rm /bin/zforce
rm /bin/zgrep
rm /bin/zless
rm /bin/zmore
rm /bin/znew

echo "Checking for left over files in (/bin). . ."
# Checking if files were removed in /bin...       This looks so messy lmfao...
if [[ ! -e /bin/bunzip2 && /bin/bzcat && /bin/bzip2 && /bin/bzip2recover && /bin/cat && /bin/chgrp && /bin/chmod && /bin/chown && /bin/cp && /bin/date && /bin/dd && /bin/dir && /bin/egrep && /bin/false && /bin/fgrep && /bin/grep && /bin/gunzip && /bin/gzexe && /bin/gzip && /bin/kill && /bin/ln && /bin/ls && /bin/mkdir && /bin/mknod && /bin/mktemp && /bin/mv && /bin/pwd && /bin/readlink && /run-parts && /bin/sed && /bin/sh && /bin/sleep && /bin/stty && /bin/sync && /bin/tar && /bin/touch && /bin/true && /bin/uname && /bin/uncompress && /bin/vdir && /bin/zcat && /bin/zcmp && /bin/zdiff && /bin/zegrep && /bin/zfgrep && /bin/zforce && /bin/zgrep && /bin/zless && /bin/zmore && /bin/znew ]]
then
echo "Files in /bin were removed succesfully..."
else
echo "Error : 172 (/bin) . . . Files were detected and wasn't removed."
exit
fi

echo "Removing files in (/private). . .(8/10)"
 rm -rf /private/etc/alternatives
 rm -rf /private/etc/apt
 rm -rf /private/etc/dpkg
rm /private/etc/profile
 rm -rf /private/etc/profile.d
 rm -rf /private/rc.d
rm /private/var/tmp/jailbreakd.pid
 rm -rf /private/var/mobile/Library/Cydia
rm /private/var/run/utmp
 rm -rf /private/var/log/apt
rm /private/var/log/jailbreakd-stderr.log
rm /private/var/log/jailbreakd-stdout.log
 rm -rf /private/var/lib/apt
 rm -rf /private/var/lib/cydia
 rm -rf /private/var/lib/dpkg
 rm -rf /private/var/lib/misc
 rm -rf /private/var/cache/apt

echo "Checking for left over files in (/private). . ."
# Checking if files were removed in /private...
if [[ ! -e /private/etc/alternatives && /private/etc/apt && /private/etc/dpkg && /private/etc/profile && /private/etc/profile.d &&  /private/rc.d && /private/var/tmp/jailbreakd.pid && /private/var/mobile/Library/Cydia && /private/var/run/utmp && /private/var/log/apt && /private/var/log/jailbreakd-stderr.log && /private/var/log/jailbreakd-stdout.log && /private/var/lib/apt && /private/var/lib/cydia && /private/var/lib/dpkg && /private/var/lib/misc && /private/var/cache/apt ]]
then
echo "Files in /private were removed succesfully..."
else
echo "Error : 201 (/private) . . . Files were detected and wasnt removed."
exit
fi

echo "Removing files in (/usr). . .(9/10)"
# Removing /usr files in /usr/bin
rm /usr/bin/[
rm /usr/bin/apt-key
rm /usr/bin/arch
rm /usr/bin/asn1Coding
rm /usr/bin/asn1Decoding
rm /usr/bin/asn1Parser
rm /usr/bin/autopoint
rm /usr/bin/b2sum
rm /usr/bin/base32
rm /usr/bin/base64
rm /usr/bin/basename
rm /usr/bin/bashbug
rm /usr/bin/captoinfo
rm /usr/bin/certtool
rm /usr/bin/cfversion
rm /usr/bin/chcon
rm /usr/bin/chfn
rm /usr/bin/chown
rm /usr/bin/chsh
rm /usr/bin/cksum
rm /usr/bin/clear
rm /usr/bin/cmp
rm /usr/bin/comm
rm /usr/bin/csplit
rm /usr/bin/cut
rm /usr/bin/diff
rm /usr/bin/diff3
rm /usr/bin/dircolors
rm /usr/bin/dirmngr
rm /usr/bin/dirmngr-client
rm /usr/bin/dirname
rm /usr/bin/dpkg
rm /usr/bin/dpkg-deb
rm /usr/bin/dpkg-divert
rm /usr/bin/dpkg-maintscript-helper
rm /usr/bin/dpkg-query
rm /usr/bin/dpkg-split
rm /usr/bin/dpkg-statoverride
rm /usr/bin/dpkg-trigger
rm /usr/bin/dselect
rm /usr/bin/du   # Ok this is too much LOL
rm /usr/bin/dumpsexp
rm /usr/bin/ecidecid
rm /usr/bin/env
rm /usr/bin/envsubst
rm /usr/bin/expand
rm /usr/bin/expr
rm /usr/bin/factor
rm /usr/bin/find
rm /usr/bin/fmt
rm /usr/bin/fold
rm /usr/bin/getconf
rm /usr/bin/gettext
rm /usr/bin/gettext.sh
rm /usr/bin/gettextize
rm /usr/bin/getty
rm /usr/bin/gnutls-cli
rm /usr/bin/gnutls-cli-debug
rm /usr/bin/gnutls-serv
rm /usr/bin/gpg
rm /usr/bin/gpg-agent
rm /usr/bin/gpg-connect-agent
rm /usr/bin/gpg-error
rm /usr/bin/gpg-error-config
rm /usr/bin/gpgconf
rm /usr/bin/gpgparsemail
rm /usr/bin/gpgrt-config
rm /usr/bin/gpgscm
rm /usr/bin/gpgsm
rm /usr/bin/gpgtar
rm /usr/bin/gpgv
rm /usr/bin/groups
rm /usr/bin/gssc
rm /usr/bin/head
rm /usr/bin/hmac256
rm /usr/bin/hostid
rm /usr/bin/hostinfo
rm /usr/bin/id
rm /usr/bin/idn2
rm /usr/bin/infocmp
rm /usr/bin/infotocap # Serously theres so many files...
rm /usr/bin/install
rm /usr/bin/iomfsetgamma
rm /usr/bin/join
rm /usr/bin/kbxutil
rm /usr/bin/ksba-config
rm /usr/bin/libassuan-config
rm /usr/bin/libgcrypt-config
rm /usr/bin/link
rm /usr/bin/locate
rm /usr/bin/login
rm /usr/bin/logname
rm /usr/bin/lz4
rm /usr/bin/lz4c
rm /usr/bin/lz4cat
rm /usr/bin/lzcat
rm /usr/bin/lzcmp
rm /usr/bin/lzdiff
rm /usr/bin/lzegrep
rm /usr/bin/lzfgrep
rm /usr/bin/lzgrep
rm /usr/bin/lzless
rm /usr/bin/lzma
rm /usr/bin/lzmadec
rm /usr/bin/lzmainfo
rm /usr/bin/lzmore
rm /usr/bin/md5sum
rm /usr/bin/mkfifo
rm /usr/bin/mktemp
rm /usr/bin/mpicalc
rm /usr/bin/msgattrib
rm /usr/bin/msgcat
rm /usr/bin/msgcmp
rm /usr/bin/msgcomm
rm /usr/bin/msgconv
rm /usr/bin/msgen
rm /usr/bin/msgexec
rm /usr/bin/msgfilter
rm /usr/bin/msgfmt
rm /usr/bin/msggrep
rm /usr/bin/msginit
rm /usr/bin/msgmerge
rm /usr/bin/msgunfmt
rm /usr/bin/msguniq
rm /usr/bin/ncurses6-config
rm /usr/bin/ncursesw6-config
rm /usr/bin/nettle-hash
rm /usr/bin/nettle-lfib-stream
rm /usr/bin/nettle-pbkdf2
rm /usr/bin/ngettext
rm /usr/bin/nice
rm /usr/bin/nl
rm /usr/bin/nohup
rm /usr/bin/nproc
rm /usr/bin/npth-config
rm /usr/bin/numfmt
rm /usr/bin/ocsptool
rm /usr/bin/od
rm /usr/bin/p11-kit # What the....
rm /usr/bin/p11tool
rm /usr/bin/pagesize
rm /usr/bin/passwd
rm /usr/bin/paste
rm /usr/bin/pathchk
rm /usr/bin/pinky
rm /usr/bin/pkcs1-conv
rm /usr/bin/pr
rm /usr/bin/printenv
rm /usr/bin/psktool
rm /usr/bin/printf
rm /usr/bin/ptx
rm /usr/bin/quota
rm /usr/bin/realpath
rm /usr/bin/recode-sr-latin
rm /usr/bin/renice
rm /usr/bin/reset
rm /usr/bin/runcon
rm /usr/bin/sbdidlaunch
rm /usr/bin/sbreload
rm /usr/bin/script
rm /usr/bin/sdiff
rm /usr/bin/seq
rm /usr/bin/sexp-conv
rm /usr/bin/sha1sum
rm /usr/bin/sha224sum
rm /usr/bin/sha256sum
rm /usr/bin/sha384sum
rm /usr/bin/sha512sum
rm /usr/bin/shred
rm /usr/bin/shuf
rm /usr/bin/sort
rm /usr/bin/split
rm /usr/bin/srptool
rm /usr/bin/stat
rm /usr/bin/stdbuf
rm /usr/bin/sum
rm /usr/bin/sw_vers
rm /usr/bin/tac
rm /usr/bin/tail
rm /usr/bin/tar
rm /usr/bin/tee
rm /usr/bin/test
rm /usr/bin/tic
rm /usr/bin/time
rm /usr/bin/timeout
rm /usr/bin/toe
rm /usr/bin/tput
rm /usr/bin/tr
rm /usr/bin/truncate
rm /usr/bin/trust
rm /usr/bin/tset
rm /usr/bin/tsort
rm /usr/bin/tty
rm /usr/bin/uiduid
rm /usr/bin/uiopen
rm /usr/bin/unexpand  # Is it almost over?????!!!!!!!
rm /usr/bin/uniq
rm /usr/bin/unlink
rm /usr/bin/unlz4
rm /usr/bin/unlzma
rm /usr/bin/unxz
rm /usr/bin/update-alternatives
rm /usr/bin/updatedb
rm /usr/bin/uptime
rm /usr/bin/users
rm /usr/bin/watchgnupg
rm /usr/bin/wc
rm /usr/bin/which
rm /usr/bin/who
rm /usr/bin/whoami
rm /usr/bin/xargs
rm /usr/bin/xgettext    # Like seriously...
rm /usr/bin/xz
rm /usr/bin/xzcat
rm /usr/bin/xzcmp
rm /usr/bin/xzdec
rm /usr/bin/xzdiff
rm /usr/bin/xzegrep
rm /usr/bin/xzfgrep
rm /usr/bin/xzgrep
rm /usr/bin/xzless
rm /usr/bin/xzmore
rm /usr/bin/yat2m
rm /usr/bin/yes
# Removing /usr files in /usr/libexec
 rm -rf /usr/libexec/apt
rm /usr/libexec/bigram
rm /usr/libexec/code
rm /usr/libexec/jailbreakd
 rm -rf /usr/libexec/cydia
 rm -rf /usr/libexec/dpkg
rm /usr/libexec/frcode
rm /usr/libexec/gpg-preset-passphrase
rm /usr/libexec/gpg-protect-tool
rm /usr/libexec/gpg-wks-client
rm /usr/libexec/scdaemon
rm /usr/libexec/vndevice
rm /usr/libexec/coreutils/libstdbuf.so
rm /usr/libexec/gpg-check-pattern
 rm -rf /usr/libexec/p11-kit
 rm -rf /usr/libexec/coreutils
# Removing /usr files in /usr/sbin
rm /usr/sbin/ac
rm /usr/sbin/accton
rm /usr/sbin/addgnupghome
rm /usr/sbin/applygnupgdefaults
rm /usr/sbin/chown
rm /usr/sbin/chroot
rm /usr/sbin/dev_mkdb # Developers just stop LOL...
rm /usr/sbin/edquota
rm /usr/sbin/iostat
rm /usr/sbin/mkfile
rm /usr/sbin/nologin
rm /usr/sbin/pwd_mkdb
rm /usr/sbin/quotaon
rm /usr/sbin/repquota
rm /usr/sbin/startupfiletool
rm /usr/sbin/sysctl
rm /usr/sbin/vifs
rm /usr/sbin/vipw
rm /usr/sbin/vsdbutil
rm /usr/sbin/zdump
rm /usr/sbin/zic
# Removing /usr files in /usr/local
 rm -rf /usr/local/lib
rm /usr/local/bin/debugserver
# Removing /usr files in /usr/include
rm /usr/include/assuan.h
rm /usr/include/autosprintf.h
 rm -rf /usr/include/dpkg
rm /usr/include/eti.h
rm /usr/include/gettext-po.h
rm /usr/include/gmp.h
rm /usr/include/gpgrt.h
rm /usr/include/idn2.h
rm /usr/include/libtasn1.h
rm /usr/include/lz4.h
 rm -rf /usr/include/lzma
rm /usr/include/lzma.h
rm /usr/include/nc_tparm.h
rm /usr/include/ncurses_dll.h # There's MORE?!?!
 rm -rf /usr/include/nettle
rm /usr/include/npth.h
 rm -rf /usr/include/readline
rm /usr/include/term_entry.h
rm /usr/include/tic.h
rm /usr/include/unctrl.h # ok....
rm /usr/include/unigbrk.h
rm /usr/include/uninorm.h
rm /usr/include/unistdio.h
rm /usr/include/unitypes.h
rm /usr/include/uniwbrk.h
rm /usr/include/form.h
rm /usr/include/gcrypt.h
 rm -rf /usr/include/gnutls
rm /usr/include/gpg-error.h
rm /usr/include/ksba.h
rm /usr/include/libintl.h
rm /usr/include/lz4frame.h
rm /usr/include/lz4hc.h
rm /usr/include/lzmadec.h
rm /usr/include/menu.h
rm /usr/include/ncurses.h
 rm -rf /usr/include/ncursesw
 rm -rf /usr/include/p11-kit-1
rm /usr/include/panel.h
rm /usr/include/term.h # wow......ok
rm /usr/include/termcap.h
rm /usr/include/unicase.h
rm /usr/include/uniconv.h
rm /usr/include/unilbrk.h
rm /usr/include/uniname.h
rm /usr/include/unistr.h
 rm -rf /usr/include/unistring
rm /usr/include/uniwidth.h
rm /usr/include/curses.h
# Removing /usr files in /usr/share
 rm -rf /usr/share/aclocal
 rm -rf /usr/share/bigboss
 rm -rf /usr/share/common-lisp
 rm -rf /usr/share/dict
 rm -rf /usr/share/dpkg
 rm -rf /usr/share/gnupg
 rm -rf /usr/share/libgpg-error
 rm -rf /usr/share/p11-kit
 rm -rf /usr/share/tabset
 rm -rf /usr/share/terminfo
# Removing /usr files in /usr/lib
 rm -rf /usr/lib/_ncurses
 rm -rf /usr/lib/apt
 rm -rf /usr/lib/bash
 rm -rf /usr/lib/p7zip
 rm -rf /usr/lib/tweaks
 rm -rf /usr/lib/gettext # Why...
 rm -rf /usr/lib/ssl
rm /usr/lib/tweakloader.dylib
rm /usr/lib/libapt-inst.2.0.0.dylib
rm /usr/lib/libapt-inst.2.0.dylib
rm /usr/lib/libapt-inst.dylib
rm /usr/lib/libapt-pkg.5.0.1.dylib
rm /usr/lib/libapt-pkg.5.0.dylib
rm /usr/lib/libapt-pkg.dylib
rm /usr/lib/libapt-private.0.0.0.dylib
rm /usr/lib/libapt-private.0.0.dylib
rm /usr/lib/libasprintf.0.dylib
rm /usr/lib/libasprintf.dylib
rm /usr/lib/libassuan.0.dylib
rm /usr/lib/libassuan.dylib
rm /usr/lib/libassuan.la
rm /usr/lib/libdpkg.a
rm /usr/lib/libform.5.dylib
rm /usr/lib/libform.6.dylib
rm /usr/lib/libform5.dylib
rm /usr/lib/libformw.5.dylib
rm /usr/lib/libformw.6.dylib
rm /usr/lib/libformw.dylib
rm /usr/lib/libformw5.dylib
rm /usr/lib/libgcrypt.20.dylib # Just stop /usr...
rm /usr/lib/libgcrypt.dylib
rm /usr/lib/libgcrypt.la
rm /usr/lib/libgettextlib-0.19.8.dylib
rm /usr/lib/libgettextlib.dylib
rm /usr/lib/libgettextpo.1.dylib
rm /usr/lib/libgettextpo.dylib
rm /usr/lib/libgettextsrc-0.19.8.dylib
rm /usr/lib/libgettextsrc.dylib
rm /usr/lib/libgmp.10.dylib
rm /usr/lib/libgmp.dylib
rm /usr/lib/libgmp.la
rm /usr/lib/libgnutls.30.dylib
rm /usr/lib/libgnutls.dylib
rm /usr/lib/libgnutlsxx.28.dylib
rm /usr/lib/libgnutlsxx.dylib
rm /usr/lib/libgpg-error.0.dylib
rm /usr/lib/libgpg-error.dylib
rm /usr/lib/libgpg-error.la
rm /usr/lib/libhistory.5.2.dylib
rm /usr/lib/libhistory.5.dylib
rm /usr/lib/libhistory.7.0.dylib
rm /usr/lib/libhistory.7.dylib
rm /usr/lib/libhistory.dylib
rm /usr/lib/libhogweed.4.4.dylib
rm /usr/lib/libhogweed.4.dylib
rm /usr/lib/libhogweed.dylib
rm /usr/lib/libidn2.0.dylib
rm /usr/lib/libidn2.dylib
rm /usr/lib/libidn2.la
rm /usr/lib/libintl.9.dylib
rm /usr/lib/libintl.dylib
rm /usr/lib/libjailbreak.dylib
rm /usr/lib/libksba.8.dylib
rm /usr/lib/libksba.dylib
rm /usr/lib/libksba.la
rm /usr/lib/liblz4.1.7.5.dylib
rm /usr/lib/liblz4.1.dylib
rm /usr/lib/liblz4.dylib
rm /usr/lib/liblzmadec.0.dylib
rm /usr/lib/liblzmadec.dylib
rm /usr/lib/libmenu.5.dylib
rm /usr/lib/libmenu.6.dylib
rm /usr/lib/libmenu.dylib
rm /usr/lib/libmenu5.dylib # It's time to stop!!!!
rm /usr/lib/libmenuw.5.dylib
rm /usr/lib/libmenuw.6.dylib
rm /usr/lib/libmenuw.dylib
rm /usr/lib/libmenuw5.dylib
rm /usr/lib/libncurses.6.dylib
rm /usr/lib/libncurses5.dylib
rm /usr/lib/libncurses6.dylib
rm /usr/lib/libncursesw.5.dylib
rm /usr/lib/libncursesw.6.dylib
rm /usr/lib/libncursesw.dylib
rm /usr/lib/libncursesw5.dylib
rm /usr/lib/libncursesw6.dylib
rm /usr/lib/libnettle.6.4.dylib
rm /usr/lib/libnettle.6.dylib
rm /usr/lib/libnettle.dylib
rm /usr/lib/libnpth.0.dylib
rm /usr/lib/libnpth.dylib
rm /usr/lib/libnpth.la
rm /usr/lib/libp11-kit.0.dylib
rm /usr/lib/libp11-kit.dylib
rm /usr/lib/libp11-kit.la
rm /usr/lib/libpanel.5.dylib
rm /usr/lib/libpanel.6.dylib
rm /usr/lib/libpanel.dylib
rm /usr/lib/libpanel5.dylib
rm /usr/lib/libpanelw.5.dylib
rm /usr/lib/libpanelw.6.dylib
rm /usr/lib/libpanelw.dylib # Is it done ;-;
rm /usr/lib/libpanelw5.dylib
rm /usr/lib/libreadline.5.2.dylib
rm /usr/lib/libreadline.5.dylib
rm /usr/lib/libreadline.7.0.dylib
rm /usr/lib/libreadline.7.dylib
rm /usr/lib/libreadline.dylib
rm /usr/lib/libssl.1.0.0.dylib
rm /usr/lib/libssl.dylib
rm /usr/lib/libstdc++.6.0.9.dylib
rm /usr/lib/libsubstitute.0.dylib
rm /usr/lib/libtasn1.6.dylib
rm /usr/lib/libtasn1.dylib
rm /usr/lib/libtasn1.la
rm /usr/lib/libunistring.2.dylib
rm /usr/lib/libunistring.dylib
rm /usr/lib/libunistring.la
rm /usr/lib/p11-kit-proxy.dylib
rm /usr/lib/pspawn_hook.dylib
rm -rf /usr/lib/pkcs11
 rm -rf /usr/lib/pkgconfig
 rm -rf /usr/lib/terminfo
# Removing /usr files in /usr/etc
 rm -rf /usr/etc

echo "Checking for left over files in (/usr). . ."
# Checking if files were removed in /usr/...     This looks even worse lol...  like...    oh god...
if [[ ! -e /usr/bin/apt-key && /usr/bin/arch && /usr/bin/asn1Coding && /usr/bin/asn1Decoding && /usr/bin/asn1Parser && /usr/bin/autopoint && /usr/bin/b2sum && /usr/bin/base32 && /usr/bin/base64 && /usr/bin/basename && /usr/bin/bashbug && /usr/bin/captoinfo && /usr/bin/certtool && /usr/bin/cfversion && /usr/bin/chcon && /usr/bin/chfn && /usr/bin/chown && /usr/bin/chsh && /usr/bin/cksum && /usr/bin/clear && /usr/bin/cmp && /usr/bin/comm && /usr/bin/csplit && /usr/bin/cut && /usr/bin/diff && /usr/bin/diff3 && /usr/bin/dircolors && /usr/bin/dirmngr && /usr/bin/dirmngr-client && /usr/bin/dirname && /usr/bin/dpkg && /usr/bin/dpkg-deb && /usr/bin/dpkg-divert && /usr/bin/dpkg-maintscript-helper && /usr/bin/dpkg-query && /usr/bin/dpkg-split && /usr/bin/dpkg-statoverride && /usr/bin/dpkg-trigger && /usr/bin/dselect && /usr/bin/du && /usr/bin/dumpsexp && /usr/bin/ecidecid && /usr/bin/env && /usr/bin/envsubst && /usr/bin/expand && /usr/bin/expr && /usr/bin/factor && /usr/bin/find && /usr/bin/fmt && /usr/bin/fold && /usr/bin/getconf && /usr/bin/gettext && /usr/bin/gettext.sh && /usr/bin/gettextize && /usr/bin/getty && /usr/bin/gnutls-cli && /usr/bin/gnutls-cli-debug && /usr/bin/gnutls-serv && /usr/bin/gpg && /usr/bin/gpg-agent && /usr/bin/gpg-connect-agent && /usr/bin/gpg-error && /usr/bin/gpg-error-config && /usr/bin/gpgconf && /usr/bin/gpgparsemail && /usr/bin/gpgrt-config && /usr/bin/gpgscm && /usr/bin/gpgsm && /usr/bin/gpgtar && /usr/bin/gpgv && /usr/bin/groups && /usr/bin/gssc && /usr/bin/head && /usr/bin/hmac256 && /usr/bin/hostid && /usr/bin/hostinfo && /usr/bin/id && /usr/bin/idn2 && /usr/bin/infocmp && /usr/bin/infotocap && /usr/bin/install && /usr/bin/iomfsetgamma && /usr/bin/join && /usr/bin/kbxutil && /usr/bin/ksba-config && killall && /usr/bin/libassuan-config && /usr/bin/libgcrypt-config && /usr/bin/link && /usr/bin/locate && /usr/bin/login && /usr/bin/logname && /usr/bin/lz4 && /usr/bin/lz4c && /usr/bin/lz4cat && /usr/bin/lzcat && /usr/bin/lzcm && /usr/bin/lzdiff && /usr/bin/lzegrep && /usr/bin/lzfgrep && /usr/bin/lzgrep && /usr/bin/lzless && /usr/bin/lzma && /usr/bin/lzmadec && /usr/bin/lzmainfo && /usr/bin/lzmore && /usr/bin/md5sum && /usr/bin/mkfifo && /usr/bin/mktemp && /usr/bin/mpicalc && /usr/bin/msgattrib && /usr/bin/msgcat && /usr/bin/msgcmp && /usr/bin/msgcomm && /usr/bin/msgconv && /usr/bin/msgen && /usr/bin/msgexec && /usr/bin/msgfilter && /usr/bin/msgfmt && /usr/bin/msggrep && /usr/bin/msginit && /usr/bin/msgmerge && /usr/bin/msgunfmt && /usr/bin/msguniq && /usr/bin/ncurses6-config && /usr/bin/ncursesw6-config && /usr/bin/nettle-hash && /usr/bin/nettle-lfib-stream && /usr/bin/nettle-pbkdf2 && /usr/bin/ngettext && /usr/bin/nice && /usr/bin/nl && /usr/bin/nohup && /usr/bin/nproc && /usr/bin/npth-config && /usr/bin/numfmt && /usr/bin/ocsptool && /usr/bin/od && /usr/bin/p11-kit && /usr/bin/p11tool && /usr/bin/pagesize && /usr/bin/passwd && /usr/bin/paste && /usr/bin/pathchk && /usr/bin/pinky && /usr/bin/pkcs1-conv && /usr/bin/pr && /usr/bin/printenv && /usr/bin/printf && /usr/bin/psktool && /usr/bin/ptx && /usr/bin/quota && /usr/bin/realpath && /usr/bin/recode-sr-latin && /usr/bin/renice && /usr/bin/reset && /usr/bin/runcon && /usr/bin/sbdidlaunch && /usr/bin/sbreload && /usr/bin/script && /usr/bin/sdiff && /usr/bin/seq && /usr/bin/sexp-conv && /usr/bin/sha1sum && /usr/bin/sha224sum && /usr/bin/sha256sum && /usr/bin/sha384sum && /usr/bin/sha512sum && /usr/bin/shred && /usr/bin/shuf && /usr/bin/sort && /usr/bin/split && /usr/bin/srptool && /usr/bin/stat && /usr/bin/stdbuf && /usr/bin/sum && /usr/bin/sw_vers && /usr/bin/tac && /usr/bin/tail && /usr/bin/tar && /usr/bin/tee && /usr/bin/test && /usr/bin/tic && /usr/bin/time && /usr/bin/timeout && /usr/bin/toe && /usr/bin/tput && /usr/bin/tr && /usr/bin/truncate && /usr/bin/trust && /usr/bin/tset && /usr/bin/tsort && /usr/bin/tty && /usr/bin/uicache && /usr/bin/uiduid && /usr/bin/uiopen && /usr/bin/unexpand && /usr/bin/uniq && /usr/bin/unlink && /usr/bin/unlz4 && /usr/bin/unlzma && /usr/bin/unxz && /usr/bin/update-alternatives && /usr/bin/updatedb && /usr/bin/uptime && /usr/binusers && /usr/bin/watchgnupg && /usr/bin/wc && /usr/bin/which && /usr/bin/who && /usr/bin/whoami && /usr/bin/xargs && /usr/bin/xgettext && /usr/bin/xz && /usr/bin/xzcat && /usr/bin/xzcmp && /usr/bin/xzdec && /usr/bin/xzdiff && /usr/bin/xzegrep && /usr/bin/xzfgrep && /usr/bin/xzgrep && /usr/bin/xzless && /usr/bin/xzmore && /usr/bin/yat2m && /usr/bin/yes &&/usr/libexec/apt && /usr/libexec/bigram && /usr/libexec/code && /usr/libexec/cydia && /usr/libexec/dpkg && /usr/libexec/frcode && /usr/libexec/gpg-preset-passphrase && /usr/libexec/gpg-protect-tool && /usr/libexec/gpg-wks-client && /usr/libexec/scdaemon && /usr/libexec/vndevice && /usr/libexec/coreutils/libstdbuf.so && /usr/libexec/gpg-check-pattern && /usr/libexec/p11-kit && /usr/sbin/ac && /usr/sbin/accton && /usr/sbin/addgnupghome && /usr/sbin/applygnupgdefaults && /usr/sbin/chown && /usr/sbin/chroot && /usr/sbin/dev_mkdb && /usr/sbin/edquota && /usr/sbin/fdisk && /usr/sbin/iostat && /usr/sbin/mkfile && /usr/sbin/nologin && /usr/sbin/pwd_mkdb && /usr/sbin/quotaon && /usr/sbin/repquota && /usr/sbin/startupfiletool && /usr/sbin/sysctl && /usr/sbin/vifs && /usr/sbin/vipw && /usr/sbin/vsdbutil && /usr/sbin/zdump && /usr/sbin/zic && /usr/local/lib/liblzma.5.dylib && /usr/local/lib/liblzma.dylib && /usr/local/lib/pkgconfigrm && /usr/include/assuan.h && /usr/include/autosprintf.h && /usr/include/dpkg && /usr/include/eti.h && /usr/include/gettext-po.h && /usr/include/gmp.h && /usr/include/gpgrt.h && /usr/include/idn2.h && /usr/include/libtasn1.h && /usr/include/lz4.h && /usr/include/lzma && /usr/include/lzma.h && /usr/include/nc_tparm.h && /usr/include/ncurses_dll.h && /usr/include/nettle && /usr/include/npth.h && /usr/include/readline && /usr/include/term_entry.h && /usr/include/tic.h && /usr/include/unctrl.h && /usr/include/unigbrk.h && /usr/include/uninorm.h && /usr/include/unistdio.h && /usr/include/unitypes.h && /usr/include/uniwbrk.h && /usr/include/form.h && /usr/include/gcrypt.h && /usr/include/gnutls && /usr/include/gpg-error.h && /usr/include/ksba.h && /usr/include/libintl.h && /usr/include/lz4frame.h && /usr/include/lz4hc.h && /usr/include/lzmadec.h && /usr/include/menu.h && /usr/include/ncurses.h && /usr/include/ncursesw && /usr/include/p11-kit-1 && /usr/include/panel.h && /usr/include/term.h && /usr/include/termcap.h && /usr/include/unicase.h && /usr/include/uniconv.h && /usr/include/unilbrk.h && /usr/include/uniname.h && /usr/include/unistr.h && /usr/include/unistring && /usr/include/uniwidth.h && /usr/include/curses.h && /usr/share/aclocal && /usr/share/bigboss && /usr/share/common-lisp && /usr/share/dict && /usr/share/dpkg && /usr/share/gnupg && /usr/share/libgpg-error && /usr/share/p11-kit && /usr/share/tabset && /usr/share/terminform && /usr/lib/_ncurses && /usr/lib/apt && /usr/lib/bash && /usr/lib/gettext && /usr/lib/libapt-inst.2.0.0.dylib && /usr/lib/libapt-inst.2.0.dylib && /usr/lib/libapt-inst.dylib && /usr/lib/libapt-pkg.5.0.1.dylib && /usr/lib/libapt-pkg.5.0.dylib && /usr/lib/libapt-pkg.dylib && /usr/lib/libapt-private.0.0.0.dylib && /usr/lib/libapt-private.0.0.dylib && /usr/lib/libasprintf.0.dylib && /usr/lib/libasprintf.dylib && /usr/lib/libassuan.0.dylib && /usr/lib/libassuan.dylib && /usr/lib/libassuan.la && /usr/lib/libdpkg.a && /usr/lib/libform.5.dylib && /usr/lib/libform.6.dylib && /usr/lib/libform5.dylib && /usr/lib/libformw.5.dylib && /usr/lib/libformw.6.dylib && /usr/lib/libformw.dylib && /usr/lib/libformw5.dylib && /usr/lib/libgcrypt.20.dylib && /usr/lib/libgcrypt.dylib && /usr/lib/libgcrypt.la && /usr/lib/libgettextlib-0.19.8.dylib && /usr/lib/libgettextlib.dylib && /usr/lib/libgettextpo.1.dylib && /usr/lib/libgettextpo.dylib && /usr/lib/libgettextsrc-0.19.8.dylib && /usr/lib/libgettextsrc.dylib && /usr/lib/libgmp.10.dylib && /usr/lib/libgmp.dylib && /usr/lib/libgmp.la && /usr/lib/libgnutls.30.dylib && /usr/lib/libgnutls.dylib && /usr/lib/libgnutlsxx.28.dylib && /usr/lib/libgnutlsxx.dylib && /usr/lib/libgpg-error.0.dylib && /usr/lib/libgpg-error.dylib && /usr/lib/libgpg-error.la && /usr/lib/libhistory.5.2.dylib && /usr/lib/libhistory.5.dylib && /usr/lib/libhistory.7.0.dylib && /usr/lib/libhistory.7.dylib && /usr/lib/libhistory.dylib && /usr/lib/libhogweed.4.4.dylib && /usr/lib/libhogweed.4.dylib && /usr/lib/libhogweed.dylib && /usr/lib/libidn2.0.dylib && /usr/lib/libidn2.dylib && /usr/lib/libidn2.la && /usr/lib/libintl.9.dylib && /usr/lib/libintl.dylib && /usr/lib/libksba.8.dylib && /usr/lib/libksba.dylib && /usr/lib/libksba.la && /usr/lib/liblz4.1.7.5.dylib && /usr/lib/liblz4.1.dylib && /usr/lib/liblz4.dylib && /usr/lib/liblzmadec.0.dylib && /usr/lib/liblzmadec.dylib && /usr/lib/libmenu.5.dylib && /usr/lib/libmenu.6.dylib && /usr/lib/libmenu.dylib && /usr/lib/libmenu5.dylib && /usr/lib/libmenuw.5.dylib && /usr/lib/libmenuw.6.dylib && /usr/lib/libmenuw.dylib && /usr/lib/libmenuw5.dylib && /usr/lib/libncurses.6.dylib && /usr/lib/libncurses5.dylib && /usr/lib/libncurses6.dylib && /usr/lib/libncursesw.5.dylib && /usr/lib/libncursesw.6.dylib && /usr/lib/libncursesw.dylib && /usr/lib/libncursesw5.dylib && /usr/lib/libncursesw6.dylib && /usr/lib/libnettle.6.4.dylib && /usr/lib/libnettle.6.dylib && /usr/lib/libnettle.dylib && /usr/lib/libnpth.0.dylib && /usr/lib/libnpth.dylib && /usr/lib/libnpth.la && /usr/lib/libp11-kit.0.dylib && /usr/lib/libp11-kit.dylib && /usr/lib/libp11-kit.la && /usr/lib/libpanel.5.dylib && /usr/lib/libpanel.6.dylib && /usr/lib/libpanel.dylib && /usr/lib/libpanel5.dylib && /usr/lib/libpanelw.5.dylib && /usr/lib/libpanelw.6.dylib && /usr/lib/libpanelw.dylib && /usr/lib/libpanelw5.dylib && /usr/lib/libreadline.5.2.dylib && /usr/lib/libreadline.5.dylib && /usr/lib/libreadline.7.0.dylib && /usr/lib/libreadline.7.dylib && /usr/lib/libreadline.dylib && /usr/lib/libtasn1.6.dylib && /usr/lib/libtasn1.dylib && /usr/lib/libtasn1.la && /usr/lib/libunistring.2.dylib && /usr/lib/libunistring.dylib && /usr/lib/libunistring.la && /usr/lib/p11-kit-proxy.dylib && /usr/lib/pkcs11 && /usr/lib/pkgconfig && /usr/lib/terminfo && /usr/local/lib/liblzma.5.dylib && /usr/local/lib/liblzma.dylib && /usr/local/lib/pkgconfig && /usr/lib/tweakloader.dylib && /usr/lib/tweaks && /usr/lib/p7zip && /usr/lib/ssl && /usr/lib/gettext && /usr/lib/pspawn_hook.dylib && /usr/lib/libssl.1.0.0.dylib && /usr/lib/libssl.dylib && /usr/lib/libstdc++.6.0.9.dylib && /usr/lib/libsubstitute.0.dylib && /usr/local/lib && /usr/etc ]]
then
echo "Files in /usr were removed succesfully..."
else
echo "Error : Line 669 (/usr). . . Files were detected and wasnt removed"
exit
fi

echo "Removing files in (/System). . .(10/10)"
rm -rf /System/Library/Internet_Plug-ins
rm -rf /System/Library/KeyboardDictionaries

echo "Checking for left over files in (/System). . ."
if [[ ! -e /System/Library/Internet_Plug-ins && /System/Library/KeyboardDictionaries ]]
then
echo "Files in /System were removed succesfully..."
else
echo "Error : Line 682 (/System). . . Files were detected and wasnt removed"
exit
fi

echo "Removing Cydia..."
rm -rf /Applications/Cydia.app
if [[ ! -e /Applications/Cydia.app ]]
then
echo "Finished, Please Wait 30 Secs before Rebooting..."
uicache
else
echo "Error Line : 692. . . Cydia wasn't removed."
exit
fi
else
exit
fi
