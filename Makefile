rev ?= 2352d46904d7f5ba0b81c2dd3dfb058905f0551e


.PHONY: all
all:
	@ find $$(nix-build --no-out-link) -name '*.pdf' | \
		xargs install -m644 -Dt docs


docs/%.pdf: songs/%
	@ nix-build --no-out-link --argstr songs "$*" | \
		xargs -Iout install -m644 out/$*.pdf $@


.PHONY: nixpkgs-src.json
nixpkgs-src.json:
	@ bin/nixpkgs-rev "${rev}"
