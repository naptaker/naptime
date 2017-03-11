\gridPutMusic "meta" 1 {
 \global
  \mark 1
  s1*6
  \break
}

\gridPutMusic "meta" 2 {
  \mark \markup { \musicglyph #"scripts.segno" }
  s1*6
  \pageBreak
}

\gridPutMusic "meta" 3 {
  \mark 3
  \set Score.repeatCommands = #'(start-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta "1, 3") end-repeat)
  s1*2
  \set Score.repeatCommands = #'((volta #f) (volta "2, 4") end-repeat)
  s1
  s2.
  \once \override Score.RehearsalMark.X-offset = #-6
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.S. al Fine"
  s4
  \set Score.repeatCommands = #'((volta #f))
  \bar ":|.:"
  \break
}

\gridPutMusic "meta" 4 {
  \mark 4
  \tempo 4 = 82
  s1*4
  \bar ":|."
  \pageBreak
}

\gridPutMusic "meta" 5 {
  \mark 5
  \tempo 4 = 192
  s1*4 \break
  s1*2
  % \break
}

\gridPutMusic "meta" 6 {
  s4
  \bar "|."
}
