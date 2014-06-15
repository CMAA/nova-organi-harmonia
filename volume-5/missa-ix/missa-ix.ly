\version  "2.18.0"
\language "english"
\include "../../noh.ily"

\paper {
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "IX. IN FESTIS B. M. V. 1."
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "IX. IN FESTIS B. M. V. 1." }
    \line {}
  }
}

\header {
  title = "IX. IN FESTIS B. MARIÆ V. 1."
  subtitle = "(Cum jubilo)"
  tagline = ""
}

\include "kyrie.ly"
\include "gloria.ly"
\include "sanctus.ly"
\include "agnus-dei.ly"
\include "ite-missa-est.ly"
