\include "global.ily"

minorScale = \relative { d e f g a b c }

coverYrEyes = \lyricmode {
  Cov -- er, cov -- er, cov -- er, cov -- er,
  cov -- er, cov -- er, cov -- er yr eyes
}

gonnaLayDownAndDie = \lyricmode {
  Gon -- na, gon -- na, gon -- na, gon -- na,
  gon -- na, gon -- na lay down and die
}

\gridPutMusic "vox" 3
\with {
  lyrics = \lyricmode {
    \coverYrEyes
    \coverYrEyes
  }
  music = \relative c {
    \stopStaff
    \override Staff.StaffSymbol.line-count = #5
    \startStaff
    \new Voice = "chorus" \relative {
      \improvisationOff

      %% \set melismaBusyProperties = #'()
      \repeat volta 2 {
        d8 d d d d d d d |
        d8 d d d d cis c a |
        R1*2 |
        f'8 f f f f f f f |
        f8 f f f f e d c |
        R1*2 |
      }
      %% \unset melismaBusyProperties
    }
  }
}

\gridCompileCell "vox" 3
