# Variables
ICON_TOOL := /Applications/Icon\ Composer.app/Contents/Executables/icontool
ICON_FILE := nyoom-engineering.icon

# export filenames
MACOS_OUT := macos_export.png
IOS_OUT := ios_export.png
WATCHOS_OUT := watchos_export.png

.PHONY: all macos ios watchos clean

# Default target
all: macos ios watchos

# Generate macOS icon preview
macos:
	$(ICON_TOOL) $(ICON_FILE) --export-preview macOS Default 1024 1024 2 $(MACOS_OUT)

# Generate iOS icon preview
ios:
	$(ICON_TOOL) $(ICON_FILE) --export-preview iOS Default 1024 1024 2 $(IOS_OUT)

# Generate watchOS icon preview
watchos:
	$(ICON_TOOL) $(ICON_FILE) --export-preview watchOS Default 1024 1024 2 $(WATCHOS_OUT)

# Clean generated previews
clean:
	rm -f $(MACOS_OUT) $(IOS_OUT) $(WATCHOS_OUT) 