# shell-virus-poc
Proof-of-Concept /bin/sh virus

!! DO NOT RUN THIS SCRIPT !!

!! FOR EDUCATIONAL USE ONLY !!

## What ##
This a short one-liner that will search and infect one other /bin/sh-script with itself.

## Why ##
While having a discussion about hardening a Linux server, making it more secure, a question was raised:
````
"Why can't you just remove all commands that will allow you to do something dangerous?"
````
My reply was:
````
"That is basically impossible, you could write a virus with just ls and grep."
````
Turned out I was wrong, you need ed, find, grep and head.


## How do I run it on my Linux laptop ##
Don't. Run it someone elses desktop.

Just kidding.

Even it the script should be harmless it is pretty annoying. If you feel a need to test it, setup a virtual machine or container. Do not ever run it on a production machine, not even "Just to see if it works".

