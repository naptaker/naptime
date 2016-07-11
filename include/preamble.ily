fuzzOn     = \set midiInstrument = #"overdriven guitar"
fuzzOff    = \set midiInstrument = #"electric guitar (clean)"

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
  \override MultiMeasureRest.transparent = ##t
  \override Script.transparent = ##t

  %% Unlike \hideNotes, don't hide TabNoteHead
  %% \override TabNoteHead.transparent = ##t

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
  \revert MultiMeasureRest.transparent
  \revert Script.transparent
  %% \once \override Staff.BarLine.break-visibility = #end-of-line-invisible
}
