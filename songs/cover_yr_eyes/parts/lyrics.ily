%%% ================================================================= [ Lyrics ]

%% Chorus lyrics

coverYrEyes = \lyricmode {
  Cov -- er, cov -- er, cov -- er, cov -- er,
  cov -- er, cov -- er, cov -- er yr eyes
}

gonnaLayDownAndDie = \lyricmode {
  Gon -- na, gon -- na, gon -- na, gon -- na,
  gon -- na, gon -- na lay down and die
}

extraLyrics = <<
  %% Verse 1 lyrics
  \new Lyrics \lyricsto "verse" {
    \lyricmode {
      \colorLyrics #(x11-color 'firebrick3)

      \stanza #1 In a world, __ _ _ ba -- __ _ by,
      \skip 1 where the rich are __ _ poor,
      \skip 1 where the sen -- ti -- nels _
      stand __ _ _ down __ _ and the __ _

      %% \stanza #1
      news -- pa -- per's a -- gainst the war;
    }
  }
  \new Lyrics \lyricsto "verse" {
    \lyricmode {
      \colorLyrics #(x11-color 'DarkOrange2)

      %% \stanza #2
      No poi __ _  son in the air _
      or land __ _ sea or __ _ shore
      a per  fect u  ni _  verse __
      _ for you

      \repeat unfold 13 { \skip 1 }
      %% \stanza #2
      you and me to ex __ _ plore
    }
  }
  \new Lyrics \lyricsto "verse" {
    \lyricmode {
      \colorLyrics #(x11-color 'khaki3)

      %% \stanza #3
      Our love __ _ takes __ _ flight _ _
      \skip 1 like a bird __ _ so free
      My heart is __ _ _ _ a --
      pump -- in' __ _ a -- pump -- in' __ _ a-

      \repeat unfold 8 { \skip 1 }
      %% \stanza #3
      pump -- in' for you and __ _ me
    }
  }
  \new Lyrics \lyricsto "verse" {
    \lyricmode {
      \colorLyrics #(x11-color 'ForestGreen)

      %% \stanza #4
      Im -- ma drop __ _ the bomb _ _
      _ from this tow -- er of song
      a whis -- per from __ _ my __ _ lips __ _ to the grave __ _ that

      \repeat unfold 17 { \skip 1 }
      %% \stanza #4
      you gon' __ _ be __ _ with me

      \revert Lyrics.LyricText.color
      \revert Lyrics.LyricText.font-series
      What -- cha gon -- na do a -- bout it?
    }
  }

  \new Lyrics \lyricsto "chorus" { \coverYrEyes \coverYrEyes }
  \new Lyrics \lyricsto "chorus" { \gonnaLayDownAndDie \coverYrEyes }

  %% Verse 2 lyrics

  \new Lyrics \lyricsto "verse" {
    \colorLyrics #(x11-color 'MediumBlue)

    \stanza #2 In a world, __ _ _ ba -- __ _ by,
    \skip 1 where the blind __ _ can see,
    \skip 1 is there an -- y __ _ chance, __ _ _ _ chance __ _ _ that __ _

    %% \stanza #2
    you gon' __ _ _ love __ _ me?
  }

  \new Lyrics \lyricsto "verse" {
    \colorLyrics #(x11-color 'BlueViolet)

    %% \stanza #6
    If you want __ _ _ me,
    \repeat unfold 3 { \skip 1 }
    Gon' head gim -- me a sign
    \skip 1 Ain't __ _ see -- in' much __ _
    hope, __ _ _ much hope, __ _ _ much

    \repeat unfold 8 { \skip 1 }
    %% \stanza #6
    hope... \skip 1 \skip 1
    O -- pen yr eyes
  }
  \new Lyrics \lyricsto "verse" {
    \colorLyrics #(x11-color 'VioletRed2)

    %% \stanza #7
    Un -- der moon -- lit __ _ sky
    \repeat unfold 5 { \skip 1 } up in this tree
    \skip 1 Yeah, I'm watch -- in' you, I'm
    watch -- in' you, I'm watch -- in' you, I'm

    \repeat unfold 8 { \skip 1 }
    %% \stanza #7
    watch -- in' yr T. __ _ _ V. __ _
  }
  \new Lyrics \lyricsto "verse" {
    \colorLyrics #(x11-color 'PaleVioletRed2)

    %% \stanza #8
    But what's __ _ it gon -- na take
    \skip 1 for you to no -- tice __ _ me?
    \skip 1 Yr so cool, __ _ yr so
    cool, __ _ yr so cool, __ _ yeah, yr

    \repeat unfold 16 { \skip 1 }
    %% \stanza #8
    cool -- er, __ yr cool -- er than me
  }
>>

%%% ==================================================================== [ EOF ]
