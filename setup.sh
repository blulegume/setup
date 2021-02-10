#!/usr/bin/bash

. ./necessary.sh 
. ./important.sh 
. ./k8s.sh 
. ./nice.sh 
. ./themes.sh

function update() {
    sudo apt-get update
}

update
installNecessary

while getopts "iknt" OPTION
do
    case $OPTION in
        i)
            installImportant
            ;;
        n)
            installNice
            ;;
        k)
            installK8sTools
            ;;
        t)
            installThemes
            ;;
	esac
done
