\version "2.20.0"

\header {
  title = "Think About Things"
}

% As transcribed by Martin Malenfant
% (https://www.youtube.com/watch?v=rajWC9Y1mdY, https://www.patreon.com/darthmart)

music = \relative {
  \override MultiMeasureRest.expand-limit = #3
  \key cis \major
  \numericTimeSignature
  \time 4/4
  \compressFullBarRests
  R1*10 |
  gis,,8-. r4. cis8-. r8 cis8. dis16 |
}

\score {
  <<
    \new Staff \with {midiInstrument = #"electric bass (finger)"} {
      \clef "bass_8"
      \music
    }

    \new TabStaff \with {
      stringTunings = #bass-tuning
    } {
      % \tabFullNotation
      \clef moderntab
      \music
    }
  >>
%   \midi {
%     \tempo 4 = 118
%   }
}

\header {
  tagline = ""  % removed
}
