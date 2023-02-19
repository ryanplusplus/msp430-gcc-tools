ifneq ($(__msp430_gcc_tools_setup_included),Y)
$(error setup.mk must be included before tools.mk)
endif

TOOLCHAIN_PREFIX := msp430-elf-

# Workaround for issue with 9.3.1.2 that causes ld includes to not be found
CPPFLAGS += -L$(dir $(shell which msp430-elf-gcc))../include

include $(__msp430_gcc_tools_path)gcc/tools.mk

include $(__msp430_gcc_tools_path)upload.mk
include $(__msp430_gcc_tools_path)debug.mk
