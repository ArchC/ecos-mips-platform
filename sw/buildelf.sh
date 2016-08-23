# Set path to eCos kernel
PLATFORM="/home/jaineshdoshi/ecos/ecos-cacheless"

mipsisa32-elf-gcc-4.3.2 -g -O0 -nostdlib             \
        -I ${PLATFORM}/install/include/        \
        -L ${PLATFORM}/install/lib/            \
        -T ${PLATFORM}/install/lib/target.ld   \
      	hello_custom.c -msoft-float -o hello_custom.elf
