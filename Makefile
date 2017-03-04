songs := $(notdir $(wildcard songs/*))

ifeq (${DEBUG},1)
	lilypond = lilypond -V
	output   =
else
	lilypond = lilypond -dlog-file=$(basename $<)
	output   = >$*/PROGRESS
endif

includes := -I ${PWD}/openlilylib -I ${PWD}/openlilylib/ly -I ${PWD}/include
lilypond_flags ?= \
	-djob-count=8 \
	-dmidi-extension=mid \
	-dno-point-and-click \
	-dpreview \
	-drelative-includes \
	-dwarning-as-error \
	${includes}
lilypond += ${lilypond_flags}

.SUFFIXES: .mid .wav .pdf .png
.mid.wav:
	@timidity -Ow -o $@ $^
.pdf.png:
	@echo 'Converting $< to PNG ...'
	@gm convert $^ $@

all: ${songs}

loon_juice: songs/loon_juice/main.pdf
disco_ball: songs/disco_ball/main.pdf
cover_yr_eyes: songs/cover_yr_eyes/main.pdf
halfway_haus: songs/halfway_haus/main.pdf
smoked_all_my_smokes: songs/smoked_all_my_smokes/main.pdf
mountain: songs/mountain/main.pdf
space_is_the_place: songs/space_is_the_place/main.pdf

%/main.pdf: %/main.ly include/* %/include/* %/notes/* %/parts/*
	@echo -n 'Engraving $@ ... '
	@${lilypond} -o $* --pdf $< $(output)
	@echo "\xF0\x9F\x8E\xB5"

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
