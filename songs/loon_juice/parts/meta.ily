\gridPutMusic "meta" 1 {
 \global
  \mark Intro
  s1*6
  \break
}


\gridPutMusic "meta" 2 {
  \mark \markup { \musicglyph #"scripts.segno" }
  s1*3
  s2
  #(context-spec-music #{
     \new ChordNames {
       s2 \tweak extra-offset #'(-7.9 . -15)
       \mark \markup \fontsize #-7 \sans alternate
     }
     #} 'ChordNames)
  s1*2
  \break
}


\gridPutMusic "meta" 3 {
  \mark Chorus
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
  \pageBreak
}


\gridPutMusic "meta" 4 {
  \once \override Score.MetronomeMark.X-offset = #-9.5
  \tweak X-offset #-1 \mark Jam
  \tempo 4 = 82
  \omit Score.FretBoard
  \override Score.ChordName.extra-offset = #'(0 . -5)

  s1*3
  \tweak X-offset #6.5 \mark MegaMan
  s1
  \bar ":|."
  \break
}


\gridPutMusic "meta" 5 {
  \mark Reprise
  \tempo 4 = 192
  s1*4 \break
  s1*2
}


\gridPutMusic "meta" 6 {
  s4
  \bar "|."
}
