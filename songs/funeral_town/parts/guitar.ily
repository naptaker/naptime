\gridPutMusic "guitar" 1 \relative es, {
  \Key
  \ottava #-1
  \repeat percent 2 {
    \include "notes/guitar-I.ily"
  }

  \stopStaff
  s1*4
  \startStaff
}

\gridPutMusic "guitar" 2 {
  \set minimumFret = #0
  \repeat volta 3 {
    <<
      {
        \voiceOneStyle
        \override Dots.color = #red
        \override Accidental.color = #red
        \stemDown
        \override Rest.staff-position = #0
        \relative es, {
          \include "notes/guitar-IIa.ily"
        }
      }
      \\
      {
        \voiceTwoStyle
        \override Dots.color = #blue
        \override Accidental.color = #blue
        \stemUp
        \omit Rest
        \omit TrillSpanner
        \override NoteColumn.force-hshift = #1.7
        \relative es {
          \include "notes/guitar-IIa.ily"
        }
      }
      \\
      {
        \voiceThreeStyle
        \override Dots.color = #green
        \override Accidental.color = #green
        \stemUp
        \omit Rest
        \omit TrillSpanner
        \override NoteColumn.force-hshift = #3.4
        \relative es'' {
          \include "notes/guitar-IIa.ily"
        }
      }
    >>

    s1*4
  }
}

\gridPutMusic "guitar" 3 {
  \set minimumFret = #8
  \relative es' {
    \include "notes/guitar-Va.ily"
    \include "notes/guitar-Vb.ily"
    \include "notes/guitar-Va.ily"
  }
}

\gridPutMusic "guitar" 4 \relative es' {
  s1*4
  \include "notes/guitar-IV.ily"
}

\gridPutMusic "guitar" 5 {
  \set minimumFret = #8
  \relative es' {
    \include "notes/guitar-Va.ily"
  }
}

%% \gridPutMusic "guitar" 6 {
%%   \gridGetCellMusic "guitar" 4
%% }


\gridPutMusic "guitar" 6 {
  \set minimumFret = #8
  \relative es' {
    \repeat unfold 2 {
      \include "notes/guitar-Va.ily"
    }
  }
}

%% \gridPutMusic "guitar" 8 {
%%   \gridGetCellMusic "guitar" 4
%% }

                                % \gridPutMusic "guitar" 9 {
                                %   \set minimumFret = #8
                                %   \relative es' {
                                %     \include "notes/guitar-Va.ily"
                                %   }
                                % }

%%%% \gridPutMusic "guitar" 10 {
%%%%   \set minimumFret = #4
%%%%   \relative es, {
%%%%     \override NoteHead.color = #red
%%%%     \include "notes/guitar-IV.ily"
%%%%   }
%%%% }
