.PHONY: upload
upload: $(BUILD_DIR)/$(TARGET).elf
	@mspdebug -q $(MSPDEBUG_DEVICE) "load $<"

.PHONY: erase
erase:
	@mspdebug -q $(MSPDEBUG_DEVICE) "erase"
