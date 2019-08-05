# Debian OS

Debian is an operating system and currently use the Linux kernel or the FreeBSD kernel.
Ubuntu is based on Debian; Linux Mint is based on Ubuntu.
Raspbian is also based on Debian.

## Using Windows 10 WSL to run Ubuntu

Ref: https://linoxide.com/distros/how-install-ubuntu-windows-10/
 

## `bash`

`bash` is a Unix shell, a user command line interface (CLI).
It is the default shell on Debian OS.


## `chmod` and `chown`

Make shell file executable:
```
chmod +x <filename>
```

Change owner user of file:
```
chown <userName> <filename>
```

Change owner group of file:
```
chown :<groupName> <filename>
``` 

Change both owner user and group of file:
```
chown <userName>:<groupName> <filename>
chown -R <userName>:<groupName> <foldename>
```


## `apt` repository

Debian maintains a list of links to repository that `apt-` or `apt-get` can
download from. The list(s) is stored in a file `/etc/apt/sources.list`, and
in a directory containing the list files. These files are merged at runtime
to form the complete list. Therefore, the content format of these files are 
exactly the same.

The benefits for allowing list of files in the `sources.list.d` folder are:
ease of configuration and automation. For example, to disable a repository that
is listed on a file, you can just remove the file instead of manipulating the 
main list (i.e. `sources.list`).

Example of the default content of `/etc/apt/sources.list` for raspbian
```
deb http://raspbian.raspberrypi.org/raspbian/ stretch main contrib non-free rpi
# Uncomment line below then 'apt-get update' to enable 'apt-get source'
#deb-src http://raspbian.raspberrypi.org/raspbian/ stretch main contrib non-free rpi
```

and `/etc/apt/sources.list.d/debian.list`
```
deb http://archive.raspberrypi.org/debian/ stretch main ui
# Uncomment line below then 'apt-get update' to enable 'apt-get source'
#deb-src http://archive.raspberrypi.org/debian/ stretch main ui
```

Also see `man sources.list` for details.

### Default repositories

#### Default raspbian

Content of `/etc/apt/sources.list`
```
deb http://raspbian.raspberrypi.org/raspbian/ stretch main contrib non-free rpi
# Uncomment line below then 'apt-get update' to enable 'apt-get source'
#deb-src http://raspbian.raspberrypi.org/raspbian/ stretch main contrib non-free rpi
```

Content of `/etc/apt/sources.list.d/debian.list`
```
deb http://archive.raspberrypi.org/debian/ stretch main ui
# Uncomment line below then 'apt-get update' to enable 'apt-get source'
#deb-src http://archive.raspberrypi.org/debian/ stretch main ui
```

#### Default Ubuntu 18.04
```
# deb cdrom:[Ubuntu 18.04.2 LTS _Bionic Beaver_ - Release amd64 (20190210)]/ bionic main restricted

# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb http://us.archive.ubuntu.com/ubuntu/ bionic main restricted
# deb-src http://us.archive.ubuntu.com/ubuntu/ bionic main restricted

## Major bug fix updates produced after the final release of the
## distribution.
deb http://us.archive.ubuntu.com/ubuntu/ bionic-updates main restricted
# deb-src http://us.archive.ubuntu.com/ubuntu/ bionic-updates main restricted

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb http://us.archive.ubuntu.com/ubuntu/ bionic universe
# deb-src http://us.archive.ubuntu.com/ubuntu/ bionic universe
deb http://us.archive.ubuntu.com/ubuntu/ bionic-updates universe
# deb-src http://us.archive.ubuntu.com/ubuntu/ bionic-updates universe

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu 
## team, and may not be under a free licence. Please satisfy yourself as to 
## your rights to use the software. Also, please note that software in 
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
deb http://us.archive.ubuntu.com/ubuntu/ bionic multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu/ bionic multiverse
deb http://us.archive.ubuntu.com/ubuntu/ bionic-updates multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu/ bionic-updates multiverse

## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb http://us.archive.ubuntu.com/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src http://us.archive.ubuntu.com/ubuntu/ bionic-backports main restricted universe multiverse

## Uncomment the following two lines to add software from Canonical's
## 'partner' repository.
## This software is not part of Ubuntu, but is offered by Canonical and the
## respective vendors as a service to Ubuntu users.
# deb http://archive.canonical.com/ubuntu bionic partner
# deb-src http://archive.canonical.com/ubuntu bionic partner

deb http://security.ubuntu.com/ubuntu bionic-security main restricted
# deb-src http://security.ubuntu.com/ubuntu bionic-security main restricted
deb http://security.ubuntu.com/ubuntu bionic-security universe
# deb-src http://security.ubuntu.com/ubuntu bionic-security universe
deb http://security.ubuntu.com/ubuntu bionic-security multiverse
deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable
# deb-src [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable
# deb-src http://security.ubuntu.com/ubuntu bionic-security multiverse
```


#### Default arm32v7/python:3.7.3-slim-stretch

Content of `/etc/apt/sources.list`
```
# deb http://snapshot.debian.org/archive/debian/20190610T000000Z stretch main
deb http://deb.debian.org/debian stretch main
# deb http://snapshot.debian.org/archive/debian-security/20190610T000000Z stretch/updates main
deb http://security.debian.org/debian-security stretch/updates main
# deb http://snapshot.debian.org/archive/debian/20190610T000000Z stretch-updates main
deb http://deb.debian.org/debian stretch-updates main
```

Content of `/etc/apt/sources.list.d` folder is empty

### Debian apt Repositories

- https://www.debian.org/distrib/packages
- https://aur.archlinux.org/packages/


### List of apt repositories
```
grep ^[^#] /etc/apt/sources.list /etc/apt/sources.list.d/*
```

### List of installed packages
```
dpkg -l

dpkg --get-selections | grep python3-picamera
```

Refs:
- https://www.howtoforge.com/linux-dpkg-command/

### How apt works

Refs:
- https://unix.stackexchange.com/questions/377736/how-does-apt-get-really-work

### Adding a repository

Refs:
- https://itsfoss.com/add-apt-repository-command-not-found/
- https://tecadmin.net/add-apt-repository-ubuntu/

### Web-based tool to search packages

https://www.debian.org/distrib/packages

### Command options

`apt-get install <packageName> --no-install-recommends` - Do not consider recommended 
packages as a dependency for installing. In addition to finding the package,
the command also gathers the list required packages, recommended packages, and 
suggested packages. The *required packages* are dependencies so their 
installation is mandatory. The *recommended packages* will be installed by 
default unless the `--no-install-recommends` is specified or turned off in the 
`/etc/apt/apt.conf`. The *suggested packages* is not installed by default. 


## Check processor architecture

```
dpkg --print-architecture
```

## Date & Time

```
date
date "+%H:%M:%S"
```

### Timezone
```
# set in 
/etc/timezone
```

## SSH & SCP

See `rpi` repository - `connect_ssh_scp.md` file
