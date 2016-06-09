\include "articulate.ly"

fuzzOn     = \set midiInstrument = #"overdriven guitar"
fuzzOff    = \set midiInstrument = #"electric guitar (clean)"

xOn        = \deadNotesOn
xOff       = \deadNotesOff

fretMagic  = {
  \once \override TabNoteHead #'transparent = ##t
  \once \override NoteHead #'transparent = ##t
  \once \override Stem #'transparent = ##t
  \once \override Flag #'transparent = ##t
  \once \override NoteHead #'no-ledgers = ##t
  \once \override Glissando #'(bound-details left padding) = #0.3
}

voltaFirst = \markup { 1. \text \italic { play 1x and 4x only } }

%% http://lsr.di.unimi.it/LSR/Item?id=198
%% see also http://lsr.di.unimi.it/LSR/Item?id=190
theCoda    = {
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.font-size = #6
  \mark \markup { \musicglyph #"scripts.coda" }
}

%% http://lsr.dsi.unimi.it/LSR/Snippet?id=664
toCoda     = {
  %% the align part
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'direction = #DOWN
  %% prefered size
  \once \override Score.RehearsalMark #'font-size = #-2
  \mark \markup {
    \center-column {
      \concat { \lower #1 { "D.S. al  " } { \musicglyph #"scripts.coda" } }
      \italic { \lower #1 { \small "play both endings" } }
    }
  }
}

breakingCoda = {
  \break
  \once \override Score.RehearsalMark.font-size = #6
  \mark \markup { \musicglyph #"scripts.coda" }
}

#(set-global-staff-size 11)
#(set-default-paper-size "letter" 'portrait)

#(set! %load-path `("scheme" ,@%load-path))
#(load-from-path "custom-line-breaks-engraver.scm")
#(load-from-path "maybe-rhythmic-staff.scm")
#(load-from-path "drums.scm")
#(load-from-path "parenthesize.scm")
