\gridPutMusic "meta" 1 {
  \global
  \mark Intro
  \repeat volta 2 {
    s1*4
  }
  \break
}

\gridPutMusic "meta" 2 {
  \mark Arp
  \repeat volta 2 {
    s1*4
  }
  \break
}

\gridPutMusic "meta" 3 {
  \mark Groove
  \repeat volta 4 {
    s1*3
  }
  \alternative {
    %% 1-3.
    { s1 }
    %% 4.
    { s1 }
  }
  \bar "||"
  \pageBreak
}

\gridPutMusic "meta" 4 {
  \mark Bridge
  \repeat volta 2 {
    s1*4
  }
  \break
}

\gridPutMusic "meta" 5 {
  \mark "Fuzz Bridge"
  s1*4 \noBreak
  s1*4 \pageBreak
}

\gridPutMusic "meta" 6 {
  \mark "Double Time"
  s1*8 \break
}

\gridPutMusic "meta" 7 {
  \tempo 4 = 69
  \mark Stoner
  s1*7
}

\gridPutMusic "meta" 8 {
  %% \mark 8
  s1 \pageBreak
}

\gridPutMusic "meta" 9 {
  \Tempo
  \mark Ending
  s1*8
  \repeat volta 2 {
    s1*8
  }
  \bar "|."
}
