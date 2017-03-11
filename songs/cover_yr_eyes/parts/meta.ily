\gridPutMusic "meta" 1 {
  \global
  %% \mark \markup Intro
  s1*8
  \bar ".|:-||"
  \pageBreak
}

\gridPutMusic "meta" 2 {
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 10))
  %% \mark \markup \box \smallCaps Verse
  \mark \markup \musicglyph #"scripts.segno"
  \set Score.repeatCommands = #'(start-repeat)
  s1*3^\markup \small \italic "ad lib minimal guitar"
  \break
  s1*3
  \pageBreak

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
    s1*8
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
  s4
  \bar "|."
}
