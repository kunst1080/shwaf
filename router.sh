#!/bin/sh
PATH=$PATH:lib

method=$1
url=$2

case "${url}" in
    "/" | "/index.html")
        app/index.sh
        return $?
        ;;
    *)
        render BAD_REQUEST PLAIN error.txt
        return 9
        ;;
esac
