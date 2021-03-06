# GNU Make workspace makefile autogenerated by Premake

.NOTPARALLEL:

ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),release)
  guetzli_config = release
endif
ifeq ($(config),debug)
  guetzli_config = debug
endif

PROJECTS := guetzli

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

guetzli:
ifneq (,$(guetzli_config))
	@echo "==== Building guetzli ($(guetzli_config)) ===="
	@${MAKE} --no-print-directory -C . -f guetzli.make config=$(guetzli_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f guetzli.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  release"
	@echo "  debug"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   guetzli"
	@echo ""
	@echo "For more information, see http://industriousone.com/premake/quick-start"