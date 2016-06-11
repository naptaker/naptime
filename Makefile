songdirs := $(dir $(wildcard songs/*/main.ly))
# songs    := $(notdir $(patsubst %/,%,$(songdirs)))
pdfs     := $(addsuffix main.pdf,$(songdirs))

ifeq ($(DEBUG),1)
	lilypond = lilypond -V
else
	lilypond = lilypond -dwarning-as-error
endif

includes := -I $(PWD)/openlilylib -I $(PWD)/openlilylib/ly -I $(PWD)/include
defaults  = -djob-count=8 -dmidi-extension=mid -dlog-file=$*/main

all: $(pdfs)

%/main.pdf: %/main.ly include/* %/include/* %/notes/* %/parts/*
	@echo $@
	@$(lilypond) $(defaults) $(includes) -I $(PWD)/$*/include -o $*/main $<
	@echo
