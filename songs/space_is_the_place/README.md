- [Front Matter](#sec-)
- [Segments](#sec-)
  - [I: Drum and Bass Intro](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
  - [II: Full Band Intro](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
  - [III: Theme A](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
  - [IV: Theme B](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
  - [V: Theme C (slow)](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
  - [VI: Theme C′ (double time)](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
  - [VII: Theme D](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
  - [VIII: Magic Notes](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
  - [IX: Theme B′ (reprise)](#sec-)
    - [Meta](#sec-)
    - [Vocals](#sec-)
    - [Guitar](#sec-)
    - [Bass](#sec-)
    - [Drums](#sec-)
- [Parts](#sec-)
  - [Guitar](#sec-)
  - [Bass](#sec-)
  - [Drums](#sec-)
  - [Vocals](#sec-)
- [Main](#sec-)


# Front Matter<a id="orgheadline1"></a>

Every good LilyPond file starts with a `\version`:

```LilyPond
\version "2.19.24"
```

Include some libraries and such:

```LilyPond
#(load "../../include/naptaker.scm")
\include "preamble.ily"
\include "instruments.ily"
\include "openlilylib"
\useLibrary gridly
```

Define some useful variables.

```LilyPond
Key    = { \key c \major }
Tempo  = { \tempo 4 = 150 }
global = { \Tempo \defaultTimeSignature \time 4/4 }
```

Then the `\header` metadata:

```LilyPond
\header {
  title    = "Space is the Place"
  opus     = "Naptime"
  composer = "Eric Bailey"
  poet     = "Preston Y. Drum"
  arranger = "Naptaker"
  copyright = "© 2016 Naptaker"
}
```

Initialize the gird and template with a list of parts
and a list of the lengths (in measures) of each segment.

```LilyPond
\templateInit #'("meta"
                 "vox"
                 "guitar" "guitar strum"
                 "bass"
                 "drums up" "drums down")
              #'(8 8 16 8 8 8 7 1 24)
```

# Segments<a id="orgheadline73"></a>

## I: Drum and Bass Intro<a id="orgheadline9"></a>

### Meta<a id="orgheadline2"></a>

```LilyPond
\gridPutMusic "meta" 1
{
  \global
  \mark 1
  s1*8 \break
}
```

### TODO Vocals<a id="orgheadline3"></a>

### Guitar<a id="orgheadline4"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 1
\relative { R1*8 }

\gridCompileCell "guitar" 1
```

### Bass<a id="orgheadline5"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "bass" 1
\relative c, {
  \repeat unfold 2 {
    \include "notes/bass-I.ily"
  }
}

\gridCompileCell "bass" 1
```

### DONE Drums<a id="orgheadline8"></a>

-   Up

    ```LilyPond
    \include "global.ily"

    \gridPutMusic "drums up" 1
    \drummode {
      \repeat unfold 2 {
        \include "notes/drums_up-I.ily"
      }
    }

    \gridCompileCell "drums up" 1
    ```

-   Down

    ```LilyPond
    \include "global.ily"

    \gridPutMusic "drums down" 1
    \drummode {
      \repeat unfold 2 {
        \include "notes/drums_down-I.ily"
      }
    }

    \gridCompileCell "drums down" 1
    ```

## II: Full Band Intro<a id="orgheadline18"></a>

### Meta<a id="orgheadline10"></a>

```LilyPond
\gridPutMusic "meta" 2
{
  \mark 2
  s1*8 \pageBreak
}
```

### TODO Vocals<a id="orgheadline11"></a>

### Guitar<a id="orgheadline13"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 2
\relative c {
  \repeat unfold 2 {
    \include "notes/guitar-II.ily"
  }
}

\gridCompileCell "guitar" 2
```

-   DONE Notes

    ```LilyPond
    \phrasingSlurUp
    ees8\5\(  g\4   bes\3 des\2 c\2    a\3 fis\4 d\5\) |
    ees8\5\(  g\4   bes\3 des\2 c4\2\)     r           |
    ees,8\5\( g\4   bes\3 des\2 c\2    a\3 fis\4 d\5\) |
    ees8\5\(  bes\6 ees\5 g\4\) a4\4       bes\4       |
    ```

### Bass<a id="orgheadline14"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "bass" 2
\relative c, {
  \repeat unfold 2 {
    \include "notes/bass-II.ily"
  }
}

\gridCompileCell "bass" 2
```

### DONE Drums<a id="orgheadline17"></a>

-   Up

    ```LilyPond
    \include "global.ily"

    \gridPutMusic "drums up" 2
    \drummode {
      \repeat unfold 2 {
        \include "notes/drums_up-I.ily"
      }
    }

    \gridCompileCell "drums up" 2
    ```

-   Down

    ```LilyPond
    \include "global.ily"

    \gridPutMusic "drums down" 2
    \drummode {
      \repeat unfold 2 {
        \include "notes/drums_down-I.ily"
      }
    }

    \gridCompileCell "drums down" 2
    ```

## III: Theme A<a id="orgheadline27"></a>

### Meta<a id="orgheadline19"></a>

```LilyPond
\gridPutMusic "meta" 3
{
  \mark 3
  s1*4 % \break
  s1*4 \break
  s1*4 % \break
  s1*4 \pageBreak
}
```

### TODO Vocals<a id="orgheadline20"></a>

### Guitar<a id="orgheadline22"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 3
\relative c {
  %% 1-3
  \repeat unfold 3 {
    \repeat unfold 3 { \include "notes/guitar-III.ily" }
    \include "notes/guitar-IIIa.ily"
  }

  %% 4
  \repeat unfold 3 { \include "notes/guitar-III.ily" }
  \include "notes/guitar-IIIb.ily"
}

\gridCompileCell "guitar" 3
```

-   DONE Notes

    ```LilyPond
    \once \override NoteHead.style = #'cross
    ees4\5 <ees\5 bes'\4 des\3 ees\2>8-\snappizzicato
    \once \override NoteHead.style = #'cross
    ges4\5 <ges\5 des'\4 fes\3 ges\2>8-\snappizzicato <bes\4 d\3 f\2 bes\1>4-\snappizzicato |
    ```

    ```LilyPond
    ges8\5 bes\4 des,\6 fes4\5 ges8\5 c,4\6 |
    ```

    ```LilyPond
    ees,4\5 des8\5 ges4\4 aes8\4 d,4\5 |
    ```

### Bass<a id="orgheadline23"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "bass" 3
\relative c, {
  %% 1-3
  \repeat unfold 3 {
    \include "notes/bass-III.ily"
    \include "notes/bass-IIIa.ily"
  }

  %% 4
  \include "notes/bass-III.ily"
  \include "notes/bass-IIIb.ily"
}

\gridCompileCell "bass" 3
```

### DONE Drums<a id="orgheadline26"></a>

-   Up

    ```LilyPond
    \include "global.ily"

    \gridPutMusic "drums up" 3
    \drummode {
      \repeat unfold 4 {
        \include "notes/drums_up-III.ily"
      }
    }

    \gridCompileCell "drums up" 3
    ```

-   Down

    ```LilyPond
    \include "global.ily"

    \gridPutMusic "drums down" 3
    \drummode {
      \repeat unfold 4 {
        \include "notes/drums_down-III.ily"
      }
    }

    \gridCompileCell "drums down" 3
    ```

## IV: Theme B<a id="orgheadline36"></a>

### Meta<a id="orgheadline28"></a>

```LilyPond
\gridPutMusic "meta" 4
{
  \mark 4
  s1*4 % \break
  s1*4 \break
}
```

### TODO Vocals<a id="orgheadline29"></a>

### Guitar<a id="orgheadline31"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 4
\relative c {
  \repeat unfold 2 {
    \include "notes/guitar-IV.ily"
  }
}

\gridCompileCell "guitar" 4
```

-   DONE Notes

    ```LilyPond
    \ottava #0
    ees4\5 ees8.\5\noBeam \stemUp
    \once \phrasingSlurDown des16\5\( ees8\5 ges\4 ees\5 des\5 |
    \once \override Glissando.style = #'dashed-line
    bes4\6\)\glissando
    \ottava #-1
    bes8.\6\noBeam \stemDown a16\6\( bes8\6 des\5 bes\6 a\6 |
    aes4\6\) \stemNeutral aes8.\6 ges16\6 ges8\6 aes4\6 f8\6 |
    ges8\6 ges\6 ges\6 ges\6 ges\6 bes\6( a\6 f\6) |
    ```

### Bass<a id="orgheadline32"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "bass" 4
\relative c, {
  \repeat unfold 2 {
    \include "notes/bass-IV.ily"
  }
}

\gridCompileCell "bass" 4
```

### DONE Drums<a id="orgheadline35"></a>

-   Up

    ```LilyPond
    \include "global.ily"

    \gridPutMusic "drums up" 4
    \drummode {
      \include "notes/drums_up-IVa.ily"
      \include "notes/drums_up-IVb.ily"
    }

    \gridCompileCell "drums up" 4
    ```

-   Down

    ```LilyPond
    \include "global.ily"

    \gridPutMusic "drums down" 4
    \drummode {
      \repeat unfold 2 {
        \include "notes/drums_down-IV.ily"
      }
    }

    \gridCompileCell "drums down" 4
    ```

## V: Theme C (slow)<a id="orgheadline43"></a>

### Meta<a id="orgheadline37"></a>

Slow and heavy.

```LilyPond
\gridPutMusic "meta" 5
{
  \mark 5
  s1*8 \break
}
```

### TODO Vocals<a id="orgheadline38"></a>

### DONE Guitar<a id="orgheadline40"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 5
\relative c {
  \include "notes/guitar-V.ily"
}

\gridCompileCell "guitar" 5
```

-   DONE Notes

    ```LilyPond
    \Tempo
    \ottava #0
    <b fis' b dis fis b>1         |
    <fis cis' fis ais cis fis>1   |
    <b fis' b dis fis b>1         |
    <fis cis' fis ais cis fis>1   |
    <b fis' b dis fis b>1         |
    <fis cis' fis ais cis fis>1   |
    <f c' f a c f>1             ~ |
    <f c' f a c f>1               |
    ```

### TODO Bass<a id="orgheadline41"></a>

### TODO Drums<a id="orgheadline42"></a>

## VI: Theme C′ (double time)<a id="orgheadline50"></a>

### Meta<a id="orgheadline44"></a>

The same as the previous segment, but with twice the rhythmic intensity.

```LilyPond
\gridPutMusic "meta" 6
{
  \mark 6
  s1*8 \break
}
```

### TODO Vocals<a id="orgheadline45"></a>

### DONE Guitar<a id="orgheadline47"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 6
\relative c {
  \include "notes/guitar-VI.ily"
}

\gridCompileCell "guitar" 6
```

-   DONE Notes

    ```LilyPond
    \repeat unfold 2 { <b fis' b dis fis b>8       q16 q8 q16 q8 } |
    \repeat unfold 2 { <fis cis' fis ais cis fis>8 q16 q8 q16 q8 } |
    \repeat unfold 2 { <b fis' b dis fis b>8       q16 q8 q16 q8 } |
    \repeat unfold 2 { <fis cis' fis ais cis fis>8 q16 q8 q16 q8 } |
    \repeat unfold 2 { <b fis' b dis fis b>8       q16 q8 q16 q8 } |
    \repeat unfold 2 { <fis cis' fis ais cis fis>8 q16 q8 q16 q8 } |
    \repeat unfold 2 { <f c' f a c f>8             q16 q8 q16 q8 } |
    \repeat unfold 2 { <f c' f a c f>8             q16 q8 q16 q8 } |
    ```

### TODO Bass<a id="orgheadline48"></a>

### TODO Drums<a id="orgheadline49"></a>

## VII: Theme D<a id="orgheadline57"></a>

### Meta<a id="orgheadline51"></a>

The triumphant stoner segment.

```LilyPond
\gridPutMusic "meta" 7
{
  \tempo 4 = 69
  \mark 7
  s1*7
}
```

### TODO Vocals<a id="orgheadline52"></a>

### DONE Guitar<a id="orgheadline54"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 7
\relative c {
  \include "notes/guitar-VII.ily"
}

\gridCompileCell "guitar" 7
```

-   DONE Notes

    ```LilyPond
    <e b' e gis b e>2. 16 <d a' d fis a d>8. |
    <b fis' b dis fis b>2 ~ 8 16 <bes f' bes d f bes> <b fis' b dis fis b> <d a' d fis a d>8. |
    <e b' e gis b e>2 16 <d a' d fis a d> <e b' e gis b e> <g d' g b d g>8 <e b' e gis b e>8. |
    <b fis' b dis fis b>2 \override NoteHead.style = #'cross 8:16 <bes f' bes d f bes>:16 <a e' a cis e a>:16 <fis cis' fis ais cis fis> |
    \revert NoteHead.style
    <e' b' e gis b e>2. 16 <d a' d fis a d>8. |
    <b fis' b dis fis b>2 ~ 8. <bes f' bes d f bes>16 <b fis' b dis fis b> <d a' d fis a d> <b fis' b dis fis b>8 |
    <bes f' bes d f bes>1 |
    ```

### TODO Bass<a id="orgheadline55"></a>

### TODO Drums<a id="orgheadline56"></a>

## VIII: Magic Notes<a id="orgheadline64"></a>

### Meta<a id="orgheadline58"></a>

```LilyPond
\gridPutMusic "meta" 8
{
  \mark 8
  s1 \pageBreak
}
```

### TODO Vocals<a id="orgheadline59"></a>

### DONE Guitar<a id="orgheadline61"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 8
\relative c {
  \include "notes/guitar-VIII.ily"
}

\gridCompileCell "guitar" 8
```

-   DONE Notes

    ```LilyPond
    <aes ees' aes c ees aes>2 <b fis' b dis fis b>2 |
    ```

### TODO Bass<a id="orgheadline62"></a>

### TODO Drums<a id="orgheadline63"></a>

## IX: Theme B′ (reprise)<a id="orgheadline72"></a>

### Meta<a id="orgheadline65"></a>

```LilyPond
\gridPutMusic "meta" 9
{
  \Tempo
  \mark 9
  s1*24
  \bar "|."
}
```

### TODO Vocals<a id="orgheadline66"></a>

### DONE Guitar<a id="orgheadline68"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "guitar" 9
\relative c {
  \include "notes/guitar-IV.ily"
  \relative {
    \include "notes/guitar-IX.ily"
  }
  \relative {
    \include "notes/guitar-IV.ily"
  }
  \relative {
    \include "notes/guitar-IX.ily"
  }
  \relative {
    \include "notes/guitar-IV.ily"
  }
  \relative {
    \include "notes/guitar-IX.ily"
  }
}

\gridCompileCell "guitar" 9
```

-   DONE Notes

    ```LilyPond
    \once \override Glissando.style = #'dashed-line
    ees4\5\glissando \ottava #0 ees8.\5 \stemUp des16\5\( ees8\5 ges\4 aes\4 a\4 |
    bes4\4\) bes8.\4\noBeam \stemDown a16\4\( bes8\4 des\3 bes\4 a\4 |
    aes4\4\) \stemNeutral aes8.\4 ges16\4 ges8\4 aes4\4 f8\4 |
    ges8\4 ges\4 ges\4 ges\4 ges\4 bes\4( a\4 f\4) |
    ```

### TODO Bass<a id="orgheadline70"></a>

```LilyPond
\include "global.ily"

\gridPutMusic "bass" 9
\relative c, {
  \repeat unfold 2 {
    \include "notes/bass-IV.ily"
  }
  \include "notes/bass-IX.ily"
  \include "notes/bass-IV.ily"
  \include "notes/bass-IX.ily"
  \include "notes/bass-IV.ily"
}
```

-   TODO Notes

    ```LilyPond
    ees'4     ees8.     des16 ees8 ges  aes a  |
    bes4     bes8.     a16   bes8 des  bes a   |
    aes4     aes8.     ges16 ges8 aes4     f8  |
    ges8 ges ges   ges       ges  bes  a   f   |
    ```

### TODO Drums<a id="orgheadline71"></a>

# Parts<a id="orgheadline78"></a>

## Guitar<a id="orgheadline74"></a>

```LilyPond
\include "global.ily"
\include "guitar-I.ily"
\include "guitar-II.ily"
\include "guitar-III.ily"
\include "guitar-IV.ily"
\include "guitar-V.ily"
\include "guitar-VI.ily"
\include "guitar-VII.ily"
\include "guitar-VIII.ily"
\include "guitar-IX.ily"
```

## Bass<a id="orgheadline75"></a>

```LilyPond
\include "global.ily"
\include "bass-I.ily"
\include "bass-II.ily"
\include "bass-III.ily"
\include "bass-IV.ily"
\include "bass-IX.ily"
```

## Drums<a id="orgheadline76"></a>

```LilyPond
\include "global.ily"
\include "drums_up-I.ily"
\include "drums_down-I.ily"
\include "drums_up-II.ily"
\include "drums_down-II.ily"
\include "drums_up-III.ily"
\include "drums_down-III.ily"
\include "drums_up-IV.ily"
\include "drums_down-IV.ily"
```

## TODO Vocals<a id="orgheadline77"></a>

# Main<a id="orgheadline79"></a>

Include the grid, templates and header metadata ([global.ily](include/global.ily)), and the parts.

```LilyPond
\include "global.ily"
\include "parts/bass.ily"
\include "parts/guitar.ily"
\include "parts/drums.ily"
```

Print out the grid while rendering and
ensure all segments are of appropriate length.

```LilyPond
\gridDisplay
\gridCheck
```

During the process of transcribing a score, it can be useful to render a
particular range of the grid. GridLy provides a function, `gridSetRange` to
do just that.

By default, all segments are retrieved:

```LilyPond
\gridSetRange #'all
```

&#x2026; but you can specify a dotted pair (start and end):

```LilyPond
\gridSetRange #'(2 . 3)
```

&#x2026; or a single segment index:

```LilyPond
\gridSetRange 9
```

Configure the score to be printed, including some visual tweaks.

```LilyPond
\score {
  \Naptaker #guitar-open-d-tuning

  \layout {
    %% Increase the size of bar numbers by 2
    \override Score.BarNumber.font-size = #2

    %% Draw a box around bar numbers
    \override Score.BarNumber.stencil =
    #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)

    \override Score.BarNumber.padding = #3
  }
}
```

Configure the MIDI output.

```LilyPond
\score {
  \unfoldRepeats \Naptaker #guitar-open-d-tuning
  \midi { }
}
```
