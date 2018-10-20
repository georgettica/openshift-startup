This repo will hold the changes made on the osboxes.org debian 8 machine to run ` oc cluster up` successfully`

for running the system, I installed the packages from [packages list file](./installed-packages.txt)

# Installing oc binary
installed from [github openshift release](https://github.com/openshift/origin/releases/tag/v3.7.0)
the package is named : 'openshift-origin-client-tools-v3.7.0-7ed6862-linux-64bit.tar.gz' 

extracted it with `tar xzvf <file.tar.gz>`

copied it to /usr/local/bin

# Manuals
Read the manual at [docker installation manual](https://docs.docker.com/install/linux/docker-ce/debian/#set-up-the-repository)

also read the manual here [docker engine installation](https://www.hiroom2.com/2017/06/26/debian-9-install-docker-engine/)

**Did not run anything after adding the apt repositories**

installed the package with:
`$ sudo apt-get install docker-engine=1.12.1~rc2-0~jessie`

# Docker images to pull
[The images I needed to pull are listed in here](./a)

and then `oc cluster up` worked

# Adding remote control
for running the cluster in a virtualbox, 
[I used the manual over here](https://code-maven.com/virtualbox-host-only-network-ssh-to-remote-machine)

very usefull!

also I wrote a script to transfer dockers (use ssh-copy-id before you start)

[This is the script](./sc.sh)
