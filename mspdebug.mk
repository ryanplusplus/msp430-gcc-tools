.PHONY: upload
upload: $(BUILD_DIR)/$(TARGET).hex
	@mspdebug -q $(MSPDEBUG_DEVICE) "prog $<"

.PHONY: erase
erase:
	@mspdebug -q $(MSPDEBUG_DEVICE) "erase"
