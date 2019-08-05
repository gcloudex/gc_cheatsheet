# Linux

## Misc Notes

- **Application** running in user space can access kernel resources by directly 
invoking Linux system calls or by invoking libc (or glibc)-provided API calls. 
In the latter case, libc (or glibc) invokes a Linux system call. 

- **Drivers** in user space can directly access hardware, can access a Linux 
system call, or can access libc (or glibc) APIs. libc (or glibc) is an example 
library running in user space; there are many more such user space libraries.


## References
- [The Linux Documetation Project](http://www.tldp.org/guides.html)