# Platform for teaching purpose #

## How to use the simple platform? ##

Make sure that you installed the ArchC package necessary for running this project ( [github.com/jaineshdoshi/ArchC] (https://www.github.com/jaineshdoshi/ArchC) ).
Also if you want to execute more programs on the model, please install the eCos Operating system from [here](http://ecos.sourceware.org/getstart.html) and along with the gnutools for the mips architecture. The script ``sw/buileelf.sh`` can be used to build elf exectables for programs to be run on eCos running on the given platform. 

* To compile and execute the platform:

```bash
make
./platform.x -- sw/hello_custom.elf
```
* When ``waiting for connection on port...`` appearson the current terminal, open a new terminal and type:

```bash
nc localhost 6000
```

