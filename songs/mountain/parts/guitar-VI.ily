\include "global.ily"

\gridPutMusic "guitar" 6
\relative c {
  \include "notes/guitar-IVa.ily"
  \include "notes/guitar-IVb.ily"
  \set countPercentRepeats = ##t
  %% \override PercentRepeatCounter.staff-padding = #1
  %% \omit TabStaff.PercentRepeatCounter
  \repeat unfold 2 {
    #(make-music 'DoublePercentEvent 'length (ly:make-moment 2/1))
  }
}

\gridCompileCell "guitar" 6
