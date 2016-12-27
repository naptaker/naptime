;; (set-default-paper-size "arch a" 'portrait)
;; (set-default-paper-size "arch a" 'landscape)
(set-default-paper-size "letter" 'landscape)
;; (set-global-staff-size 18)
(set-global-staff-size 14)

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

(define (part-missing? part)
  (or (not (member part (hash-ref music-grid-meta #:parts)))
      (let* ((num-segments (hash-ref music-grid-meta #:segments))
             (segments (map 1+ (iota num-segments))))
        (not (any (lambda (seg) (get-music-cell part seg)) segments)))))

(define napChords
  (define-music-function (parser location the-guitar-tuning) (list?)
    (if (part-missing? "chords")
        (begin (ly:debug "No chords set") #{ #})
        #{
          <<
            \context ChordNames {
              \set chordChanges = ##t
              \gridGetMusic "chords"
            }
            \context FretBoards {
              \set stringTunings = #the-guitar-tuning
              \override FretBoard.fret-diagram-details.orientation = #'landscape
              \gridGetMusic "chords"
            }
          >>
        #})))

(define napVox
  (define-music-function (parser location) ()
    (if (part-missing? "vox")
        (begin (ly:debug "No vox") #{ #})
        #{
          <<
            \new VoxVoice = vox <<
              { \gridGetMusic "meta" }
              { \gridGetMusic "vox"  }
            >>
            \new Lyrics \lyricsto vox { \gridGetLyrics "vox" }
          >>
        #})))

(define napGuitarStrum
  (define-music-function (parser location) ()
    (if (part-missing? "guitar strum")
        (begin (ly:debug "No guitar strum part set") #{ #})
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
        #})))

(define napGuitarTab
  (define-music-function (parser location the-guitar-tuning) (list?)
    #{
      \new TabStaff \with {
        stringTunings       = #the-guitar-tuning
        %% FIXME: This is a bad hack.
        minimumFret         = #2
        restrainOpenStrings = ##t
        \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
        \remove "Staff_performer"
        \omit PercentRepeatCounter
        \omit DoublePercentRepeatCounter
      } {
        %% \tabFullNotation
        \gridGetMusic "guitar"
      }
    #}))

(define napGuitar
  (define-music-function (parser location the-guitar-tuning) (list?)
    (if (part-missing? "guitar")
        (begin (ly:debug "No guitar part") #{ #})
        #{
          \new StaffGroup <<
            #(if (part-missing? "vox")
                 #{
                   \new GuitarVoice = gtr <<
                     { \gridGetMusic "meta" }
                     { \gridGetMusic "guitar"  }
                   >>
                 #}
                 #{
                   \new GuitarVoice = gtr { \gridGetMusic "guitar" }
                 #})
          \napGuitarStrum
          \napGuitarTab #the-guitar-tuning
        >>
      #})))

(define napBass
  (define-music-function (parser location) ()
    (if (and (part-missing? "vox") (part-missing? "guitar"))
        #{
          \new BassVoice = bass <<
            { \gridGetMusic "meta" }
            { \gridGetMusic "bass"  }
          >>
        #}
        #{
          \new BassVoice = bass \gridGetMusic "bass"
        #})))

(define napDrums
  (define-music-function (parser location) ()
    (cond
     ((part-missing? "drums up")
      (begin #(ly:debug "No drums up part set") #{ #}))
     ((part-missing? "drums down")
      (begin (ly:debug "No drums down part set") #{ #}))
     (else
      #{
        \new DrumStaff \with {
          drumStyleTable = #preston-drums
          instrumentName = "Drums"
          %% shortInstrumentName = "D"
          \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
        } {
          <<
            \new DrumVoice { \voiceOne \gridGetMusic "drums up" }
            \new DrumVoice \with {
              \remove "Rest_engraver"
              \remove "Multi_measure_rest_engraver"
            } {
              \voiceTwo \gridGetMusic "drums down"
            }
          >>
        }
      #}))))

(define Naptaker
  (define-music-function (parser location the-guitar-tuning) (list?)
    "Return the makings of a Naptaker score."
    #{
      %% \new StaffGroup
      <<
        \napChords #the-guitar-tuning
        \napVox
        \napGuitar #the-guitar-tuning
        \napBass
        \napDrums
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
