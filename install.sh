#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
echo "Creating symlink for .vimrc in home dirctory"
ln -s $DIR/.vimrc ~/.vimrc
