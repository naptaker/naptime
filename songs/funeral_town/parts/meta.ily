\gridPutMusic "meta" 1 {
  \global
  \override Score.VerticalAxisGroup.staff-staff-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 0)
       (padding . 1)
       (stretchability . 10))
  s1*4 \break
  s1*4 \break
}

\gridPutMusic "meta" 2 {
  \mark \markup { \musicglyph "scripts.segno" }
  \repeat volta 3 {
    \repeat unfold 4 { s1 \noBreak } \break
    \repeat unfold 3 { s1 \noBreak }
    s2
    \once \override Score.RehearsalMark.X-offset = #7
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \mark \markup \italic 3x
    s2
  }
  \pageBreak
}

\gridPutMusic "meta" 3 {
  \once \override Score.RehearsalMark.X-offset = #5
  \mark \markup \rounded-box "BM3"
  s1*6 \bar "||" \break
}

\gridPutMusic "meta" 4 {
  \once \override Score.RehearsalMark.X-offset = #5
  \mark \markup \rounded-box "BP"
  s1*4 \bar "||" \break
  \once \override Score.RehearsalMark.X-offset = #5
  \mark \markup \rounded-box "PC"
  s1*4 \bar "||" \break \noPageBreak
}

\gridPutMusic "meta" 5 {
  \footnote \markup \rotate #180 \huge "†" #'(0 . 0.1)
  \markup {
    \line {
      \rotate #180 "†" \null "BM1 → BP → PC"
      "⇒ BM2 → BP → PC"
      "⇒ BM1 → BP → Bridge →" \raise #1 \tiny \musicglyph "scripts.segno" "→ … → Fine"
    }
%{
    \left-column {
      %% \line { \rotate #180 "†" "BM1 → BP → PC" }
      %% "↳ BM2 → BP → PC"
      %% \line { "↳ BM1 → BP → Bridge →" \raise #1 \tiny \musicglyph "scripts.segno" "→ … → Fine" }
      %% %% "↳ BM3 → BP → PC"
      %% %% "↳ BM1 → … → Fine"
    }
%}
  }
  \once \override Score.RehearsalMark.X-offset = #5
  \mark \markup \rounded-box "BM1"
  s1*2
  \bar "||" \noBreak
}

\gridPutMusic "meta" 6 {
  \mark \markup \rounded-box "BM2"
  s1*4 \bar "||" \pageBreak
}

\gridPutMusic "meta" 7 {
  \mark \markup \rounded-box "Bridge"
  s1*5
  s2
  \once \override Score.RehearsalMark.extra-offset = #'(15 . -33)
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.S. al Fine"
  s2
  \bar "||" \noBreak
}

\gridPutMusic "meta" 8 {
  s1*2 \bar "|."
}
