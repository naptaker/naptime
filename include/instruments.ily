\version "2.19.24"

\include "templates/predefined-instruments/context-creating-function.ily"

\newInstrument "Guitar"
\with {
  instrumentName = "Guitar"
  %% shortInstrumentName = "G"
  \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t
  \clef "G_8"
}
\with {
  \consists "Staff_performer"
  midiInstrument = "electric guitar (clean)"
}
"default"

\newInstrument "Bass"
\with {
  instrumentName = "Bass"
  %% shortInstrumentName = "B"
  \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t
  \clef F
  \transposition c
}
\with {
  \consists "Staff_performer"
  midiInstrument = "electric bass (finger)"
}
"default"
