#!/bin/sh

echo "Installing git-subtree:"

echo "Downloading git source..."
TMPDIR=`mktemp -d`
git clone https://github.com/git/git.git $TMPDIR

echo "Installing subtree... (password required)"
cd $TMPDIR/contrib/subtree
make
sudo make prefix=/usr install

echo "Deleting temporary files..."
rm -R $TMPDIR
