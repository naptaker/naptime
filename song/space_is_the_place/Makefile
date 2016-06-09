OPENLILYLIB       = openlilylib
LILYPOND_OPTIONS  = -I $(OPENLILYLIB) -I $(OPENLILYLIB)/ly
LILYPOND_OPTIONS += -djob-count=8 -dmidi-extension=mid

all: space_is_the_place.pdf

%.pdf: %.ly include/*.ily notes/*.ily parts/*.ily
	lilypond $(LILYPOND_OPTIONS) $<
