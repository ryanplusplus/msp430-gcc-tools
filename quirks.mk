# Workaround for issue with 9.3.1.2 that causes support files to not be found
__msp430_gcc_toolchain_directory := $(dir $(shell readlink -f `which msp430-elf-gcc`))
CPPFLAGS += -L$(__msp430_gcc_toolchain_directory)../include
CPPFLAGS += -I$(__msp430_gcc_toolchain_directory)../include
