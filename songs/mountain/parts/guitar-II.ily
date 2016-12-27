\include "global.ily"

\gridPutMusic "guitar" 2 {
  %% <<
  %%   {
  \relative c, {
    \include "notes/guitar-IIa.ily"
    \include "notes/guitar-IIb.ily"
  }
  \relative c' {
    \include "notes/guitar-IIc.ily"
  }
  \relative c' {
    \include "notes/guitar-IId.ily"
  }
  %%   } \\ {
  %%     \removeWithTag #'main \gridGetCellMusic "meta" 2
  %%   }
  %% >>
}

\gridCompileCell "guitar" 2
