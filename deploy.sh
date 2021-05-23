#!/bin/bash

SRCFILE=index.html
TARGETDIR=../roquitte.com

install() {
  printf "Updating site\n"
  cp $SRCFILE $TARGETDIR
  printf "Done!\n"
}

noinstall() {
  printf "Ok bye!\n"
}

printf "Will install to %s \n" $TARGETDIR

while true; do
    read -p "Do you want to update? [y/n] " yn
    case $yn in
        [Yy]* ) install; break;;
        [Nn]* ) noinstall; break;;
        * ) printf "Please answer yes or no.\n";;
    esac
done
