# Platform for teaching purpose #

## How to use the simple platform? ##

Make sure that you installed the ArchC package necessary for running this project ( [github.com/jaineshdoshi/ArchC] (https://www.github.com/jaineshdoshi/ArchC) ).
Also if you want to execute more programs on the model, please install the eCos Operating system from [here](http://ecos.sourceware.org/getstart.html) and along with the gnutools for the mips architecture. The script ``sw/buileelf.sh`` can be used to build elf exectables for programs to be run on eCos running on the given platform. 

## To compile and execute the platform ##

* Download this repository and install the submodules for ArchC and SystemC given in the repository. 

* Open a terminal and navigate to the ```ecos-mips-platform``` folder and type in the followng commands:

```bash
# Update the git submodules, compile and install them 
./builddeps.sh
# sorce the ArchC environment
source env.sh

# Compile the platform
make
# Execute the platform
./platform.x -- sw/hello_custom.elf
```
* When ``waiting for connection on port...`` appears on the current terminal, open a new terminal and type:

```bash
nc localhost 6000
```

* Note that the Interrupt Controller Unit And the Timer Unit has only been routed to the system now. It has to configred for this system.
