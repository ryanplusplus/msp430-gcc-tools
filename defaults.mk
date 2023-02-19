__msp430_gcc_tools_defaults_path := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

ASFLAGS := \
  -mmcu=$(MCU) \
  -g2 \

CPPFLAGS := \
  -mmcu=$(MCU) \
  -g \
  -g2 \
  -Os \
  -fdata-sections \
  -ffunction-sections \
  -Wall \
  -Wextra \
  -Werror \
  -Wfatal-errors \
  -Wcast-qual \
  -pedantic \

CFLAGS := \
  -std=c11 \

CXXFLAGS := \
  -fno-rtti \
  -fno-exceptions \
  -fno-unwind-tables \
  -fno-non-call-exceptions \
  -fno-use-cxa-atexit \
  -Weffc++ \
  -std=c++11 \

LDFLAGS := \
  -Wl,-Og \
  -Wl,--gc-sections \
  -Wl,--relax \
  -Wl,-Map=$(BUILD_DIR)/$(TARGET).map \
