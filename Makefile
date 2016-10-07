songdirs := $(dir $(wildcard songs/*/README.org))
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

%/main.png: %/main.pdf
	@echo 'Converting $< to PNG ...'
	@gm convert $^ $@

# %/main.pdf: export format = $(patsubst main.%,%,$(notdir $@))
%/main.pdf: export format = pdf
%/main.pdf: %/main.ly include/* %/include/* %/notes/* %/parts/*
	@echo -n 'Engraving $@ ... '
	@$(lilypond) $(defaults) $(includes) \
	-I $(PWD)/$*/include -o $*/main --$(format) $< $(output)
	@echo "\xF0\x9F\x8E\xB5"

# %/main.ly: %/README.org
# 	@mkdir -p $*/include $*/notes $*/parts
# 	@echo 'Tangling $< ...'
# 	@emacsclient -e '(org-babel-tangle-file "$<")' >/dev/null 2>&1

%.wav: %.mid
	@timidity -Ow -o $@ $^

%.flac: export song   = $(notdir $(patsubst %/,%,$(dir $@)))
%.flac: export title  = $(shell echo $(song) | sed 's/_/ /g' | titlecase)
%.flac: %.wav
	@ffmpeg -y -i $^                   \
	-metadata title="$(title)"         \
	-metadata artist="Naptaker"        \
	-metadata album="Naptime"          \
	-metadata date="$(shell date +%Y)" \
	-q:a 3 $@

%.mp3: export song   = $(notdir $(patsubst %/,%,$(dir $@)))
%.mp3: export title  = $(shell echo $(song) | sed 's/_/ /g' | titlecase)
%.mp3: %.wav
	@ffmpeg -y -i $^                   \
	-metadata title="$(title)"         \
	-metadata artist="Naptaker"        \
	-metadata album="Naptime"          \
	-metadata date="$(shell date +%Y)" \
	-c:a libmp3lame -q:a 3 $@
