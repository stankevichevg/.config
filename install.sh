#!/bin/sh

cd `dirname $0`
ln -sFf $PWD/.bash_aliases ~/.bash_aliases
ln -sFf $PWD/.bash_profile ~/.bash_profile
ln -sFf $PWD/.gitconfig ~/.gitconfig
ln -sFf /dev/null ~/.bash_history
