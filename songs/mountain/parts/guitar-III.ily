\include "global.ily"

\gridPutMusic "guitar" 3 {
  %% \repeat volta 4 {
  %%   s1*2
  %% }
  \stopStaff \hideNotes
  \omit Staff.Clef
  \omit Staff.ClefModifier
  \omit Staff.BarLine
  s1*2-"This space intentionally left blank."
  %% s1*2-\markup {
  %% \translate #'(13 . 0)
  %% \general-align #Y #DOWN {
  %%   \epsfile #Y #18 #"resources/bassline_junkie.eps"
  %%   "8mm bass solo"
  %% }

  \undo \omit Staff.Clef
  \undo \omit Staff.ClefModifier
  \undo \omit Staff.BarLine
  \once \omit Staff.BarLine
  \startStaff \unHideNotes
}

\gridCompileCell "guitar" 3