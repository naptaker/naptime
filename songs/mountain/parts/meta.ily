\gridPutMusic "meta" 1 {
  \global
  s1*8 \bar "||" \break
  s1*4 s1 \break
}

\gridPutMusic "meta" 2 {
  \set Score.repeatCommands = #'(start-repeat)
  s1 s2
  \bar "!"
  \set Score.repeatCommands = #'((volta "1, 3"))
  s2
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  s2
  \set Score.repeatCommands = #'((volta #f) (volta "4") end-repeat)
  s4
  \once \override Score.RehearsalMark.X-offset = #-3.5
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.C. al Fine"
  s4
  \set Score.repeatCommands = #'((volta #f))
  \bar "||"
  \break
}

\gridPutMusic "meta" 3 {
  \bar ".|:"
  \repeat volta 4 {
    s1 s2 s4. s8
  }
  \fourX
}

\gridPutMusic "meta" 4 {
  s1*4 \fourX \break
}

\gridPutMusic "meta" 5 {
  s1*8
  s1*8 \break
}

\gridPutMusic "meta" 6 {
  s1*8 \break
}

\gridPutMusic "meta" 7 {
  s1*5 \bar "|."
}
