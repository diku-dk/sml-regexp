SMLPKG ?= smlpkg

.PHONY: all
all: lib/github.com/diku-dk/sml-setmap
	$(MAKE) -C lib/github.com/diku-dk/sml-regexp all

.PHONY: test
test: lib/github.com/diku-dk/sml-setmap
	$(MAKE) -C lib/github.com/diku-dk/sml-regexp test

.PHONY: clean
clean:
	$(MAKE) -C lib/github.com/diku-dk/sml-regexp clean
	rm -rf MLB *~ .*~

.PHONY: realclean
realclean:
	$(MAKE) clean
	rm -rf lib/github.com/diku-dk/sml-setmap

lib/github.com/diku-dk/sml-setmap:
	$(SMLPKG) sync
