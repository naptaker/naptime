prefix ?= docs

.PHONY: all
all:
	@ find -L $$(nix-build --no-out-link) -maxdepth 1 -type f | \
		xargs install -m644 -Dt ${prefix}
