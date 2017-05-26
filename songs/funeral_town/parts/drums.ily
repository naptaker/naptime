\gridPutMusic "drums up" 1 \drummode {
  R1*4
  cymc4 <toml tomml> <toml tomml> <toml tomml> |
  <toml tomml>4 <toml tomml> <toml tomml> <toml tomml> |
  <tomml cymr>4 <toml tomml> <toml tomml> <toml tomml> |
  \tuplet 3/2 4 { sn8 sn sn tomml tomml tomml \repeat unfold 6 { toml } } |
}

\gridPutMusic "drums down" 1 \drummode {
  R1*4
  \repeat unfold 4 {
    \repeat unfold 4 { bd4 } |
  }
}

\gridPutMusic "drums up" 2 \drummode {
  <<
    \new DrumVoice {
      \voiceOne
      \slurDown
      cymc4 <toml sn> toml <toml sn>8 \flam sn |
      toml4 toml s s |
      s4 <toml sn> toml <toml sn>8 \flam sn |
      toml4 toml toml s |

      s4 <toml sn> toml s |
      toml4 s toml <toml sn>8 \flam sn |
      cymr4 <toml sn> toml <toml sn>8 \flam sn |
      s4 s s \tuplet 3/2 4 { toml8 toml toml } |
    }
  \\
    \new DrumVoice {
      \voiceOneStyle \voiceOne
      \stemUp
      \slurDown
      s1 |
      s4 sn s cymr |
      cymc4 s s s |
      s4 sn s cymr |

      cymc4 s s sn |
      s4 sn s s |
      s1 |
      \tuplet 3/2 4 { sn8 sn sn tomml tomml tomml toml toml toml } s4 |
    }
  \\
    \new DrumVoice {
      \voiceThree
      \voiceTwoStyle
      \override Slur.color = #blue
      \slurDown
      s1 |
      s4 sn8 \flam sn cymr4 cymc |
      cymr4 s s s |
      s4 sn8 \flam sn cymr4 cymc |

      cymr4 s s sn8 \flam sn |
      s4 sn8 \flam sn s4 s |
      s1 |
      \omit TupletNumber
      \tuplet 3/2 4 { toml8 toml sn sn sn sn tomml tomml tomml } s4 |
      \undo \omit TupletNumber
    }
  \\
    \new DrumVoice {
      \voiceFour
      \voiceThreeStyle
      \stemUp
      cymr4 cymr cymr cymr |
      cymr4
      \once \override NoteColumn.force-hshift = #2 cymr
      cymr
      \once \override NoteColumn.force-hshift = #2 cymc |
      cymr4 cymr cymr cymr |
      <<
        { s1 }
        \new DrumStaff \with {
          \remove "Time_signature_engraver"
          drumStyleTable = #preston-drums
          %% alignAboveContext = #"drums"
          fontSize = #-3
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #(magstep -3)
          firstClef = ##f
        } {
          \voiceThreeStyle
          \override Slur.color = #green
          \repeat percent 4 { cymr16 cymr \flam sn8 } |
        }
      >>

      cymc4 cymr cymr cymr |
      cymr4 cymr cymr cymr |
      cymc4 cymr cymr cymr |
      <<
        { s1 }
        \new DrumStaff \with {
          \remove "Time_signature_engraver"
          drumStyleTable = #preston-drums
          %% alignAboveContext = #"drums"
          fontSize = #-3
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #(magstep -3)
          firstClef = ##f
          \voiceThreeStyle
          \override Slur.color = #green
        }
        <<
          {
            cymc4 <sn cymr> cymr <sn cymr>16 cymr \flam sn8 |
          }
        \\
          {
            bd4 bd bd bd |
          }
        >>
      >>
    }
  >>
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat volta 3 {
    bd4 bd bd bd |
    bd4 bd <bd toml> <bd sn> |
    bd4 bd bd bd |
    bd4 bd bd <bd sn> |

    bd4 bd bd <toml bd> |
    bd4 <bd toml> bd bd |
    bd4 bd bd bd |
    bd4 bd bd bd |
  }
}

%{
\gridPutMusic "drums up" 4 \drummode {
  cymr4 <sn cymr> cymr <sn cymr>8 sn:16 |
  cymr4 <sn cymr>8 sn:16 cymr4 <sn cymc> |
  cymr4 <sn cymr> cymr <sn cymr>8 sn:16 |
  \repeat unfold 4 { cymr16 cymr sn8:16 } |

  cymc4 <sn cymr> cymr <sn cymr>8 sn:16 |
  cymr4 <sn cymr>8 sn:16 cymr4 <sn cymr>8 sn:16 |
  cymc4 <sn cymr> cymr <sn cymr>16 cymr sn8:16 |
}

%}

\gridPutMusic "drums up" 3 \drummode {
  cymr1 |
  cymc2 cyms |
  cymc1 |
  cyms2 cymc |
  cyms1 |
  cymc2 cyms |
}

\gridPutMusic "drums down" 3 \drummode {
  bd4 bd bd bd |
  bd4 bd <bd sn> bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd s |
}


\gridPutMusic "drums up" 4 \drummode {
  cymc4 <sn hhc> hhc << { hhc4 } \\ { sn8 s } >> |
  hhc4 <sn hhho> <toml sn> <toml sn> |
  cymc4 <sn hhc> hhc << { hhc4 } \\ { sn8 s } >> |
  hhc4 hhc << { hhc4 hhho } \\ { sn8 s sn s } >> |

  <sn cymc>4 <sn hhc> <sn hhc> <sn hhc> |
  \repeat unfold 2 {
    \repeat unfold 4 { <sn hhc>4 }
  }
  <sn hhc>4 <sn hhc> <sn hhc> <sn hhho> |
}

\gridPutMusic "drums down" 4 \drummode {
  bd4 s s s8 bd ~ |
  bd8 bd4 bd8 bd bd bd bd |
  bd4 s bd s8 bd ~ |
  bd8 bd4 bd8 s bd s bd8 |

  bd8 bd \repeat unfold 3 { s8 bd } |
  \repeat unfold 3 {
    \repeat unfold 4 { s8 bd } |
  }
}


\gridPutMusic "drums up" 5 \drummode {
  cymr1 |
  cymc2 cyms |
  % cymc1 |
  % hho2 cymc |
  % hho1 |
  % cymc2 hho |
}

\gridPutMusic "drums down" 5 \drummode {
  bd4 bd bd bd |
  bd4 bd <bd sn> bd |
}


\gridPutMusic "drums up" 6 \drummode {
  cymr1 |
  cymc2 cyms |
  cymc1 |
  hho2 cymc |
}

\gridPutMusic "drums down" 6 \drummode {
  bd4 bd bd bd |
  bd4 bd <bd sn> bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
}
