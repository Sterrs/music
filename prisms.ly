\version "2.20.0"

\header{
  title = "Prisms"
}

music = \relative {
  \key e \minor
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
  e,4. e8 e2 |
  dis4. dis8 dis2 |
  d4. d8 d2 |
  c4. c8 c4 g |
  e'4. e8 e4 fis |
  dis4. dis8 dis4 b |
  d4. d8 d4 b |
  c4. c8 c8 b a g |
  b2 dis | e1 |
  b2 dis | e1 |
  b8 b b b e e e e |
  dis dis dis dis b b b b }
  e4. dis8 e4. dis8 |
  e8. g16 fis8 e dis4 b |
  e,4 e'8 dis e4. dis8 |
  e8. g16 fis8 e dis4 b |
  e,8. e16 fis8 g c b a g |
  a8. a16 g8 a b a g fis |
  e8. e16 fis8 g c b a g |
  a8. a16 g8 a b a g fis |
  e4 e'8 dis e4. dis8 |
  e8. g16 fis8 e dis4 b |
  e,4 e'8 dis e4. dis8 |
  e8. g16 fis8 e dis4 b |
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
  % \midi {
  %   \tempo 4 = 118
  % }
}

\header {
  tagline = ""  % removed
}
