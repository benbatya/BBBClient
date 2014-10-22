#############################################################################
# Targets
#############################################################################
.PHONY: all clean clean-$(OUTPUT_FILE)

# define the target 'all' (it is first, and so, default)
all: $(OUTPUT_FILE)

# Intermediate directory
$(INT_DIR):
	mkdir -p $(INT_DIR)

# Output directory
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

# Final output file
$(OUTPUT_FILE): $(SRC_FILES_LIST) | $(OUT_DIR)

run: $(OUTPUT_FILE)
	scp $(OUTPUT_FILE) root@192.168.7.2:
# ssh root@192.168.7.2 "./SimpleRead" # Don't try to run the executable from inside the build system. I'll debug it from the outside

clean-$(OUTPUT_FILE):
	rm -rf $(OUTPUT_FILE)
	
clean: clean-$(OUTPUT_FILE)