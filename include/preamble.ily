fuzzOn     = \set midiInstrument = #"overdriven guitar"
fuzzOff    = \set midiInstrument = #"electric guitar (clean)"

xOn  = {
  \deadNotesOn
  \set midiInstrument = #"electric guitar (muted)"
}
xOff = {
  \deadNotesOff
  \set midiInstrument = #"electric guitar (clean)"
}

%% Basically \hideNotes, except deliberately excluding TabNoteHead
hideNotesNotTabStaff = {
  %% hide notes, accidentals, etc.
  \hide Dots
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
  %% assume that any Beam inherits transparency from its parent Stem
  \hide Stem
  \hide Accidental
  \hide Rest
  \hide MultiMeasureRest
  \hide Script

  %% Unlike \hideNotes, don't hide TabNoteHead
  %% \hide TabNoteHead

  %% Omit Slurs and Ties too
  \omit Staff.Slur \omit Staff.Tie
}

stopStaffNotTabStaff = {
  \stopStaff
  \omit Staff.Clef \omit Staff.ClefModifier
  \omit Staff.TimeSignature

  #(context-spec-music #{ \startStaff \undo \omit Staff.Clef #} 'TabStaff)
  \hideNotesNotTabStaff
}

restartStaff = {
  \once \omit Staff.BarLine
  #(context-spec-music #{ \undo \omit Staff.BarLine #} 'TabStaff)
  \undo \omit Staff.Clef \undo \omit Staff.ClefModifier

  %% This is awesomely bad...
  \undo \omit Staff.Slur \undo \omit Staff.Tie
  \omit TabStaff.Slur \omit TabStaff.Tie

  \undo \omit Staff.TimeSignature

  \startStaff \unHideNotes
  \undo \hide MultiMeasureRest
  \undo \hide Script
  %% \once \override Staff.BarLine.break-visibility = #end-of-line-invisible
}

gridGetCellMusic =
#(define-music-function (parser location part segment) (string? number?)
   (check-grid)
   (check-coords part segment)
   (cell:music (get-music-cell part segment)))
