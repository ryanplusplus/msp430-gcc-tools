__msp430_gcc_tools_setup_included := Y

__msp430_gcc_tools_path := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

include $(__msp430_gcc_tools_path)utils/utils.mk
