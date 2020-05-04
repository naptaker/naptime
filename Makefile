.PHONY: all
all:
	@ find $$(nix-build --no-out-link) -name '*.pdf' | \
		xargs install -m644 -Dt docs


docs/%.pdf: songs/%
	@ nix-build --no-out-link --argstr songs "$*" | \
		xargs -Iout install -m644 out/$*.pdf $@
