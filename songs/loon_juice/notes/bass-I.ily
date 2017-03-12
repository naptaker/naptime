\once \override Staff.InstrumentName.extra-offset = #'(41 . 0)
\repeat volta 2 {
  \bye R1 |
  r2 \bar "" \hi \once \set Staff.forceClef = ##t
  \once \undo \omit Staff.TimeSignature d4 f |
}
\alternative {
  { \bye R1 |
    r2 \hi des4 ges, | }
  { bes4 8 a bes4      aes8 a   |
    bes8  d a des   c   aes  g4  | }
}
