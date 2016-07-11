%% \include "articulate.ly"

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

%% Basically \hideNotes, except deliberately excluding TabNoteHead
hideNotesNotTabStaff = {
  %% hide notes, accidentals, etc.
  \override Dots.transparent = ##t
  \override NoteHead.transparent = ##t
  \override NoteHead.no-ledgers = ##t
  %% assume that any Beam inherits transparency from its parent Stem
  \override Stem.transparent = ##t
  \override Accidental.transparent = ##t
  \override Rest.transparent = ##t
  %% \override TabNoteHead.transparent = ##t

  %% Omit Slurs and Ties too
  \omit Staff.Slur \omit Staff.Tie
}

stopStaffNotTabStaff = {
  \stopStaff
  \omit Staff.Clef \omit Staff.ClefModifier
  \omit Staff.TimeSignature
  \omit Staff.BarLine

  \override Staff.BarLine.break-visibility = #all-invisible

  #(context-spec-music #{
                         \startStaff \undo \omit Staff.Clef
                         \undo \omit Staff.BarLine
                         \revert Staff.BarLine.break-visibility
                       #}
                       'TabStaff)
  \hideNotesNotTabStaff
}

restartStaff = {
  \undo \omit Staff.BarLine

  \undo \omit Staff.Clef \undo \omit Staff.ClefModifier

  %% This is awesomely bad...
  \undo \omit Staff.Slur \undo \omit Staff.Tie
  \omit TabStaff.Slur \omit TabStaff.Tie

  \undo \omit Staff.TimeSignature
  \revert Staff.BarLine.break-visibility

  %% This is terrible too...
  \once \override Staff.BarLine.break-visibility = #all-invisible
  \revert TabStaff.BarLine.break-visibility

  \startStaff \unHideNotes
  %% \once \override Staff.BarLine.break-visibility = #end-of-line-invisible
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
