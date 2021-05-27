\version "2.20.0"
\include "articulate.ly"
#(set-global-staff-size 17.5)

currentTag = #"print"
midiPan = #0.2 % affecting whole midi output, value from -1 to 1

\include "definitions.ly"
\include "makeOctaves.ly"
\include "intro.ly"
\include "dynamics.ly"

\paper {
    top-margin = 8\mm %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #3 %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5 %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12 %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #14 %-pads music from copyright block

    oddFooterMarkup = \markup {
      \fill-line {
        "https://music.bensonby.me"
      }
    }
    evenFooterMarkup = \oddFooterMarkup
}

\header {
  title = "林家謙 - 神奇的糊塗魔藥"
  subtitle = "鋼琴四手聯彈"
  composer = "林家謙"
  arranger = "Arranged by Benson Yeung"
}

primo-rh = {
  \tempo "Fast Swing" 4 = 182
  \key b \major
  \time 4/4
  \partial 4
  \intro-primo-rh
}
primo-lh = {
  \key b \major
  \time 4/4
  \partial 4
  \intro-primo-lh
}
secondo-rh = {
  \key b \major
  \time 4/4
  \partial 4
  \intro-secondo-rh
}
secondo-lh = {
  \key b \major
  \time 4/4
  \partial 4
  \intro-secondo-lh
}
\score {
  \new StaffGroup <<
    \new PianoStaff \with {
      instrumentName = #"Primo"
      shortInstrumentName = #"Primo"
    } <<
      \new Staff = "up" {
        \primo-rh
      }
      \new Dynamics = "primo-dynamics" \keepWithTag \currentTag \primo-dynamics
      \new Staff = "down" {
        \primo-lh
      }
    >>
    \new PianoStaff \with {
      instrumentName = #"Secondo"
      shortInstrumentName = #"Secondo"
    } <<
      \new Staff = "up" {
        \secondo-rh
      }
      \new Dynamics = "primo-dynamics" \keepWithTag \currentTag \secondo-dynamics
      \new Staff = "down" {
        \secondo-lh
      }
    >>
  >>
  \layout {
  }
}
