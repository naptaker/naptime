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
  (define-music-function (parser location the-guitar-tuning) (list?)
    "Return the makings of a Naptaker score."
    #{
      \new StaffGroup <<
        \new VoxVoice = vox <<
          { \gridGetMusic "meta" }
          { \gridGetMusic "vox"  }
        >>
        <<
          \new GuitarVoice = gtr { \gridGetMusic "guitar" }
          \new TabStaff \with {
            stringTunings       = #the-guitar-tuning
            %% FIXME: This is a bad hack.
            minimumFret         = #2
            restrainOpenStrings = ##t
            \RemoveEmptyStaves
            \override VerticalAxisGroup #'remove-first = ##t
            \remove "Staff_performer"
          } {
            %% \tabFullNotation
            \gridGetMusic "guitar"
          }
        >>
        <<
          \new BassVoice = bass { \gridGetMusic "bass" }
          \new TabStaff \with {
            stringTunings = #bass-tuning
            \RemoveEmptyStaves
            \override VerticalAxisGroup #'remove-first = ##t
            \remove "Staff_performer"
          } {
            %% \tabFullNotation
            \gridGetMusic "bass"
          }
        >>
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

(define templateInit
  (define-void-function (parser location segments) (list?)
    (ly:debug (format #f "Initializing template with segment lengths: ~{~d ~}"
                      segments))
    (let* ((segment 0) (bar-number 1))
      (map (lambda (measures)
             (let ((this-bar-number bar-number))
               (set! segment (1+ segment))
               (set! bar-number (+ bar-number measures))
               #{
                 \gridSetSegmentTemplate $segment
                 \with {
                   barNumber = $this-bar-number
                   music     = {
                     #(make-music 'SkipEvent
                        'duration (ly:make-duration 0 0 measures 1))
                   }
                 }
               #}))
           segments))))
