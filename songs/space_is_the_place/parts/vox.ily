\gridPutMusic "vox" 9
\with {
  lyrics = \lyricmode {
    If you bury me a -- live now, ba -- by,
    what d'you expect to hap -- pen to me?
  }
  music = \relative c {
    s1*8
    \repeat volta 2 {
      \include "notes/vox-IX.ily"
      \repeat unfold 2 {
        #(make-music 'DoublePercentEvent 'length (ly:make-moment 2/1))
      }
    }
  }
}
