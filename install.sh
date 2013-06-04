#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
echo "Creating symlink for .vimrc in home directory"
ln -s $DIR/.vimrc ~/.vimrc
echo "Done!"
