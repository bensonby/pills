cr = \change Staff = "up"
cl = \change Staff = "down"
cpr = \change Staff = "up"
cpl = \change Staff = "down"
csr = \change Staff = "up"
csl = \change Staff = "down"
son = \sustainOn
soff = \sustainOff
rhMark = \markup { 
  \path #0.1 #'((moveto -1 0)(rlineto 0 -1.5)(rlineto 0.5 0))
}
lhMark = \markup { 
  \path #0.1 #'((moveto 0 1)(rlineto -0.5 0)(rlineto 0 -1.5))
}
conPedal = \markup \italic \larger "con pedal"
sim = \markup \italic \larger "sim."
cresc = \markup \italic \larger "cresc."
blackKeyGlissando = \markup \italic \larger "black-key gliss."
fpCresc = \markup \concat { \dynamic "fp" \italic \larger "  cresc." }
beginSlowlyThenAccel = \markup \whiteout { \concat { \dynamic "sfp" \italic "  begin slowly, then ease into tempo" } }
ottava-one-short = \set Staff.ottavation = #"8"
ottavaShorterEndA = \once \override Score.OttavaBracket.shorten-pair = #'(0 . 0)
attacaA = {
  \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.side-axis = #1 % below
  \once \override Score.RehearsalMark.direction = #-1 % below
  \once \override Score.RehearsalMark.padding = #7
  \mark \markup \italic \smaller "(attacca)"
}
attacaB = {
  \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.side-axis = #1 % below
  \once \override Score.RehearsalMark.direction = #-1 % below
  \mark \markup \italic \smaller "(attacca)"
}
instructionI = {
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.RehearsalMark.font-size = #0.3
  \once \override Score.RehearsalMark.X-offset = #0
  \mark \markup \box \pad-around #1 {
    \smaller "First played by Piano II starting at bar 3; then by Piano I from the beginning including the black-key glissandos."
  }
}
instructionII = {
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.RehearsalMark.font-size = #0.3
  \once \override Score.RehearsalMark.X-offset = #0
  \mark \markup \box \pad-around #1 {
    \smaller "First played by Piano II; then by Piano I from bar 16 (no high C#) till the end, followed by bar 1 till first note of bar 16."
  }
}
dynamicShiftA = \once \override DynamicText.X-offset = #-3
dynamicShiftB = \once \override DynamicText.X-offset = #-2
dynamicShiftC = \once \override Dynamics.DynamicText.self-alignment-X = #-0.2 % for overlap on the left with barline
dynamicShiftD = \once \override DynamicText.Y-offset = #-0.8
dynamicShiftE = \once \override DynamicText.Y-offset = #-7
dynamicShiftF = \once \override Dynamics.DynamicText.self-alignment-X = #-0.4 % for overlap on the left with barline
dynamicShiftG = \once \override DynamicText.Y-offset = -2
dynamicShiftH = \once \override DynamicText.extra-offset = #'(0.35 . 0.9)
hairpinA = \once \override Hairpin.Y-offset = #-2
hairpinB = \once \override Hairpin.Y-offset = #-1.4
paddingA = \once \override Script.padding = #0.6
paddingB = \once \override Script.padding = #0.4
paddingC = \once \override Script.padding = #0.3
offsetA = {
  \once \override Script.X-offset = #0.2
  \once \override Script.padding = #0.4
}
textScriptShiftA = \once \override TextScript.extra-offset = #'(0 . 1.4)
textScriptShiftB = \once \override TextScript.extra-offset = #'(0 . 0.5)
textScriptShiftC = \once \override TextScript.extra-offset = #'(0 . -0.5)
textScriptShiftD = \once \override TextScript.extra-offset = #'(0 . 0.0)
textScriptShiftE = \once \override TextScript.extra-offset = #'(0 . 0.3)
textScriptShiftF = \once \override TextScript.extra-offset = #'(0 . -0.6)
fingeringA = \once \override Fingering.extra-offset = #'(0 . -0.2)
metronomePaddingA = \once \override Score.MetronomeMark.padding = #11.5
metronomePaddingB = \once \override Score.MetronomeMark.padding = #4
metronomePaddingC = \once \override Score.MetronomeMark.padding = #6
metronomePaddingD = \once \override Score.MetronomeMark.padding = #2
pedalOffsetA = \once \override Score.SustainPedalLineSpanner.padding = #1.65
subPAccelAndCrescSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup \whiteout { \concat { \italic \larger "sub. " \dynamic "p" \italic \larger " accel. e cresc." } }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.dash-fraction = #0.15
  \override TextSpanner.dash-period = #3.5
  \override TextSpanner.thickness = 1.7
  \override TextSpanner.avoid-slur = #'inside
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner.staff-padding = 3.0
  \override TextSpanner #'(bound-details right padding) = #4.0
  \override TextSpanner #'(bound-details right-broken padding) = #0.5
}
voiceFollowerA = {
  \override VoiceFollower.style = #'dashed-line
  \override VoiceFollower.Y-extent = #'(-3 . 3)
  \override VoiceFollower.bound-details = #'(
    (right
      (attach-dir . -1)
      (end-on-accidental . #t)
      (padding . 3.8)
      (Y . 4)
    )
    (left
      (attach-dir . 1)
      (padding . 3.8)
      (Y . -9.5)
    )
  )
}
voiceFollowerB = {
  \override VoiceFollower.style = #'dashed-line
  \override VoiceFollower.Y-extent = #'(-3 . 3)
  \override VoiceFollower.bound-details = #'(
    (right
      (attach-dir . -1)
      (end-on-accidental . #t)
      (padding . 2.8)
      (Y . 2.5)
    )
    (left
      (attach-dir . 1)
      (padding . 0.5)
      (Y . 9.5)
    )
  )
}
glissandoA = \once \override Glissando.bound-details = #'(
  (right
    (attach-dir . -1)
    (end-on-accidental . #t)
    (padding . 1.2)
  )
  (left
    (attach-dir . 1)
    (padding . 1.2)
  )
)
shpSlurA = \shape #'((0.2 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) PhrasingSlur
shpSlurB = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0.5)) PhrasingSlur
shpSlurC = \shape #'((0 . 0.2) (0 . 0.6) (0 . 0.3) (0 . 0.5)) PhrasingSlur
shpSlurD = \shape #'((0 . 0.2) (0 . 1.9) (0 . 1.5) (0 . 0.0)) PhrasingSlur

% default accent in midi adds 20 to velocity which is too much
% ly/script-init.ly
accentA = #(make-articulation "accent" 'midi-extra-velocity 10)
accentB = #(make-articulation "accent" 'midi-extra-velocity 5)
