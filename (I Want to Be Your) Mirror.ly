\version "2.20.0"

\header{
  title = "(I Want to Be Your) Mirror"
}

music = \relative {
%   \key e \minor
  \numericTimeSignature
  \time 4/4
  \compressFullBarRests
  R1*16 |
  ees,,8 ees ees g g bes bes bes |
  bes bes bes bes bes bes bes bes |
}

\score {
  <<
    % \new Staff \with {midiInstrument = #"electric bass (finger)"} {
    %   \clef "bass_8"
    %   \music
    % }

    \new TabStaff \with {
      stringTunings = \stringTuning <ees,, aes,, des, ges,>
      midiInstrument = #"electric bass (finger)"
    } {
      \tabFullNotation
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
