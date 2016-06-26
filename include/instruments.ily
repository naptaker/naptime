\version "2.19.24"

\include "templates/predefined-instruments/context-creating-function.ily"

\newInstrument "Vox"
\with {
  instrumentName = "Vocals"
  %% shortInstrumentName = "V"
  \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t
  \clef F
}
"default"

\newInstrument "Guitar"
\with {
  instrumentName = "Guitar"
  %% shortInstrumentName = "G"
  \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t
  \override StringNumber      #'stencil      = ##f
  \clef "treble_8"
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
  \override StringNumber      #'stencil      = ##f
  \clef "bass_8"
}
\with {
  \consists "Staff_performer"
  midiInstrument = "electric bass (finger)"
}
"default"
