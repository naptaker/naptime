\gridPutMusic "meta" 1 {
  \global s1*4 \break
}


\gridPutMusic "meta" 2 {
  \mark \markup { \musicglyph "scripts.segno" \musicglyph "scripts.segno" }
  s1*4 | \break
  s1*4 | \break
  s1*4 | \break
  s1*3 |
  s4 s s8 \break
}


\gridPutMusic "meta" 3 {
  \mark \markup { \musicglyph "scripts.segno" }
  s1*5 \pageBreak
}


\gridPutMusic "meta" 4 {
  \mark \markup { \musicglyph "scripts.segno" \musicglyph "scripts.segno" \musicglyph "scripts.segno" }
  \set Score.repeatCommands = #'(start-repeat)
  s1*4
  %% \set Score.repeatCommands = #'((volta "1, 3."))
  s1
  %% \set Score.repeatCommands = #'((volta "2."))
  s1
  %% \set Score.repeatCommands = #'((volta #f) (volta "4.") end-repeat)
  s2 s8
  \bar "||"
  \once \override Score.RehearsalMark.extra-offset = #'(0 . -19)
  \mark "D.S."
}


\gridPutMusic "meta" 5 {
  s8 s4 |
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.extra-offset = #'(0 . -19)
  \mark "Fine" \bar "||" \break

  s1*2 |
  \once \override Score.RehearsalMark.extra-offset = #'(0 . -8)
  \mark \markup "D.S.S."
  \bar "||"
}
