rev ?= cd960b965f2587efbe41061a4dfa10fc72a28781


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
