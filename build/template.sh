#!/bin/bash

VERSION="rsync-version"
bs_workspace="folder"

cd $bs_workspace
wget http://rsync.samba.org/ftp/rsync/rsync-${VERSION}.tar.gz
wget http://rsync.samba.org/ftp/rsync/rsync-patches-${VERSION}.tar.gz

tar xzf rsync-${VERSION}.tar.gz
tar xzf rsync-patches-${VERSION}.tar.gz

cd rsync-${VERSION}

echo Applying patches ...
patch -N -p1 <patches/transliterate.diff
patch -N -p1 <patches/ignore-case.diff
patch  <./no-password-file-check.diff

export LDFLAGS=-L/usr/local/lib
./configure --disable-acl-support --disable-xattr-support

make reconfigure
make
strip rsync.exe

cat rsync.1 | groff -mandoc -Thtml >rsync.html
cat rsyncd.conf.5 | groff -mandoc -Thtml >rsyncd.conf.html

tar cvzf ../${bs_workspace}.tar.gz rsync.exe rsync.html rsyncd.conf.html

./rsync --version