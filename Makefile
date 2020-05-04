prefix ?= docs

.PHONY: all
all:
	@ find $$(nix-build --no-out-link) -name '*.pdf' | \
		xargs install -m644 -Dt ${prefix}
