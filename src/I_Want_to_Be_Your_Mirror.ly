\version "2.20.0"

\header {
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
  R1*8 | % This isn't actually rest
  g1~ | g | c~ | c |
  g1~ | g | c~ | c |
  g4. g8 g4. g8 r8 g8 r8 g8 g2 | c4. c8 c4. c8 r8 c8 r8 c8 c2 |
  g4. g8 g4. g8 r8 g8 r8 g8 g2 | c4. c8 c4. c8 r8 c8 r8 c8 c2 |
  
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
