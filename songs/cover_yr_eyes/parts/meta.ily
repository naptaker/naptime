\gridPutMusic "meta" 1 {
  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 10))
  %% \mark \markup Intro
  \global
  #(let ((y -10.65))
     #{
       \temporary \override Score.ChordName.extra-offset = #`(0 . ,y)
       \temporary \override Score.MetronomeMark.Y-offset = #(/ y 2)
     #})
  s1*4
  \revert Score.ChordName.extra-offset
  \revert Score.MetronomeMark.Y-offset
  s1*4
  \bar ".|:-||"
  \break
}


\gridPutMusic "meta" 2 {
  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 60))
  %% \mark \markup \box \smallCaps Verse
  \mark \markup \musicglyph #"scripts.segno"
  \set Score.repeatCommands = #'(start-repeat)
  s1*6^\markup \small \italic "ad lib minimal guitar"
  \break

  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 120))
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
  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 5))
  %% \mark \markup \box \smallCaps Chorus
  \repeat volta 2 {
    s1*4 \break
    \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 70))
    s1*4 \break
  }
  \break
}


\gridPutMusic "meta" 4 {
  %% \mark "Bridge / Outro"
  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 125))
  s1*7
  s2.
  \once \override Score.RehearsalMark.X-offset = #-7.5
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.S. al Fine"
  s4
  \bar "||"
}


\gridPutMusic "meta" 5 {
  #(let ((y -10.65))
     #{
       \override Score.ChordName.extra-offset = #`(0 . ,y)
     #})
  s4
  \bar "|."
}
