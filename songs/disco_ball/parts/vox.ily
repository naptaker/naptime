\gridPutMusic "vox" 1 \with {
  lyrics = \lyricmode { }
  music = \relative c {
    \new Voice = "solo" {
      \repeat unfold 2 {
        d8 d d d cis4 cis |
        b8 b b b4 b d8 ~ |
        d8 d d d cis4 cis |
      }
      \alternative {
        { b4 r r2 | }
        { R1 | }
      }
    }
  }
}


\gridPutMusic "vox" 2 \with {
  lyrics = \lyricmode { }
  music = \relative c {
    \new Voice = "intro" {
      \repeat unfold 2 {
        d8 d d d cis4 cis |
        b8 b b b4 b d8 ~ |
        d8 d d d cis4 cis |
        b4 r r2 |
      }
    }
  }
}


\gridPutMusic "vox" 3 \with {
  lyrics = \lyricmode { }
  music = {
    R1*8
  }
}


\gridPutMusic "vox" 4 \with {
  lyrics = \lyricmode { }
  music = {
    <<
      {
        \new Voice = "sam" {
          \voiceOne \tieDown
          \repeat unfold 3 {
            \melodySamFull
          }
          \melodySamMain
        }
      } \\ {
        \new Voice = "preston" {
          \voiceTwo \tieUp
          \melodyPrestonFull
          \transpose d fis \melodyPrestonFull
          \melodyPrestonFull
          \transpose d fis \melodyPrestonMain
        }
      }
    >>
    R1 |
  }
}


\gridPutMusic "vox" 5 \with {
  lyrics = \lyricmode { }
  music = {
    \stopStaff \override Staff.StaffSymbol.line-count = #1
    \new Voice = "gym" {
      \bye \improvisationOn
      s1*2
      s2 \hi d8 d4 d8 ~ |
      d8 d4 d8 d d d4 |
      \bye s1*2 |
      s2 \hi d8 d4 d8 |
      d4 d4 d2 |

      \bye s1*2
      s4 s8 \hi d d d d4 |
      d4 d8 d4. \bye s4 |
      s1*2 \hi
    }
  }
}
