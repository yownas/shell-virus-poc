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

## I didn't listen and ran it, why is it so slow ##
It tries to find a writable shell-script that is not infected, starting at /. Unless you are root it will take a while until it finds your $HOME.

## People are angry, what do I do now? ##
Change name, move to another country.

...or, to find infected scripts
````
find / -type f -exec grep -l 'ShVirus' {} \; 2>/dev/null
````
(Simply remove the second line (containing ShVirus) in all those files and you should be ok.)

