ifneq ($(__msp430_gcc_tools_setup_included),Y)
$(error setup.mk must be included before tools.mk)
endif

TOOLCHAIN_PREFIX := msp430-elf-

include $(__msp430_gcc_tools_path)quirks.mk

include $(__msp430_gcc_tools_path)gcc/tools.mk

include $(__msp430_gcc_tools_path)mspdebug.mk
