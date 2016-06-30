songdirs := $(dir $(wildcard songs/*/main.ly))
# songs    := $(notdir $(patsubst %/,%,$(songdirs)))
pdfs     := $(addsuffix main.pdf,$(songdirs))

ifeq ($(DEBUG),1)
	lilypond = lilypond -V
	output   =
else
	lilypond = lilypond -dwarning-as-error -dlog-file=$*/main
	output   = >$*/PROGRESS 2>/dev/null
endif

includes := -I $(PWD)/openlilylib -I $(PWD)/openlilylib/ly -I $(PWD)/include
defaults  = -djob-count=8 -dmidi-extension=mid

all: $(pdfs)

%/main.pdf: %/main.ly include/* %/include/* %/notes/* %/parts/*
	@echo -n 'Engraving $@ ... '
	@$(lilypond) $(defaults) $(includes) \
	-I $(PWD)/$*/include -o $*/main $< $(output)
	@echo "\xF0\x9F\x8E\xB5"

%/main.ly: %/README.org
	@mkdir -p $*/include $*/notes $*/parts
	@emacsclient -e '(org-babel-tangle-file "$<")' >/dev/null 2>&1
