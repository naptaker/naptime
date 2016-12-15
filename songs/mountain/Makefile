INCLUDES := -I ../../openlilylib -I ../../openlilylib/ly -I ../../include -I include 

guitar-score.pdf: parts/guitar-score.ily \
notes/guitar*.ily \
parts/guitar*.ily \
parts/chords*/ily \
include/*.ily
	lilypond ${INCLUDES} $<
