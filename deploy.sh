#!/bin/bash

install() {
  printf "Updating site\n"
  cp index.html /var/www/html/index.html
  printf "Done!\n"
}

noinstall() {
  printf "Ok bye!\n"
}

printf "Will install to /var/www/html"

while true; do
    read -p "Do you want to update? " yn
    case $yn in
        [Yy]* ) install; break;;
        [Nn]* ) noinstall; break;;
        * ) printf "Please answer yes or no.\n";;
    esac
done