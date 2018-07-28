### Params:
###   - openlilylib (required)
###   - lilypond
###   - lilypondFlags
###   - job-count
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
lilypondFlags ?= \
	--loglevel=${loglevel} \
	-djob-count=${job-count} \
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
	${lilypond} ${lilypondFlags} ${includes} \
		--pdf -o ${prefix}${pdfName} $< ${output}
