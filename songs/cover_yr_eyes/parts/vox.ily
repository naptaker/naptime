%%% ================================================================ [ vox.ily ]

%%% ============================================================ [ Verse Music ]

\gridPutMusic "vox" 2
\with {
  lyrics = \lyricmode { } %% NOTE: see extraLyrics
  music = {
    \stopStaff \override Staff.StaffSymbol.line-count = #1 \startStaff
    \new Voice = "verse" \relative {
      \improvisationOn
      \set melismaBusyProperties = #'()
      \slurDashed
      \phrasingSlurDotted
      \repeat volta 4 {
        r4 d8 d( d)\( d( d)\) d( |
        d8) \parenthesize d r4 r2 |
        r8 \parenthesize d d( d) d d( d) d8 |
        R1 |
        r8 \parenthesize d d d\( d d( d)(\) \parenthesize d)(|
        d8)\(( d)( d)\) d( d)( d) d( d) |
      }
      \alternative {
        { d8 d d d d4( d8) d ~ |
          d4 r r2 | }
        { d8 d d4 d8\( d( d)\) d8 ~ |
          d4 r r2 | }
        { d8 d4( d8) d( d) d d |
          r8 d8 d d16 d d8 d d d | }
      }
    }
    \stopStaff \override Staff.StaffSymbol.line-count = #5 \startStaff
  }
}

%%% =========================================================== [ Chorus Music ]

\gridPutMusic "vox" 3
\with {
  lyrics = \lyricmode { } %% NOTE: see extra
  music = {
    \new Voice = "chorus" \relative {
      \repeat volta 2 {
        d8 d d d d d d d |
        d8 d d d d cis c a |
        R1*2 |
        f'8 f f f f f f f |
        f8 f f f f e d c |
        R1*2 |
      }
    }
  }
}

%%% ==================================================================== [ EOF ]
