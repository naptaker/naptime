OPENLILYLIB      ?= ../../openlilylib
LILYPOND_OPTIONS  = -I $(OPENLILYLIB) -I $(OPENLILYLIB)/ly
LILYPOND_OPTIONS += -I include -I ../../include
LILYPOND_OPTIONS += -djob-count=8 -dmidi-extension=mid

all: main.pdf

%.pdf: %.ly include/*.ily notes/*.ily parts/*.ily
	@lilypond $(LILYPOND_OPTIONS) $<
