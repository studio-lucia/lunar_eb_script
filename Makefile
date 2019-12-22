STRINSERT := strinsert
SRCDIR := data
DSTDIR := target
SCRIPT_NAMES = $(patsubst %.txt,%,$(wildcard *.GRP.txt))
SCRIPTS = $(addprefix $(DSTDIR)/,$(SCRIPT_NAMES))

.SECONDEXPANSION:

all: $(SCRIPTS)

$(SCRIPTS): $$(notdir $$@.txt)
	$(STRINSERT) $(notdir $@.txt) $(SRCDIR)/$(notdir $@) $@
