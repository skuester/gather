#!/bin/bash

echo "Installing git-subtree:"

echo "Downloading git source..."
temp=`basename $0`
TMPDIR=`mktemp -d /tmp/$temp.git-subtree` || exit 1;
git clone https://github.com/git/git.git $TMPDIR

echo "Installing subtree... (password required)"
cd $TMPDIR/contrib/subtree
make
sudo make prefix=/usr install

echo "Deleting temporary files..."
rm -Rf $TMPDIR

echo "Git Subtree Installed."
