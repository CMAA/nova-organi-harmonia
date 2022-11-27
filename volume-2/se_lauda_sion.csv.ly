\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.119
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Lauda Sion" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Lauda Sion"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Lauda Sion" }
    \line {}
  }
}

chantText = \lyricmode {
Lau -- da Si -- on Sal -- va -- tó -- rem, 
Lau -- da du -- cem et pa -- stó -- rem, 
In hy -- mnis et cán -- ti -- cis. 
Quan -- tum pot -- es, tan -- tum au -- de: 
Qui -- a ma -- jor o -- mni lau -- de, 
Nec lau -- dá -- re, súf -- fi -- cis. 
Lau -- dis the -- ma spe -- ci -- á -- lis, 
Pa -- nis vi -- vus et vi -- tá -- lis 
Hó -- di -- e pro -- pó -- ni -- tur. 
Quem in sa -- cræ men -- sa cœ -- næ, 
Tur -- bæ fra -- trum du -- o -- dé -- næ 
Da -- tum non am -- bí -- gi -- tur. 
Sit laus ple -- na, sit so -- nó -- ra, 
Sit ju -- cún -- da, sit de -- có -- ra 
Men -- tis ju -- bi -- lá -- ti -- o. 
Di -- es e -- nim so -- lé -- mnis á -- gi -- tur, 
In qua men -- sæ pri -- ma re -- có -- li -- tur 
Hu -- jus in -- sti -- tú -- ti -- o. 
In hac men -- sa no -- vi Re -- gis, 
No -- vum Pa -- scha no -- væ le -- gis, 
Pha -- se ve -- tus tér -- mi -- nat. 
Ve -- tu -- stá -- tem nó -- vi -- tas, 
Um -- bram fu -- gat vé -- ri -- tas, 
No -- ctem lux e -- lí -- mi -- nat. 
Quod in cœ -- na Chri -- stus ges -- sit, 
Fa -- ci -- én -- dum hoc ex -- prés -- sit 
In su -- i me -- mó -- ri -- am. 
Do -- cti sa -- cris in -- sti -- tú -- tis, 
Pa -- nem, vi -- num in sa -- lú -- tis 
Con -- se -- crá -- mus hó -- sti -- am. 
Dog -- ma da -- tur chri -- sti -- á -- nis, 
Quod in car -- men trans -- it pa -- nis, 
Et vi -- num in sán -- gui -- nem. 
Quod non ca -- pis, quod non vi -- des, 
A -- ni -- mó -- sa fir -- mat fi -- des, 
Præ -- ter re -- rum ór -- di -- nem. 
Sub di -- vér -- sis spe -- ci -- é -- bus, 
Si -- gnis tan -- tum, et non re -- bus, 
La -- tent res ex -- í -- mi -- æ. 
Ca -- ro ci -- bus, san -- guis po -- tus: 
Ma -- net ta -- men Chri -- stus to -- tus 
Sub u -- trá -- que spé -- ci -- e. 
A su -- mén -- te non con -- cí -- sus, 
Non con -- frá -- ctus, non di -- ví -- sus: 
In -- te -- ger ac -- cí -- pi -- tur. 
Su -- mit u -- nus, su -- munt mil -- le: 
Quan -- tum i -- sti, tan -- tum il -- le: 
Nec sum -- ptus con -- sú -- mi -- tur. 
Su -- munt bo -- ni, su -- munt ma -- li: 
Sor -- te ta -- men in -- æ -- quá -- li, 
Vi -- tæ vel in -- tér -- i -- tus. 
Mors est ma -- lis, vi -- ta bo -- nis: 
Vi -- de pa -- ris sum -- pti -- ó -- nis 
Quam sit dis -- par éx -- i -- tus. 
Fra -- cto de -- mum sa -- cra -- mén -- to, 
Ne va -- cíl -- les, sed me -- mén -- to 
Tan -- tum es -- se sub frag -- mén -- to, 
Quan -- tum to -- to té -- gi -- tur. 
Nul -- la re -- i fit scis -- sú -- ra: 
Si -- gni tan -- tum fit fra -- ctú -- ra, 
Qua nec sta -- tus, nec sta -- tú -- ra 
Si -- gná -- ti mi -- nú -- i -- tur. 
Ec -- ce pa -- nis An -- ge -- ló -- rum, 
Fa -- ctus ci -- bus vi -- a -- tó -- rum: 
Ve -- re pa -- nis fi -- li -- ó -- rum, 
Non mit -- tén -- dus cá -- ni -- bus. 
In fi -- gú -- ris præ -- si -- gná -- tur, 
Cum I -- sa -- ac im -- mo -- lá -- tur, 
A -- gnus Pa -- schæ de -- pu -- tá -- tur, 
Da -- tur man -- na pá -- tri -- bus. 
Bo -- ne pa -- stor, pa -- nis ve -- re, 
Je -- su, no -- stri mi -- se -- ré -- re: 
Tu nos pa -- sce, nos tu -- é -- re, 
Tu nos bo -- na fac vi -- dé -- re 
In ter -- ra vi -- vén -- ti -- um. 
Tu qui cun -- cta scis et va -- les, 
Qui nos pa -- scis hic mor -- tá -- les: 
Tu -- os i -- bi com -- men -- sá -- les, 
Co -- hæ -- ré -- des et so -- dá -- les 
Fac san -- ctó -- rum cí -- vi -- um. 
A -- men. Al -- le -- lú -- ia. }

chantMusic = {
\tieDown   cis'4 e'4 fis'4 e'4 a'4 gis'4 fis'4 e'4 \divisioMaior
 fis'4 gis'4 e'4 cis'4 d'4 cis'4 \forceBreak
 b4 ( cis'4) e'4 \divisioMaior
 fis'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis
 cis'4 e'4 fis'4 e'4 a'4 gis'4 fis'4 e'4 \divisioMaior \forceBreak

 fis'4 gis'4 e'4 cis'4 d'4 cis'4 b4 ( cis'4) e'4 \divisioMaior
 fis'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis \forceBreak

 gis'4 e'4 fis'4 e'4 b'4 a'4 gis'4 ( fis'4 e'4 fis'4) gis'4 \divisioMaior
 gis'4 fis'4 a'4 e'4 cis'4 d'4 cis'4 b4 \divisioMaior \forceBreak

 fis'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis
 gis'4 e'4 fis'4 e'4 b'4 a'4 gis'4 ( fis'4 e'4 fis'4) gis'4 \divisioMaior \forceBreak

 gis'4 fis'4 a'4 e'4 cis'4 d'4 cis'4 b4 \divisioMaior
 fis'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis \forceBreak

 d'4 b'4 cis''4 a'4 b'4 gis'4 ( fis'4) a'4 b'4 \divisioMaior
 b'4 a'4 gis'4 fis'4 a'4 b'4 b'4 e'4 \divisioMaior \forceBreak

 fis'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis
 e'4 d'4 cis'4 ( b4) a4 e'4 fis'4 e'4 d'4 e'4 e'4 \divisioMaior \forceBreak

 e'4 d'4 cis'4 ( b4) a4 e'4 fis'4 e'4 d'4 e'4 e'4 \divisioMaior
 a'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis \forceBreak

 e'4 b'4 cis''4 a'4 b'4 gis'4 ( fis'4) a'4 b'4 \divisioMaior
 b'4 a'4 gis'4 fis'4 a'4 b'4 b'4 e'4 \divisioMaior \forceBreak

 fis'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis
 e'4 d'4 cis'4 ( b4) a4 e'4 ( fis'4) d'4 e'4 \divisioMaior \forceBreak

 e'4 d'4 cis'4 ( b4) a4 e'4 ( fis'4) d'4 e'4 \divisioMaior
 a'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis \forceBreak

 b'4 a'4 b'4 b'4 ( cis''4) e''4 d''4 cis''4 b'4 \divisioMaior
 e''4 d''4 cis''4 a'4 b'4 cis''4 b'4 e'4 \divisioMaior \forceBreak

 fis'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis
 b'4 a'4 b'4 b'4 ( cis''4) e''4 d''4 cis''4 b'4 \divisioMaior \forceBreak

 e''4 d''4 cis''4 a'4 b'4 cis''4 b'4 e'4 \divisioMaior
 fis'4 gis'4 fis'4 e'4 d'4 e'4 e'4 \finalis \forceBreak

 b'4 a'4 b'4 a'4 d''4 cis''4 b'4 a'4 \divisioMaior
 a'4 b'4 d''4 cis''4 b'4 a'4 b'4 b'4 \divisioMaior \forceBreak

 b'4 gis'4 a'4 fis'4 ( e'4) d'4 e'4 e'4 \finalis
 b'4 a'4 b'4 a'4 d''4 cis''4 b'4 a'4 \divisioMaior \forceBreak

 a'4 b'4 d''4 cis''4 b'4 a'4 b'4 b'4 \divisioMaior
 b'4 gis'4 a'4 fis'4 ( e'4) d'4 e'4 e'4 \finalis \forceBreak

 b'4 a'4 gis'4 ( a'4) fis'4 ( e'4) gis'4 a'4 b'4 ( cis''4) b'4 \divisioMaior
 a'4 b'4 d''4 cis''4 b'4 a'4 gis'4 fis'4 \divisioMaior \forceBreak

 a'4 b'4 e'4 fis'4 gis'4 fis'4 e'4 \finalis
 b'4 a'4 gis'4 ( a'4) fis'4 ( e'4) gis'4 a'4 b'4 ( cis''4) b'4 \divisioMaior \forceBreak

 a'4 b'4 d''4 cis''4 b'4 a'4 gis'4 fis'4 \divisioMaior
 a'4 b'4 e'4 fis'4 gis'4 fis'4 e'4 \finalis \forceBreak

 b'4 b'4 ( cis''4) e''4 b'4 e''4 d''4 cis''4 b'4 \divisioMaior
 cis''4 d''4 e''4 d''4 cis''4 b'4 b'4 gis'4 \divisioMaior \forceBreak

 b'4 gis'4 a'4 fis'4 ( e'4) d'4 e'4 e'4 \finalis
 b'4 b'4 ( cis''4) e''4 b'4 e''4 d''4 cis''4 b'4 \divisioMaior \forceBreak

 cis''4 d''4 e''4 d''4 cis''4 b'4 b'4 gis'4 \divisioMaior
 b'4 gis'4 a'4 fis'4 ( e'4) d'4 e'4 e'4 \finalis \forceBreak

 e'4 b'4 b'4 a'4 b'4 d''4 cis''4 ( b'4 a'4) b'4 \divisioMaior
 b'4 cis''4 a'4 fis'4 a'4 b'4 a'4 gis'4 \divisioMaior \forceBreak

 e'4 fis'4 e'4 fis'4 d'4 e'4 e'4 \finalis
 e'4 b'4 b'4 a'4 b'4 d''4 cis''4 ( b'4 a'4) b'4 \divisioMaior \forceBreak

 b'4 cis''4 a'4 fis'4 a'4 b'4 a'4 gis'4 \divisioMaior
 e'4 fis'4 e'4 fis'4 d'4 e'4 e'4 \finalis \forceBreak

 a'4 gis'4 fis'4 e'4 fis'4 d'4 e'4 e'4 \divisioMaior
 e'4 gis'4 b'4 b'4 cis''4 a'4 b'4 b'4 \divisioMaior \forceBreak

 b'4 b'4 cis''4 a'4 b'4 cis''4 b'4 gis'4 \divisioMaior
 b'4 gis'4 a'4 fis'4 ( e'4) d'4 e'4 e'4 \finalis \forceBreak

 a'4 gis'4 fis'4 e'4 fis'4 d'4 e'4 e'4 \divisioMaior
 e'4 gis'4 b'4 b'4 cis''4 a'4 b'4 b'4 \divisioMaior \forceBreak

 b'4 b'4 cis''4 a'4 b'4 cis''4 b'4 gis'4 \divisioMaior
 b'4 gis'4 a'4 fis'4 ( e'4) d'4 e'4 e'4 \finalis \forceBreak

 b'4 a'4 b'4 gis'4 a'4 fis'4 d'4 e'4 \divisioMaior
 e'4 gis'4 b'4 b'4 cis''4 a'4 b'4 b'4 \divisioMaior \forceBreak

 cis''4 d''4 e''4 d''4 cis''4 ( b'4) a'4 b'4 b'4 \divisioMaior
 b'4 gis'4 a'4 fis'4 ( e'4) d'4 e'4 e'4 \finalis \forceBreak

 b'4 a'4 b'4 gis'4 a'4 fis'4 d'4 e'4 \divisioMaior
 e'4 gis'4 b'4 b'4 cis''4 a'4 b'4 b'4 \divisioMaior \forceBreak

 cis''4 d''4 e''4 d''4 cis''4 ( b'4) a'4 b'4 b'4 \divisioMaior
 b'4 gis'4 a'4 fis'4 ( e'4) d'4 e'4 e'4 \finalis \forceBreak

 e'4 e'4 fis'4 e'4 gis'4 a'4 b'4 ( cis''4) b'4 \divisioMaior
 cis''4 d''4 cis''4 b'4 cis''4 gis'4 ( fis'4) a'4 b'4 \divisioMaior \forceBreak

 e'4 gis'4 b'4 b'4 cis''4 a'4 b'4 b'4 \divisioMaior
 b'4 cis''4 a'4 fis'4 a'4 gis'4 fis'4 e'4 \divisioMaior \forceBreak

 d'4 fis'4 a'4 ( b'4) e'4 fis'4 e'4 e'4 \finalis
 e'4 e'4 fis'4 e'4 gis'4 a'4 b'4 ( cis''4) b'4 \divisioMaior \forceBreak

 cis''4 d''4 cis''4 b'4 cis''4 gis'4 ( fis'4) a'4 b'4 \divisioMaior
 e'4 gis'4 b'4 b'4 cis''4 a'4 b'4 b'4 \divisioMaior \forceBreak

 b'4 cis''4 a'4 fis'4 a'4 gis'4 fis'4 e'4 \divisioMaior
 d'4 fis'4 a'4 ( b'4) e'4 fis'4 e'4 e'4 \finalis
 e'4 ( fis'4 e'4) d'4 ( e'4) \divisioMinima
 fis'4 d'4 fis'4 ( \once \tweak #'font-size #-4 e' ) e'4 \finalis

}

altoMusic = {
cis'2*4/2 ~ cis'2 ~ cis'2 ~ \divisioMaior
cis'2 b2 a2 r4 cis'4 ~ cis'4 ~ \divisioMaior
cis'2 ~ cis'2 b2 ~ b4 \finalis
a2 ~ a2 ~ a2 ~ a2 \divisioMaior
cis'2 b2 a2 ~ a2 gis4 \divisioMaior
b2 a2 ~ a2 gis4 \finalis
b2 ~ b4 e'4 ~ e'2 cis'2*4/2 e'4 \divisioMaior
b2 a2 fis2 ~ fis2 \divisioMaior
a2*4/2 ~ a2 gis4 \finalis
b2 ~ b4 e'4 ~ e'2 cis'2*4/2 b4 ~ \divisioMaior
b2 a2 fis2 ~ fis2 \divisioMaior
a2 ~ a2 ~ a2 gis4 \finalis
e'2 ~ e'2*3/2 ~ e'2 ~ e'2 ~ \divisioMaior
e'2 ~ e'2 ~ e'2 ~ e'2 \divisioMaior
cis'2 ~ cis'2 b2 ~ b4 \finalis
a2 ~ a2*4/2 b2 ~ b2 a4 ~ \divisioMaior
a2 ~ a2*4/2 ~ a2 ~ a2 ~ a4 ~ \divisioMaior
a2 cis'2 b2 ~ b4 \finalis
<e' b>2 e'2*3/2 cis'2*3/2 b4 \divisioMaior
e'2 cis'2 ~ cis'2 b2 \divisioMaior
cis'2 b2 a2 gis4 \finalis
a2 ~ a2 ~ a4 b2*3/2 a4 ~ \divisioMaior
a2 ~ a2 ~ a4 b2*3/2 cis'4 ~ \divisioMaior
cis'2 b2 a2 gis4 \finalis
r2 fis'2*3/2 ~ fis'2 ~ fis'2 \divisioMaior
b'2 fis'2 e'2 ~ e'2 ~ \divisioMaior
e'2 d'2 b2 ~ b4 \finalis
e'2 ~ e'4 d'2 fis'2 ~ fis'2 ~ \divisioMaior
fis'2 d'2 e'2 ~ e'2 \divisioMaior
b2 a2 ~ a2 gis4 \finalis
fis'2 ~ fis'2 ~ fis'2 ~ fis'2 \divisioMaior
e'2 d'2 fis'2 ~ fis'2 ~ \divisioMaior
fis'4 e'2 d'2 ~ d'2 b4 \finalis
fis'2 e'2 d'2 cis'2 \divisioMaior
fis'2 ~ fis'2 e'2 d'2 \divisioMaior
e'2 cis'2*3/2 a2 gis4 \finalis
e'2 ~ e'2*4/2 ~ e'2 ~ e'2 ~ e'4 ~ \divisioMaior
e'2 d'2 e'2 ~ e'2 \divisioMaior
d'2 cis'2 d'2 e'4 ~ \finalis
e'2 ~ e'2 cis'2 ~ cis'2 e'2 ~ e'4 ~ \divisioMaior
e'2 ~ e'2 ~ e'2 ~ e'2 \divisioMaior
d'2 e'4 fis'4 d'2 e'4 ~ \finalis
e'2*3/2 ~ e'2 fis'2 ~ fis'2 \divisioMaior
a'2 ~ a'2 ~ a'2 gis'2 \divisioMaior
e'2 ~ e'4 cis'2 r2*3/2 \finalis
e'4 ~ e'2 ~ e'2 fis'2 ~ fis'2 ~ \divisioMaior
fis'2 e'2 fis'2 e'2 ~ \divisioMaior
e'2 ~ e'4 a2 ~ a2 gis4 \finalis
e'2 ~ e'2 d'2 fis'2*3/2 ~ fis'4 ~ \divisioMaior
fis'2 e'2 d'2 cis'2 ~ \divisioMaior
cis'2 ~ cis'2 a2 b4 ~ \finalis
b2 e'2 d'2 e'2*3/2 d'4 \divisioMaior
e'2 ~ e'2 d'2 cis'2 ~ \divisioMaior
cis'2 ~ cis'2 a2 b4 \finalis
cis'2 ~ cis'2 d'2 r2 \divisioMaior
e'2 ~ e'2 fis'2 ~ fis'4 e'4 ~ \divisioMaior
e'2 ~ e'2 d'2 e'2 ~ \divisioMaior
e'2 ~ e'4 cis'2 a2 gis4 \finalis
a2 ~ a2 ~ a2 gis2 \divisioMaior
cis'2 d'2 e'2 d'2 \divisioMaior
fis'2 d'2 e'2 ~ e'2 \divisioMaior
cis'2 ~ cis'4 a2 ~ a2 gis4 \finalis
e'2 ~ e'2 d'2 b4 cis'4 ~ \divisioMaior
cis'2 fis'2 d'4 fis'4 ~ fis'4 e'4 \divisioMaior
gis'2 fis'2 ~ fis'2*3/2 ~ fis'2 \divisioMaior
e'2 ~ e'4 cis'2 b2 ~ b4 \finalis
<e' b>2 ~ <e' b>2 <c' a>2 a4 gis4 \divisioMaior
cis'2 d'2 <f' d'>2 e'2 \divisioMaior
fis'2 ~ fis'2 ~ fis'2*3/2 <f' b>2 \divisioMaior
<e' b>2 <d' a>2*3/2 <b a>2 <b g>4 \finalis
r2*6/2 fis'2 ~ fis'4 ~ \divisioMaior
fis'2 ~ fis'2*4/2 ~ fis'4 ~ fis'2 \divisioMaior
e'2 ~ e'2 ~ e'2 fis'2 \divisioMaior
d'2 e'2 b2 cis'2 \divisioMaior
d'2 ~ d'2 cis'4 ~ cis'2 ~ cis'4 \finalis
r4 e'4 ~ e'2 ~ e'2 ~ e'2 d'4 \divisioMaior
fis'2 d'2*3/2 cis'2 e'4 d'4 \divisioMaior
<e' b>2 ~ <e' b>2 e'2 ~ e'2 \divisioMaior
fis'2 e'2 d'2 cis'2 \divisioMaior
d'2 ~ d'2 cis'4 d'2 b4 ~ \finalis
b2*3/2 ~ b2 \divisioMinima
a2 ~ a2 gis4 \finalis
}

tenorMusic = {
a2 ~ a2 ~ a2 ~ a2 ~ \divisioMaior
a2 gis2 r2 fis2 gis4 \divisioMaior
b2 a2 ~ a2 gis4 \finalis
e2 cis2 ~ cis2 ~ cis2 ~ \divisioMaior
cis2 ~ cis2 fis2 ~ fis2 e4 ~ \divisioMaior
e2 d2 b,2 ~ b,4 \finalis
r2 a2 gis2 a2*4/2 b4 \divisioMaior
e2 ~ e2 ~ e2 d2 ~ \divisioMaior
d2 e2 fis2 e4 ~ \finalis
e2 ~ e2 ~ e2 ~ e2*4/2 ~ e4 ~ \divisioMaior
e2 cis2 e2 d2 ~ \divisioMaior
d2 cis2 b,2 ~ b,4 \finalis
e2 a2*3/2 cis'2 ~ cis'4 b4 ~ \divisioMaior
b2 cis'2 ~ cis'2 b2 \divisioMaior
a2 ~ a2 ~ a2 gis4 \finalis
cis2 e2*4/2 d2 fis2 cis4 ~ \divisioMaior
cis2 e2*4/2 d2 fis2 e4 \divisioMaior
fis2 a2 ~ a2 gis4 \finalis
e2 fis2*3/2 e2*3/2 ~ e4 ~ \divisioMaior
e2 ~ e2 ~ e2 ~ e2 ~ \divisioMaior
e2 d2 b,2 b4 \finalis
cis2 e2*3/2 d2*3/2 cis4 ~ \divisioMaior
cis2 ea,2*3/2 fis2*3/2 gis4 \divisioMaior
fis2 cis2 fis2 e4 \finalis
e'2 ~ e'4 d'2 cis'2 d'2 \divisioMaior
fis'2 d'2 b2 ~ b2 ~ \divisioMaior
b2 a2 fis2 gis4 ~ \finalis
gis2 fis2*3/2 b2 ~ b2 ~ \divisioMaior
b2 a2 ~ a2 gis2 \divisioMaior
r2 d2 b,2 ~ b,4 \finalis
d'2 cis'2 b2 cis'2 ~ \divisioMaior
cis'2 a2 cis'2 b2*3/2 ~ b2 a2 ~ a2 gis4 \finalis
fis2 ~ fis2 ~ fis2 ~ fis2 \divisioMaior
cis'2 b2 fis2 ~ fis2 \divisioMaior
e2 fis2*3/2 ~ fis4 b,4 ~ b,4 \finalis
r2 cis'2*4/2 ~ cis'2 b2 ~ b4 \divisioMaior
cis'2 a2 cis'2 ~ cis'2 \divisioMaior
fis'2 b2 ~ b2 ~ b4 ~ \finalis
b2 cis'2 a2 fis2 a2 gis4 \divisioMaior
fis2 <a f>2 <b g>2 <c' a>2 \divisioMaior
<b f>2 <c' g>2 <b a>2 <b g>4 \finalis
r2*7/2 d'2 \divisioMaior
fis'2 ~ fis'2 ~ fis'2 e'2 \divisioMaior
cis'2 ~ cis'4 ~ cis'2 b2 ~ b4 ~ \finalis
b4 a2 gis2 b2 ~ b2 \divisioMaior
a2 ~ a2 ~ a2 gis2 \divisioMaior
e2 fis4 d2 fis2 e4 ~ \finalis
e2 fis2 ~ fis2 a2*3/2 fis4 \divisioMaior
a2 fis2 ~ fis2 e2 \divisioMaior
gis2 ~ gis2 fis2 e4 \finalis
gis2 e2 fis2 ~ fis2*3/2 ~ fis4 \divisioMaior
gis2 fis2 ~ fis2 e2 \divisioMaior
gis2 ~ gis2 fis2 e4 \finalis
r2*4/2 b2 cis'2 \divisioMaior
b2 a4 gis4 a2 gis2 ~ \divisioMaior
gis2 fis2 ~ fis2 gis2 ~ \divisioMaior
gis2 fis2*3/2 ~ fis2 e4 \finalis
cis2 d2 b,2 cis2 \divisioMaior
e2 fis2 ~ fis2 ~ fis2 ~ \divisioMaior
fis2 a2 ~ a2 gis2 \divisioMaior
e2 ~ e4 d2 b,2 ~ b,4 \finalis
r2*4/2 fis2 a4 gis4 ~ \divisioMaior
gis2 a2 fis2 gis2 \divisioMaior
a2 b2 e'2*3/2 d'2 \divisioMaior
cis'2 ~ cis'4 a2 <a f>2 gis4 ~ \finalis
gis2 ~ gis2 fis2 ~ fis4 e4 \divisioMaior
gis2 fis2 a2 gis2 \divisioMaior
a2 ~ a2 ~ a2*3/2 ~ a2 \divisioMaior
gis2 fis4 b, b,2 b,2 ~ b,4 \finalis
r2 d'2 e'2 ~ e'2 d'4 \divisioMaior
r2 cis'2*3/2 e'2 ~ e'4 d'4 \divisioMaior
cis'2 b2 a2 ~ a2 ~ \divisioMaior
a2 fis2 ~ fis2 gis2 \divisioMaior
a2 fis2 gis4 a2 gis4 \finalis
a2 ~ a2 e2 fis2*3/2 \divisioMaior
a2 fis2*3/2 e2 fis2 \divisioMaior
e2 e g,2 fis2 gis2 \divisioMaior
a2 fis2 ~ fis2 gis2 \divisioMaior
fis2 ~ fis2 gis4 a2 gis4 ~ \finalis
gis2*3/2 fis4 e4 \divisioMinima
d2 b,2 <e b,>4 \finalis
}

bassMusic = {
r2 gis2 fis2 a2 \divisioMaior
fis2 gis2 fis2 d2 cis4 ~ \divisioMaior
cis2 d2 fis2 e4 \finalis
a,2 gis,2 fis,2 a,2 ~ \divisioMaior
a,2 gis,2 fis,2 a,2 cis4 ~ \divisioMaior
cis2 b,2 fis,2 e,4 \finalis
e2 ~ e2 ~ e2 ~ e2*4/2 ~ e4 ~ \divisioMaior
e2 cis2 b,2 ~ b,2 ~ \divisioMaior
b,2*4/2 ~ b,2 e4 \finalis
e,2 gis,2 cis2 a,2*4/2 e,4 ~ \divisioMaior
e,2 fis,2 b,2 ~ b,2 ~ \divisioMaior
b,2 ~ b,2 ~ b,4 e,4 ~ e,4 \finalis
r2 fis2*3/2 a2 fis4 gis4 ~ \divisioMaior
gis2 a2 fis2 gis2 \divisioMaior
r2 d2 fis2 e4 \finalis
a,2 ~ a,2*4/2 ~ a,2 ~ a,2 ~ a,4 ~ \divisioMaior
a,2 ~ a,2*4/2 d2 b,2 cis4 \divisioMaior
r2*4/2 fis2 e4 \finalis
e,2 fis,2*3/2 a,2*3/2 gis,4 \divisioMaior
cis2 a,2 fis,2 gis,2 \divisioMaior
a,2 ~ a,2 fis,2 e,4 \finalis
a,2 ~ a,2*3/2 ~ a,2*3/2 ~ a,4 ~ \divisioMaior
a,2*5/2 d2*3/2 cis4 \divisioMaior
fis,2 gis,2 b,2 e,4 \finalis
r2 b2*3/2 ~ b2 ~ b2 ~ \divisioMaior
b2 a2 ~ a2 gis2 \divisioMaior
e2 ~ e2 ~ e2 ~ e4 ~ \finalis
e2 b,2*3/2 cis2 d2 \divisioMaior
b,2 ~ b,2 e2 ~ e2 ~ \divisioMaior
e2 b,2 e,2 ~ e,4 \finalis
r2*6/2 fis2 \divisioMaior
gis2 fis2 e2 d2 ~ \divisioMaior
d4 cis2 ~ cis2 b,2 e4 \finalis
d2 cis2 b,2 fis2 \divisioMaior
e2 d2 cis2 b,2 \divisioMaior
cis2 fis,4 a,2 b,2 e,4 \finalis
r2*6/2 a2 ~ a2 gis4 ~ \divisioMaior
gis2 fis2 ~ fis2 a2 \divisioMaior
b2 ~ b2 a2 gis4 \finalis
e2 ~ e2 ~ e2 ~ e2 ~ e2 ~ e4 ~ \divisioMaior
e2 ~ e2 ~ e2 ~ e2 ~ \divisioMaior
e2 ~ e2 ~ e2 ~ e4 \finalis
gis4 a2 gis2 b2 ~ b2 \divisioMaior
r2 b2 d'2 e'2 \divisioMaior
r2 fis4 a2 ~ a2 gis4 ~ \finalis
gis4 fis2 e2 b,2 d2 \divisioMaior
fis2 cis2 d2 e2 \divisioMaior
cis2 ~ cis4 ~ cis2 b,2 e4 \finalis
r2 b,2 ~ b,2 e2*3/2 d4 ~ \divisioMaior
d2 cis2 b,2 ~ b,2 ~ \divisioMaior
b,2 a,2 b,2 gis,4 \finalis
e2 cis2 b,2 ~ b,2*3/2 ~ b,4 \divisioMaior
e2 cis2 b,2 ~ b,2 ~ \divisioMaior
b,2 a,2 b,2 gis,4 \finalis
a,2 a2 ~ a2 ~ a2 \divisioMaior
gis2 e2 d2 e2 ~ \divisioMaior
e2 b,2 ~ b,2 cis2 ~ \divisioMaior
cis2 d2*3/2 b,2 cis4 \finalis
fis,2 ~ fis,2 ~ fis,2 cis,2 \divisioMaior
cis2 b,2 ~ b,2 ~ b,2 \divisioMaior
d2 b,2 e2 ~ e2 \divisioMaior
a,2 fis,4 b,2 e,2 ~ e,4 \finalis
r2 e2 ~ e2 ~ e2 ~ \divisioMaior
e2 ~ e2 ~ e2 ~ e2 ~ \divisioMaior
e2 ~ e2 ~ e2*3/2 ~ e2 ~ \divisioMaior
e2 fis2*3/2 e2 ~ e4 ~ \finalis
e2 cis2 d2 b,4 cis4 \divisioMaior
b,2 a,2 b,2 cis2 \divisioMaior
d2 b,2 e2*3/2 d2 \divisioMaior
cis2 b,2*3/2 e,2 ~ e,4 \finalis
r2*4/2 cis'2 b2 ~ b4 ~ \divisioMaior
b2 a2*3/2 cis'2 b2 \divisioMaior
r2 gis2 fis2 d2 \divisioMaior
b,2 cis2 d2 b,2 ~ \divisioMaior
b,2 ~ b,2 ~ b,4 a,2 cis4 ~ \finalis
cis2 d2 cis2 b,2*3/2 \divisioMaior
b2 a,2*3/2 ~ a,2 ~ a,2 ~ \divisioMaior
a,2*4/2 ~ a,2 e2 \divisioMaior
d2 cis2 b,2 cis2 ~ \divisioMaior
cis2 b,2 ~ b,4 ~ b,2 e4 ~ \finalis
e2*3/2 ~ e2 \divisioMinima
e,2 ~ e,2 ~ e,4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        ""
        "VII"
      }
      \new Staff = up <<
        \new Voice = "chant" {
          \voiceOne \global \chantMusic
        }
        \new Voice {
          \voiceTwo \global \altoMusic
        }
      >>

      \new Staff = down <<
        \clef bass
        \new Voice {
          \voiceOne \global \tenorMusic
        }
        \new Voice {
          \voiceTwo \global \bassMusic
        }
	\new Voice {
        \voiceThree \global \voiceLines
        }
      >>
    >>
    \new Lyrics \lyricsto chant {
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
