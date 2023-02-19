.PHONY: $(BUILD_DIR)/debug-server
$(BUILD_DIR)/debug-server:
	@echo "#!/bin/bash" > $@
	@echo "echo '\nInfo : Listening on port 50000 for gdb connection\n'" >> $@
	@echo "mspdebug $(MSPDEBUG_DEVICE) \"gdb 50000\"" >> $@
	@chmod +x $@

.PHONY: upload
upload: $(BUILD_DIR)/$(TARGET).hex
	@mspdebug -q $(MSPDEBUG_DEVICE) "prog $<"

.PHONY: erase
erase:
	@mspdebug -q $(MSPDEBUG_DEVICE) "erase"

.PHONY: debug-deps
debug-deps: $(BUILD_DIR)/debug-server $(BUILD_DIR)/$(TARGET).hex
