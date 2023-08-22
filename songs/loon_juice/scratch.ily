\set restrainOpenStrings = ##t

\set minimumFret = #3 g,,1:5.8.10 ~ |
q2 bes,,4:3.5.8.10^1 \set minimumFret = #7 a,,:5.8.10 |

\set minimumFret = #8 bes,,1:5.8.10 ~ |
q2 \set minimumFret = #11 \fuzzOn des,4:5.8.10 q \fuzzOff |

\set minimumFret = #3 g,,1:5.8.10 ~ |
q2 bes,,4:3.5.8.10^1 \set minimumFret = #7 a,,:5.8.10 |

\set minimumFret = #6
bes,,2:5.8.10 \acciaccatura { q16 16 } q2 |
d8:6-3-^5 q q q cis4:6-3-^5 c4:6-3-^5 |

% \set minimumFret = #3 g,,1:5.8.10 ~ |
% g2 bes,,4:3.5.8.10^1 \set minimumFret = #7 a,,:5.8.10 |

% \set minimumFret = #8 bes,,1:5.8.10 ~ |
% bes2 \set minimumFret = #4 \fuzzOn ges,,4:5.8.10 q \fuzzOff |

% \set minimumFret = #3 g,,1:5.8.10 ~ |
% g2 bes,,4:3.5.8.10^1 \set minimumFret = #7 a,,:5.8.10 |

% \set minimumFret = #6
% bes,,2:5.8.10 \acciaccatura { q16 16 } q2 |
% d8:6-3-^5 q q q cis4:6-3-^5 c4:6-3-^5 |



g4    8 f g     bes f    fis |
g4    8 f d'4       f        |
g,4   8 f g     bes f    fis |
g4    8 f des'4     ges,     |
g4    8 f g     bes f    fis |
g4    8 f d'4       f        |
bes,4 8 a bes4      aes8 a   |
bes8  d a des   c   aes  g4  |



  % cymc4 <toml sn>8 toml toml toml <toml sn> toml |
  % toml8 toml <toml sn> \flam <toml sn> cymr4 <sn hho>8 \flam sn |
  % cymc4 <toml sn>8 toml toml toml <toml sn> toml |
  % toml8 toml <toml sn> \flam <toml sn> cymr4 <sn hhho> |
  % cymc4 <toml sn>8 toml toml toml <toml sn> toml |
  % toml8 toml <toml sn> \flam <toml sn> cymr4 <sn hho>8 \flam sn |
  % cymr4 <sn cymr>8 <sn cymr> cymr cymr <sn cymr> \flam <sn cymr>8 |
  % cymr16 \flam sn sn sn tomml sn sn sn tomml tomml toml toml toml toml toml toml |

^\markup {
      \translate #'(16 . 30) \override #'(size . 1.5) {
        \override #'(fret-diagram-details
                     . (;(fret-count . 13)
                        (orientation . landscape)
                        (number-type . roman-lower)
                        (finger-code . in-dot)
                        (dot-radius . 0.35)
                        (dot-position . 0.5)
                        (barre-type . straight))) {
          \fret-diagram-verbose #'((capo 3)
                                   (place-fret 5 12)
                                   (place-fret 3 12)
                                   ;; G
                                   (place-fret 6 5 1)
                                   (place-fret 4 5 1)
                                   (barre 6 4 5)
                                   ;; A
                                   (place-fret 6 7 2)
                                   (place-fret 4 7 2)
                                   (barre 6 4 7)
                                   ;; Bb
                                   (place-fret 6 8 3)
                                   (place-fret 4 8 3)
                                   (barre 6 4 8)
                                   ;; C
                                   (place-fret 6 10 3)
                                   (place-fret 4 10 3)
                                   (barre 6 4 10)
                                   ;; Db
                                   (place-fret 6 11 3)
                                   (place-fret 4 11 3)
                                   (barre 6 4 11)
                                   ;; Eb
                                   (place-fret 6 13 3)
                                   (place-fret 4 13 3)
                                   (barre 6 4 13)
                                   ;; F
                                   (place-fret 6 15 3)
                                   (place-fret 4 15 3)
                                   (barre 6 4 15)
                                  )
        }
      }
    }

%%% drums down 3

  % bd2 bd8 bd s4 |
  % bd2 bd |
  % bd2 bd4. bd8 |
  % bd4. bd8 bd2 |
  % bd2 bd8 bd4 bd8 |
  % bd4. bd8 bd2 |
  % bd2 s8 bd s bd | % FIXME
  % bd8 bd bd bd bd bd bd bd |