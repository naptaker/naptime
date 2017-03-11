\gridPutMusic "meta" 1 {
  \global
  %% \mark \markup Intro
  \override Score.ChordName.extra-offset = #'(0 . -7.24)
  \override Score.FretBoard.extra-offset = #'(0 . -7.24)
  %% TODO: Tempo marking
  s1*4
  \revert Score.ChordName.extra-offset
  \revert Score.FretBoard.extra-offset
  s1*4
  \bar ".|:-||"
  \break
}

\gridPutMusic "meta" 2 {
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 10))
  %% \mark \markup \box \smallCaps Verse
  \mark \markup \musicglyph #"scripts.segno"
  \set Score.repeatCommands = #'(start-repeat)
  s1*6^\markup \small \italic "ad lib minimal guitar"
  \break

  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 75))
  \set Score.repeatCommands = #'((volta "1.") end-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta "2, 3") end-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta "4.") end-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta #f))
  \bar ".|:-||" %% NOTE: write this shit down somewhere... wtf
  \pageBreak
}

\gridPutMusic "meta" 3 {
  %% \mark \markup \box \smallCaps Chorus
  \repeat volta 2 {
    s1*4 \break
    s1*4 \break
  }
  \break
}

\gridPutMusic "meta" 4 {
  %% \mark "Bridge / Outro"
  s1*7
  s2.
  \once \override Score.RehearsalMark.X-offset = #-7.5
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.S. al Fine"
  s4
  \bar "||"
}

\gridPutMusic "meta" 5 {
  \override Score.ChordName.extra-offset = #'(0 . -7.24)
  \override Score.FretBoard.extra-offset = #'(0 . -7.24)
  s4
  \bar "|."
}
