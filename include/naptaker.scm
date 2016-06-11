;; (set-default-paper-size "arch a" 'landscape)
;; (set-global-staff-size 18)
(set-default-paper-size "letter" 'landscape)
(set-global-staff-size 14)

(define preston-drums
  (alist->hash-table
   '((bassdrum      default #f -3)
     (snare         default #f  1)
     (closedhihat   cross   #f  5)
     (halfopenhihat xcircle #f  5)
     (lowtom        default #f -1)
     (pedalhihat    cross   #f -5)
     (crashcymbal   cross   #f  6)
     (ridecymbal    cross   #f  4))))

(define Naptaker
  (define-music-function (parser location) ()
    "Return the makings of a Naptaker score."
    #{
      \new StaffGroup <<
        \new VoxVoice = vox <<
          { \gridGetMusic "meta" }
          { \gridGetMusic "vox" }
        >>
        \new GuitarVoice = gtr { \gridGetMusic "guitar" }
        \new BassVoice = bass { \gridGetMusic "bass" }
        \new DrumStaff \with {
          drumStyleTable = #preston-drums
          instrumentName = "Drums"
          %% shortInstrumentName = "D"
          \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
        } {
          <<
            \new DrumVoice { \gridGetMusic "drums up" }
            \new DrumVoice
            \with {
              \remove "Rest_engraver"
              \remove "Multi_measure_rest_engraver"
            }
            \gridGetMusic "drums down"
          >>
        }
      >>
    #}))
