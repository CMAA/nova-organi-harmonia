\version "2.22.0"
\include "gregorian.ly"
\include "noh2.ily"

%Proofed 3/14

global = {
  \cadenzaOn
  \override Glissando #'thickness = #2.0
  \set tieWaitForNote = ##t
}

chantText = \lyricmode {
	Di -- es i -- rae, di -- es il -- la,
	Sol -- vet sae -- clum in fa -- víl -- la:
	Te -- ste Da -- vid cum Si -- býl -- la.
	Quan -- tus tre -- mor est fú -- tu -- rus,
	Quan -- do ju -- dex est ven -- tú -- rus,
	Cunc -- ta stri -- cte di -- scus -- sú -- rus!
	Tu -- ba mi -- rum spar -- gens so -- num
	Per se -- púl -- cra re -- gi -- ó -- num,
	Co -- get o -- mnes an -- te thro -- num.
	Mors stu -- pé -- bit et na -- tú -- ra,
	Cum re -- súr -- get cre -- a -- tú -- ra,
	Ju -- di -- cán -- ti re -- spon -- su -- ra.
	Li -- ber scri -- ptus pro -- fe -- ré -- tur,
	In quo to -- tum con -- ti -- né -- tur,
	Un -- de mun -- dus ju -- di -- cé -- tur.
	Ju -- dex er -- go cum se -- dé -- bit,
	Quid -- quid la -- tet ap -- pa -- ré -- bit:
	Nil i -- núl -- tum re -- ma -- né -- bit.
	Quid sum mi -- ser tunc di -- ctú -- rus?
	Quem pa -- tró -- num ro -- ga -- tú -- rus?
	Cum vix ju -- stus sit se -- cú -- rus.
	Rex tre -- mén -- dae ma -- je -- stá -- tis,
	Qui sal -- ván -- dos sal -- vas gra -- tis,
	Sal -- va me, fons pi -- e -- tá -- tis. 
	Re -- cor -- dá -- re Je -- su pi -- e,
	Quod sum cau -- sa tu -- ae vi -- ae:
	Ne me per -- das il -- la di -- e.
	Quae -- rens me, se -- dí -- sti las -- sus:
	Re -- de -- mí -- sti cru -- cem pas -- sus:
	Tan -- tus la -- bor non sit cas -- sus.
	Ju -- ste ju -- dex ul -- ti -- ó -- nis,
	Do -- mum fac re -- mis -- si -- ó -- nis,
	An -- te di -- em ra -- ti -- ó -- nis.
	In -- ge -- mí -- sco, tam -- quam re -- us:
	Cul -- pa ru -- bet vul -- tus me -- us:
	Sup -- pli -- cán -- ti par -- ce De -- us.
	Qui Ma -- rí -- am ab -- sol -- ví -- sti,
	Et la -- tró -- nem ex -- au -- dí -- sti,
	Mi -- hi quo -- que spem de -- dí -- sti.
	Pre -- ces me -- ae non sunt di -- gnae:
	Sed tu bo -- nus fac be -- ní -- gne,
	Ne pe -- rén -- ni cre -- mer i -- gne.
	In -- ter o -- ves lo -- cum prae -- sta,
	Et ab hoe -- dis me se -- qué -- stra,
	Stá -- tu -- ens in par -- te dex -- tra.
	Con -- fu -- tá -- tis ma -- le -- dí -- ctis,
	Flam -- mis á -- cri -- bus ad -- dí -- ctis:
	Vo -- ca me cum be -- ne -- dí -- ctis.
	O -- ro sup -- plex et ac -- clí -- nis,
	Cor con -- trí -- tum qua -- si ci -- nis:
	Ge -- re cu -- ram me -- i fi -- nis.
	La -- cri -- mó -- sa di -- es il -- la,
	Qua re -- súr -- get ex fa -- víl -- la,
	Ju -- di -- cán -- dus ho -- mo re -- us:
	Hu -- ic er -- go par -- ce De -- us.
	Pi -- e Je -- su Dó -- mi -- ne, do -- na e -- is ré -- qui -- em.
	A -- men. 
}

chantMusic = {
  \tieDown
	\key d \major
g'4 fis'4 
g'4 e'4 
fis'4 d'4 
e'4 e'4 
\divisioMaior
g'4 g'4( a'4) 
g'4( fis'4) e'4( d'4) 
fis'4 
g'4 fis'4 e'4 
\divisioMaior \bar "" \break
b4 d'4( e'4) 
e'4 e'4( d'4) 
fis'4 
g'4 fis'4 e'4 
\finalis
g'4 fis'4 
g'4 e'4 
fis'4 
d'4 e'4 e'4 
\divisioMaior \bar "" \break
g'4 g'4( a'4) 
g'4( fis'4) e'4( d'4) 
fis'4 
g'4 fis'4 e'4 
\divisioMaior
b4 d'4( e'4) 
e'4 e'4( d'4) 
fis'4 g'4 fis'4 e'4 
\finalis \bar "" \break
b'4 d''4 
d''4 cis''4( a'4 b'4) 
b'4( a'4 g'4) a'4 
b'4 b'4( e'4) 
\divisioMaior
g'4 
fis'4 g'4 e'4 
fis'4 d'4 e'4 e'4 
\bar "" \break

\divisioMaior
g'4 a'4( b'4) 
b'4( a'4 g'4) fis'4( e'4 d'4) 
fis'4 g'4 
fis'4 e'4 
\finalis
b'4 
d''4 d''4 cis''4( a'4 b'4) 
b'4( a'4 g'4) 
g'4 b'4 b'4( e'4) 
\bar "" \break

\divisioMaior
g'4 
fis'4 g'4 e'4 
fis'4 d'4 e'4 e'4 
\divisioMaior
g'4 a'4( b'4) b'4( a'4 g'4) fis'4( e'4 d'4) 
fis'4 g'4 fis'4 e'4 
\finalis \bar "" \break
b'4 a'4( g'4) 
a'4 b'4( e'4) 
e'4( d'4) b4 d'4( e'4) e'4 
\divisioMaior
g'4( fis'4) 
e'4 
d'4 b4  \bar "" \break
d'4 e'4 g'4 fis'4( d'4 e'4) 
\divisioMaior
b'4 g'4 
a'4 e'4 
d'4 e'4 g'4 fis'4( d'4 e'4) 
\finalis \bar "" \break
b'4 a'4( g'4) 
a'4 b'4( e'4) 
e'4( d'4) 
b4 d'4( e'4) e'4 
\divisioMaior
g'4( fis'4) e'4 
d'4 b4 
d'4 e'4 g'4 fis'4( d'4 e'4) 
\divisioMaior \bar "" \break
b'4 
g'4 a'4 e'4
d'4 e'4 g'4 fis'4( d'4 e'4) 
\finalis
g'4 
fis'4 
g'4 e'4
fis'4 
d'4 e'4 e'4 
\divisioMaior  \bar "" \break
g'4 
g'4( a'4) g'4( fis'4) e'4( d'4) 
fis'4 g'4 fis'4 e'4
\divisioMaior
b4 
d'4( e'4) 
e'4 e'4( d'4) 
fis'4 
g'4 fis'4 e'4 
\finalis \bar "" \break
g'4 
fis'4 g'4 e'4 
fis'4 d'4 e'4 e'4 
\divisioMaior
g'4 
g'4( a'4)
g'4( fis'4) e'4( d'4)
fis'4( g'4) g'4 
fis'4 e'4 
\divisioMaior \bar "" \break
b4 d'4( e'4) 
e'4 
e'4( d'4) 
fis'4 g'4 fis'4 e'4 
\finalis
b'4 d''4 d''4 cis''4( a'4 b'4) 
b'4( a'4 g'4) a'4 
b'4 b'4( e'4) 
\bar "" \break

\divisioMaior
g'4 
fis'4 
g'4 e'4 
fis'4 d'4 
e'4 e'4 
\divisioMaior
g'4 
a'4( b'4) 
b'4( a'4 g'4) fis'4( e'4 d'4) 
fis'4 g'4 
fis'4 e'4 
\finalis
b'4 d''4 
d''4 
cis''4( a'4 b'4) b'4( a'4 g'4) a'4 
\bar "" \break

b'4 b'4( e'4) 
\divisioMaior
g'4 fis'4 g'4 e'4 
fis'4 d'4 
e'4 e'4 
\divisioMaior
g'4 a'4( b'4) 
b'4( a'4 g'4) fis'4( e'4 d'4) 
fis'4 
g'4 
fis'4 e'4 
\finalis
b'4 a'4( g'4) 
\bar "" \break

a'4 b'4( e'4) 
e'4( d'4) b4 d'4( e'4) e'4 
\divisioMaior
g'4( fis'4) e'4 
d'4 
b4 d'4 e'4 g'4 fis'4( d'4 e'4) 
\divisioMaior
b'4 g'4 
a'4 e'4 
d'4 e'4 g'4 fis'4( d'4 e'4) 
\bar "" \break

\finalis
b'4 a'4( g'4) a'4 b'4( e'4) 
e'4( d'4) b4 
d'4( e'4) e'4 
\divisioMaior
g'4( fis'4) e'4 
d'4 b4 
d'4 e'4 
g'4 fis'4( d'4 e'4) 
\divisioMaior
b'4 g'4 a'4 e'4 
\bar "" \break

d'4 e'4 
g'4 fis'4( d'4 e'4) 
\finalis
g'4 
fis'4 g'4 e'4 
fis'4 d'4 e'4 e'4 
\divisioMaior
g'4 
g'4( a'4) g'4( fis'4) e'4( d'4) 
fis'4 g'4 fis'4 e'4 
\bar "" \break

\divisioMaior
b4 d'4( e'4) 
e'4 e'4( d'4) 
fis'4 
g'4 fis'4 e'4 
\finalis
g'4 fis'4 
g'4 e'4 
fis'4 
d'4 
e'4 e'4 
\divisioMaior
g'4 
g'4( a'4) 
g'4( fis'4) e'4( d'4) 
\bar "" \break

fis'4 
g'4 fis'4 e'4 
\divisioMaior
b4 
d'4( e'4) e'4 e'4( d'4) 
fis'4 g'4 
fis'4 e'4 
\finalis
b'4 d''4 
d''4 cis''4( a'4 b'4) 
b'4( a'4 g'4) a'4 
b'4 b'4( e'4) 
\bar "" \break

\divisioMaior
g'4 
fis'4 
g'4 e'4 
fis'4 
d'4 e'4 e'4 
\divisioMaior
g'4 a'4( b'4) b'4( a'4 g'4) 
fis'4( e'4 d'4) 
fis'4 g'4 
fis'4 e'4 
\finalis
b'4 d''4 d''4 cis''4( a'4 b'4) 
\bar "" \break

b'4( a'4 g'4) a'4 b'4 b'4( e'4) 
\divisioMaior
g'4 fis'4 
g'4 e'4 fis'4 
d'4 e'4 e'4 
\divisioMaior
g'4 a'4( b'4) 
b'4( a'4 g'4) 
fis'4( e'4 d'4) 
fis'4 g'4 fis'4 e'4 
\bar "" \break

\finalis
b'4 a'4( g'4) 
a'4 b'4( e'4) 
e'4( d'4) 
b4 d'4( e'4) e'4 
\divisioMaior
g'4( fis'4) 
e'4 d'4 b4 
d'4 e'4 
g'4 fis'4( d'4 e'4) 
\divisioMaior
b'4 g'4 
\bar "" \break

a'4 e'4 
d'4 e'4 
g'4 fis'4( d'4 e'4) 
\finalis
e'4 b'4 b'4( c''4) b'4 
a'4 g'4( fis'4) 
a'4 b'4 
\divisioMaior
g'4 
fis'4 a'4 b'4 
e'4( g'4 fis'4 e'4 d'4) 
g'4 fis'4 e'4 
\finalis
\bar "" \break
b'4 d''4 e''4 d''4( cis''4 b'4) 
b'4( a'4 g'4) a'4 
b'4 b'4( e'4) 
\divisioMaior
g'4 fis'4 
a'4 b'4 
e'4( g'4 fis'4 e'4 d'4) g'4 
fis'4 e'4 
\finalis
\bar "" \break

b'4 a'4 
g'4 fis'4 
a'4 a'4 b'4 
\divisioMaior
g'4 fis'4 
a'4 fis'4( e'4 fis'4) 
g'4 fis'4 e'4 
\finalis
d'4( fis'4 g'4 fis'4 e'4) d'4( e'4) 
\bar "" \break

\finalis
}

altoMusic = {
	b2*8/4~ 
b2*4/4~ 
b2*4/4 
d'4~ 
d'2*4/4 
b2*4/4 
a2*4/4 
b2*4/4~ 
b2*4/4 
s4 
b2*4/4~ 
b4 
a2*4/4 
b2*4/4~ 
b2*4/4 
c'2*4/4 
d'2*4/4~ 
d'2*4/4 
b2*4/4~ 
b4 
d'2*4/4~ 
d'2*4/4~ 
d'2*4/4 
b2*4/4~ 
b2*4/4~
b4 ~
b2*6/4~ 
b2*4/4 
c'2*4/4 
b2*4/4 
fis'2*6/4~ 
fis'2*6/4~ 
fis'2*4/4 
g'2*4/4 
fis'4 
e'2*4/4~ 
e'2*4/4~ 
e'2*4/4 -\tweak Glissando.Y-offset #-1.2 \glissando
fis'4
s4 
b2*4/4~ 
b2*6/4~ 
b2*6/4~ 
b2*6/4~ 
b2*4/4~ 
b2*4/4 
d'2*4/4 
fis'4 
e'2*6/4 
fis'2*8/4~ 
fis'4 
e'2*4/4 
c'2*4/4 
d'2*4/4~ 
d'2*4/4 -\tweak Glissando.Y-offset #-1.2 \glissando
e'4
s4 
e'4 
d'2*4/4~ 
d'2*6/4~ 
d'2*6/4 
b2*4/4~ 
b2*4/4 
s4 
d'2*6/4 
e'2*4/4~
e'4
s4 
b4~
b2*4/4~ 
b4 
d'2*6/4 
b2*4/4~ 
b2*6/4~ 
b2*6/4~ 
b2*4/4~ 
b2*4/4 
a2*4/4 
b2*6/4~ 
b4 
d'2*8/4~ 
d'2*4/4 
b2*4/4~
b4~
b2*4/4~ 
b4 
c'2*6/4 
b2*4/4 
a2*4/4 
b2*6/4~ 
b4~ 
b2*4/4 
e'2*4/4 
d'2*4/4 
c'4~ 
c'2*4/4 
b4 
s2*4/4 
d'2*4/4~ 
d'2*6/4 
e'4~
e'4 
b2*4/4~ 
b2*4/4 
a2*4/4 
b2*4/4~ 
b2*4/4 
s4 
b2*6/4~ 
b2*8/4~ 
b2*4/4 
d'2*8/4~ 
d'2*4/4 
c'2*4/4 
d'4~ 
d'2*4/4 
c'2*4/4 -\tweak Glissando.Y-offset #-0.8 \glissando
e'4 
d'4~
d'2*6/4 
b2*4/4 
b4 ~
b2*4/4 
c'4 
b2*8/4~ 
b2*4/4 
fis'2*6/4~ 
fis'2*6/4~ 
fis'2*4/4 
g'2*4/4 
fis'4 
e'2*4/4~ 
e'2*4/4~ 
e'2*4/4 
d'2*4/4 
b2*4/4~ 
b4 
d'2*4/4~ 
d'2*6/4~ 
d'2*6/4~ 
d'2*4/4 
b2*4/4 
fis'2*6/4~ 
fis'2*6/4 
d'2*8/4~ 
d'4 
e'2*4/4 
b2*4/4 
a2*4/4 
b2*4/4~ 
b2*4/4~ 
b2*6/4~ 
b2*6/4~ 
b2*6/4 
c'2*4/4 
b2*4/4 
s4 
d'2*4/4~ 
d'4 
e'2*4/4~
e'4
s4 
b4~
b2*4/4~ 
b4 
d'2*6/4 
b2*4/4~ 
b2*6/4~ 
b2*4/4~ 
b4 
d'2*4/4~ 
d'2*4/4 
b2*4/4~ 
b2*6/4~ 
b4 
d'2*8/4~ 
d'2*4/4 
b2*6/4~ 
b2*4/4~ 
b4 
c'2*6/4 
b2*4/4 
a2*4/4 
b2*6/4~ 
b4~ 
b2*4/4 
e'2*4/4 
d'2*6/4 
b2*4/4~ 
b4~ 
b2*8/4~ 
b2*4/4~ 
b2*4/4~ 
b2*6/4~ 
b2*4/4 
a2*4/4 
b2*4/4~ 
b2*4/4~ 
b4~ 
b2*4/4~ 
b4 
a2*4/4 
b2*4/4~ 
b2*4/4 
c'2*4/4 
d'2*4/4~ 
d'2*4/4 
b2*4/4~ 
b4 
e'2*4/4 
d'2*4/4~ 
d'2*4/4 
b2*4/4~ 
b2*4/4~ 
b4~ 
b2*6/4~ 
b2*4/4 
c'2*4/4 
b2*4/4 
fis'2*6/4~ 
fis'2*6/4~ 
fis'2*4/4 
g'2*4/4 
fis'4 
e'2*4/4~ 
e'2*4/4~ 
e'2*4/4 -\tweak Glissando.Y-offset #-1.2 \glissando
fis'4
s4 
b2*4/4~ 
b2*6/4~ 
b2*6/4~ 
b2*6/4~ 
b2*4/4~ 
b2*4/4 
d'2*4/4 
fis'4 
e'2*6/4 
fis'2*8/4~ 
fis'4 
e'2*4/4 
c'2*4/4 
d'2*4/4~ 
d'2*4/4 -\tweak Glissando.Y-offset #-1.2 \glissando
e'4
e'4~
e'4 
d'2~ 
d'2*6/4~ 
d'2*4/4~ 
d'4 
b2*4/4~ 
b2*4/4 
s4 
d'2*4/4~ 
d'4 
e'2*4/4~ 
e'4 
s4 
b4~ 
b2*4/4~ 
b4 
d'2*6/4 
b2*4/4~ 
b2*6/4~ 
b2*4/4~ 
b4 
d'2*4/4 
b2*4/4~ 
b2*4/4~ 
b2*6/4~ 
b4 
d'2*4/4 
c'2*6/4 
d'4~ 
d'2*4/4~ 
d'2*4/4~ 
d'2*4/4 
b2*4/4~ 
b2*6/4~
b2*6/4~ 
b2*4/4 
fis'2*6/4~ 
fis'2*6/4~ 
fis'2*4/4~ 
fis'2*4/4~ 
fis'4 
e'2*4/4 -\tweak Glissando.Y-offset #-1.2 \glissando
g'4
s4 
b2*4/4 
d'2*6/4~ 
d'2*6/4 
b2*4/4 
d'2*4/4~ 
d'2*4/4 
e'2*4/4 
d'4~ 
d'2*4/4~ 
d'4 
e'2*6/4 
b2*4/4~ 
b4 
a2*10/4 
g2 
}

tenorMusic = {
	\key d \major
e2*8/4 
a2*4/4 
g2*4/4~ 
\divisioMaior
g4 
fis2*4/4 
s2*4/4 
fis2*4/4 
a2*4/4 
g2*4/4~ 
\divisioMaior
g2*6/4 
fis4~ 
fis2*4/4 
s2*4/4 
g2*4/4~ 
\finalis
g2*4/4~ 
g2*4/4 
a2*4/4~ 
a2*4/4 
\divisioMaior
g4 
e2*4/4 
a2*4/4 
b2*4/4~ 
b2*4/4~ 
b2*4/4 
\divisioMaior
g4~ 
g2*4/4~ 
g4 
fis2*4/4~ 
fis2*4/4 
g2*4/4 
\finalis
d'2*4/4~ 
d'4 
e'2*6/4 
d'2*4/4~ 
d'2*4/4~ 
d'4 
b2*4/4~ 
\divisioMaior
b2*4/4~ 
b2*4/4 
a2*4/4~ 
a2*4/4 
\divisioMaior
g4 
fis2*4/4~ 
fis2*6/4 
a2*6/4~ 
a2*4/4 
g2*4/4 
\finalis
fis2*4/4 
b4~ 
b2*6/4~ 
b2*8/4 
g4~ 
g2*4/4~ 
\divisioMaior
g2*4/4~ 
g2*4/4 
a2*4/4~ 
a4 
g4~ 
\divisioMaior
g4~ 
g2*4/4 
fis2*6/4 
a2*6/4~ 
a2*4/4 
g2*4/4 
\finalis
b2*6/4~ 
b4~ 
b2*4/4 
a2*6/4 
g2*4/4~ 
g4 
\divisioMaior
d2*6/4 
g2*4/4 
fis2*4/4 
e4 
a2*4/4 
g4 
\divisioMaior
fis2*4/4 
e2*4/4 
fis2*4/4 
s4 
a2*4/4 
g4 
\finalis
fis4 
b2*4/4 
a4 
g2*4/4 
fis2*6/4~ 
fis2*4/4 
g4~ 
\divisioMaior
g2*6/4 
fis2*4/4~ 
fis2*4/4 
\shiftRight e4 
a2*4/4 
g4 
\divisioMaior
fis2*4/4~ 
fis2*4/4 
g2*4/4~ 
g4 
a2*4/4 
g4 
\finalis
s2*4/4 
b2*4/4~ 
b2*4/4~ 
b2*4/4~ 
\divisioMaior
b4 
g2*4/4~ 
g2*4/4 
fis2*4/4~ 
fis2*4/4 
g2*4/4 
\divisioMaior
fis4~ 
fis2*6/4~ 
fis2*4/4 
a2*4/4~ 
a4 
g4 
\finalis
s2*4/4 
b2*4/4 
a2*4/4 
g2*4/4~ 
\divisioMaior
g4~ 
g2*4/4~ 
g2*4/4 
fis2*4/4 
a2*6/4 
g2*4/4~ 
\divisioMaior
g4 
fis2*4/4~ 
fis4~ 
fis2*4/4 
a2*4/4~ 
a4 
g4 
\finalis
d'2*4/4~ 
d'4 
e'2*6/4 
d'2*4/4~ 
d'2*4/4~ 
d'4 
b2*4/4~ 
\divisioMaior
b2*4/4~ 
b2*4/4 
a2*4/4~ 
a2*4/4 
\divisioMaior
g4~ 
g2*4/4 
fis2*6/4 
b2*6/4 
a2*4/4
g2*4/4 
\finalis
fis2*4/4 
b4 
a2*6/4 
g2*8/4~ 
g4~ 
g2*4/4 
\divisioMaior
e2*4/4~ 
e2*4/4 
d2*4/4~ 
d2*4/4 
\divisioMaior
e4~ 
e2*4/4~ 
e2*6/4~ 
e2*6/4~ 
e2*4/4 
g2*4/4 
\finalis
b2*6/4~ 
b4~ 
b2*4/4 
a2*4/4 
g2*6/4~ 
g4 
\divisioMaior
d2*6/4 
g2*4/4 
fis2*4/4 
e4 
a2 
g4~ 
\divisioMaior
g2*4/4~ 
g2*4/4~ 
g2*4/4~ 
g4 
a2*4/4 
g4 
\finalis
e4 
b2*4/4 
a4 
g2*4/4 
fis2*6/4~ 
fis2*4/4 
g4~ 
\divisioMaior
g2*6/4 
fis2*4/4~ 
fis2*4/4 
\shiftRight e4 
a2*4/4 
g4 
\divisioMaior
fis2*4/4~ 
fis2*4/4~ 
fis2*4/4 
b4 
a2*4/4 
g4 
\finalis
e2*8/4 
a2*4/4 
g2*4/4~ 
\divisioMaior
g4 
fis2*4/4 
e2*4/4 
fis2*4/4 
a2*4/4 
g2*4/4~ 
\divisioMaior
g2*6/4 
fis4~ 
fis2*4/4 
s2*4/4 
g2*4/4~ 
\finalis
g2*4/4~ 
g2*4/4 
a2*4/4~ 
a2*4/4 
\divisioMaior
g4~ 
g2*4/4 
a2*4/4 
b2*4/4~ 
b2*4/4~ 
b2*4/4 
\divisioMaior
g4~ 
g2*4/4~ 
g4 
fis2*4/4~ 
fis2*4/4 
g2*4/4 
\finalis
d'2*4/4~ 
d'4 
e'2*6/4 
d'2*4/4~ 
d'2*4/4~ 
d'4 
b2*4/4~ 
\divisioMaior
b2*4/4~ 
b2*4/4 
a2*4/4
a2*4/4 
\divisioMaior
g4 
fis2*4/4~ 
fis2*6/4 
a2*6/4~ 
a2*4/4 
g2*4/4 
\finalis
fis2*4/4 
b4~ 
b2*6/4~ 
b2*8/4 
g4~ 
g2*4/4~ 
\divisioMaior
g2*4/4~ 
g2*4/4 
a2*4/4~ 
a2*4/4 
\divisioMaior
g4~ 
g2*4/4 
fis2*6/4 
a2*6/4~ 
a2*4/4 
g2*4/4 
\finalis
b2*6/4~ 
b4~ 
b2*4/4 
a2*6/4 
g2*4/4~ 
g4 
\divisioMaior
d2*6/4 
g2*4/4 
fis2*4/4 
e4 
a2*4/4 
g4~ 
\divisioMaior
g2*4/4~ 
g2*4/4~ 
g2*4/4~ 
g4 
a2*4/4 
g4~ 
\finalis
g2*4/4~ 
g2*6/4~ 
g4 
b2*4/4 
fis2*4/4 
\divisioMaior
a2*4/4 
fis2*4/4 
e2*6/4 
fis2*6/4 
g2*4/4 
\finalis
b2*4/4 
cis'4 
e'2*6/4 
d'2*4/4 
cis'2*4/4~ 
cis'4 
b2*4/4 
\divisioMaior
a2*4/4 
fis2*4/4 
g2*6/4 
a2*6/4~ 
a4 
g4~ 
\finalis
g2*4/4~ 
g2*4/4 
fis2*4/4~ 
fis4 
\divisioMaior
b2*4/4 
a4~ 
a2*6/4~ 
a2*4/4 
g4 
\finalis
b,2*10/4~ 
b,2
\finalis
}

bassMusic = {
	s2*22/4 
e2*4/4~ 
e2*4/4~ 
e2*4/4~ 
e2*4/4 
s2*6/4 
fis4~ 
fis2*4/4 
e2*4/4~ 
e2*4/4 
a,2*4/4 
b,2*4/4~ 
b,2*4/4 
e2*4/4~ 
e4 
d2*4/4~ 
d2*4/4~ 
d2*4/4 
e2*4/4 
g2*4/4 
fis4 
e2*4/4 
b,4~ 
b,2*4/4 
a,2*4/4 
e2*4/4 
s2*4/4 
b4~ 
b2*6/4~ 
b2*4/4 
a2*4/4 
g4~ 
g2*4/4 
fis2*4/4 
e2*4/4~ 
e2*4/4~ 
e2*4/4~ 
e2*6/4 
d2*6/4~ 
d2*6/4 
e2*4/4~ 
e2*4/4 
b,2*6/4~ 
b,2*6/4 
d2*8/4~ 
d4 
e2*4/4 
a,2*4/4 
b,2*4/4~ 
b,2*4/4 
c2*4/4~ 
c4 
b,2*4/4~ 
b,2*6/4~ 
b,2*6/4 
e2*4/4~ 
e2*4/4 
s2*6/4 
a4 
g2*4/4 
fis2*6/4~ 
fis2*4/4 
e4 
s2*22/4 
d2*4/4 
\shiftRight e2*4/4 
s2*4/4 
e4~ 
e2*4/4~ 
e4 
b,2*8/4~ 
b,2*4/4~ 
b,2*6/4 
a,2*4/4 
g,4 
a,2*6/4 
b,2*4/4~ 
b,2*4/4 
e4~ 
e2*4/4~ 
e4 
d2*4/4 
c2*4/4 
b,2*4/4 
a,4~ 
a,2*4/4 
e4 
s2*8/4 
a2*4/4 
g2*4/4 
fis4~ 
fis2*4/4 
e2*4/4~ 
e2*4/4 
d2*4/4 
e2*4/4~ 
e4 
d2*4/4 
c4 
b,2*4/4~ 
b,2*4/4 
e2*4/4 
b,2*4/4~ 
b,2*4/4~ 
b,2*4/4 
c2*4/4~ 
c4 
b,2*4/4 
a,2*4/4 
b,2*4/4~ 
b,2*6/4 
e2*4/4 
g,2*6/4 
a,4 
b,2*4/4~ 
b,2*4/4 
e2*4/4 
s2*4/4 
b4~ 
b2*6/4~ 
b2*4/4 
a2*4/4 
g4~ 
g2*4/4 
fis2*4/4 
e2*4/4~ 
e2*4/4~ 
e2*4/4~ 
e4 
b,2*4/4~ 
b,2*6/4~ 
b,2*6/4~ 
b,2*4/4 
e2*4/4 
d2*4/4~ 
d4 
fis2*6/4 
\shiftRight g2*8/4 
fis4 
e2*4/4 
d2*4/4 
c2*4/4 
a,2*4/4 
g,2*4/4~ 
g,4 
fis,2*4/4 
e,2*6/4 
g,2*6/4 
a,2*4/4 
e2*4/4 
s2*6/4 
a4 
g2*4/4 
fis2*4/4~ 
fis2*6/4 
e4 
s2*22/4 
b,2*4/4 
e2*4/4 
fis2*4/4 
e2*6/4~ 
e4 
b,2*8/4~ 
b,2*4/4~ 
b,2*6/4 
a,2*4/4 
g,4 
a,2*6/4 
b,2*4/4~ 
b,2*4/4 
e4~ 
e2*4/4~ 
e4 
d2*4/4 
c2*4/4 
b,2*6/4~ 
b,2*4/4 
e4 
s2*22/4 
e2*4/4~ 
e2*4/4~ 
e2*4/4~ 
e2*4/4 
s2*12/4 
e2*4/4~ 
e2*4/4 
a,2*4/4 
b,2*4/4~ 
b,2*4/4 
e2*4/4~ 
e4 
d2*4/4~ 
d2*4/4~ 
d2*4/4 
e2*4/4 
g2*4/4 
fis4 
e2*4/4 
b,4~ 
b,2*4/4 
a,2*4/4 
e2*4/4 
s2*4/4 
b4~ 
b2*6/4~ 
b2*4/4 
a2*4/4 
g4~ 
g2*4/4 
fis2*4/4 
e2*4/4~ 
e2*4/4~ 
e2*4/4~ 
e4~ 
e2*4/4 
d2*6/4~ 
d2*6/4 
e2*4/4~ 
e2*4/4 
b,2*6/4~ 
b,2*6/4 
d2*8/4~ 
d4 
e2*4/4 
a,2*4/4 
b,2*4/4~ 
b,2*4/4 
c2*4/4~ 
c4 
b,2*4/4~ 
b,2*6/4~ 
b,2*6/4 
e2*4/4~ 
e2*4/4 
s2*6/4 
a4 
g2*4/4 
fis2*6/4~ 
fis2*4/4 
e4 
s2*22/4 
b,2*4/4 
e2*4/4 
fis2*4/4 
e2*6/4~ 
e4 
b,2*4/4 
a,2*6/4 
b,4~ 
b,2*4/4~ 
b,2*4/4 
d2*4/4~ 
d2*4/4 
e2*6/4~ 
e2*6/4~ 
e2*4/4 
b2*4/4~ 
b4~ 
b2*6/4~ 
b2*4/4 
a2*4/4 
g4~ 
g2*4/4 
d2*4/4~ 
d2*4/4 
b,2*6/4~ 
b,2*6/4 
e2*4/4 
g,2*4/4 
b,2*4/4 
c2*4/4 
b,4~ 
b,2*4/4~ 
b,4 
c2*6/4 
e2*4/4~ 
e4 
s2*10/4 
e,2 
}

voiceLines = {
  \voiceLineStyle

  s2*18 s4
  \allowVoiceLineBreak
  \voiceLine "down" "down" e2*1/2 e2*1/2

  s4*7
  \allowVoiceLineBreak
  \voiceLine "down" "down" g2 g2*1/2

  s2*123 s4
  \allowVoiceLineBreak
  \voiceLine "down" "down" e2 e2*1/2

  s2*8
  \allowVoiceLineBreak
  \voiceLine "down" "down" e2 e2*1/2

  s2*56 s4
  \allowVoiceLineBreak
  \voiceLine "down" "down" g2 g2*1/2
}

\score{
  <<
    \new Lyrics
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Sequent."
        "I."
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
    \context Lyrics {
      \lyricsto chant {
        \chantText
      }
    }
  >>
}
