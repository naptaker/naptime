\include "global.ily"

\gridPutMusic "guitar" 3 {
  \stopStaff \hideNotes
  \omit Staff.Clef
  \omit Staff.ClefModifier

  \once \override Staff.BarLine.break-visibility = #begin-of-line-invisible
  \repeat volta 4 {
    s1*2-"This space intentionally left blank."
  }

  %% \repeat volta 4 {
  %%   s1*2-\markup {
  %% }
  %% \translate #'(13 . 0)
  %% \general-align #Y #DOWN {
  %%   \epsfile #Y #18 #"resources/bassline_junkie.eps"
  %%   "8mm bass solo"
  %% }

  \undo \omit Staff.ClefModifier
  \undo \omit Staff.Clef
  \startStaff \unHideNotes
}

\gridCompileCell "guitar" 3