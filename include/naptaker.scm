;; (set-default-paper-size "arch a" 'landscape)
;; (set-global-staff-size 18)
(set-default-paper-size "letter" 'landscape)
(set-global-staff-size 14)

;; http://lilypond-cookbook.tumblr.com/post/74876227435/drum-music-5-the-hi-hat
;; http://lilypond-cookbook.tumblr.com/post/75485862838/drum-music-template
(define preston-drums
  (alist->hash-table
   '((ridecymbal    cross   #f          5)
     (crashcymbal   cross   #f          6)
     (hihat         cross   "stopped"   5)
     (closedhihat   cross   "stopped"   5)
     (openhihat     cross   "open"      5)
     (halfopenhihat cross   "halfopen"  5)
     (pedalhihat    cross   #f         -5)
     (snare         default #f          1)
     (sidestick     cross   #f          1)
     (hightom       default #f          3)
     (lowmidtom     default #f          0)
     (lowtom        default #f         -1)
     (bassdrum      default #f         -3))))

(define Naptaker
  (define-music-function (parser location the-guitar-tuning) (list?)
    "Return the makings of a Naptaker score."
    #{
      %% \new StaffGroup
      <<
        \new VoxVoice = vox <<
          { \gridGetMusic "meta" }
          { \gridGetMusic "vox"  }
        >>
        \new StaffGroup <<
          \new GuitarVoice = gtr { \gridGetMusic "guitar" }
          #(if (not (member "guitar strum" (hash-ref music-grid-meta #:parts)))
               (ly:debug "No guitar strum part set")
               #{
                 \new RhythmicStaff \with {
                   \RemoveEmptyStaves
                   \override VerticalAxisGroup.remove-first = ##t
                   \remove "Staff_performer"
                   \consists Pitch_squash_engraver
                 } {
                   \improvisationOn
                   \gridGetMusic "guitar strum"
                 }
               #})
          \new TabStaff \with {
            stringTunings       = #the-guitar-tuning
            %% FIXME: This is a bad hack.
            minimumFret         = #2
            restrainOpenStrings = ##t
            \RemoveEmptyStaves
            \override VerticalAxisGroup.remove-first = ##t
            \remove "Staff_performer"
          } {
            %% \tabFullNotation
            \gridGetMusic "guitar"
          }
        >>
        <<
          \new BassVoice = bass { \gridGetMusic "bass" }
%{
          \new TabStaff \with {
            stringTunings = #bass-tuning
            \RemoveEmptyStaves
            \override VerticalAxisGroup #'remove-first = ##t
            \remove "Staff_performer"
          } {
            %% \tabFullNotation
            \gridGetMusic "bass"
          }
%}
        >>
        \new DrumStaff \with {
          drumStyleTable = #preston-drums
          instrumentName = "Drums"
          %% shortInstrumentName = "D"
          \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
        } {
          <<
            \new DrumVoice { \voiceOne \gridGetMusic "drums up" }
            \new DrumVoice
            \with {
              \remove "Rest_engraver"
              \remove "Multi_measure_rest_engraver"
            } {
              \voiceTwo \gridGetMusic "drums down"
            }
          >>
        }
      >>
    #}))

(define templateInit
  (define-void-function (parser location parts segments) (list? list?)
    (ly:debug "===> Initializing template")
    (ly:debug (format #f " --> parts: ~{~a ~}" parts))
    (ly:debug (format #f " --> segment lengths: ~{~d ~}" segments))
    (let* ((segment    0)
           (bar-number 1))
      (cons #{ \gridInit #(length segments) $parts #}
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
                 segments)))))
