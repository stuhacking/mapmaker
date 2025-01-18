# Build any images under source/ and put the corresponding output
# in out/

SOURCE_DIR := source
OUT_DIR := out

INPUTS := $(wildcard $(SOURCE_DIR)/*.txt)
OUTPUTS := $(INPUTS:$(SOURCE_DIR)/%.txt=$(OUT_DIR)/%.png)

$(OUT_DIR)/%.png: $(SOURCE_DIR)/%.txt
	@echo "Rendering: $<"
	@script/render_sprites -o $@ $<

all: $(OUTPUTS)

clean:
	@rm -rf out
.PHONY: clean
