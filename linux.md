# Debian OS

Debian is an operating system and currently use the Linux kernel or the FreeBSD kernel.
Ubuntu is based on Debian; Linux Mint is based on Ubuntu.
Raspbian is also based on Debian.


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

Example of the content of `/etc/apt/sources.list`
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

### Debian Repository

- https://aur.archlinux.org/packages/


### List of apt repositories
```
grep ^[^#] /etc/apt/sources.list /etc/apt/sources.list.d/*
```

### How apt works

Refs:
- https://unix.stackexchange.com/questions/377736/how-does-apt-get-really-work

### List of installed packages

```
dpkg -l
```

Refs:
- https://www.howtoforge.com/linux-dpkg-command/


## Check processor architecture

```
dpkg --print-architecture
```