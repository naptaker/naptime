### Params:
###   - openlilylib (required)
###   - lilypond
###   - lilypond_flags
###   - pdfName
###   - prefix

ifeq (${openlilylib},)
  $(error Please specify path to openlilylib!)
endif

ifeq (${DEBUG},1)
	loglevel = DEBUG
else
	loglevel = BASIC
	output   = >PROGRESS
endif

includes := -I ${openlilylib} -I ${openlilylib}/ly
lilypond_flags ?= \
	--loglevel=${loglevel} \
	-djob-count=8 \
	-dmidi-extension=mid \
	-dno-point-and-click \
	-dpreview \
	-drelative-includes \
	-dwarning-as-error
lilypond ?= lilypond

pdfName ?= main

.PHONY: all install

all: install

install: ${prefix}${pdfName}.pdf

${prefix}${pdfName}.pdf: main.ly notes/* parts/*
	${lilypond} ${lilypond_flags} ${includes} \
		--pdf -o ${prefix}${pdfName} $< ${output}
