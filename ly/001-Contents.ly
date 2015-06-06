\version "2.14.2"
\include "util.ly"
\header {
  title = ""
  tagline = ""
}
#(set-global-staff-size 23) 
\markup{
    \center-column {
        \huge {
            \smallCaps "A Collection"
        }
        \italic{of}
        \huge {
            \smallCaps "Seasonal Carols"
        }
        \tiny {
            \smallCaps "selected, transcribed, and edited"
        }
        \italic{by}
        \fill-line {
            \huge {
                \smallCaps "Benjamin Bloomfield"
            }
            \teeny \column {
                \line {Fifth edition}
                \line {\smallCaps "November 2013"}
            }
        }
        \tiny {
            \smallCaps "further derived and deranged"
        }
        \italic{by}
        \fill-line {
            \huge {
                \smallCaps "S.W. Black"
            }
            \teeny \column {
                \line {Draft \circle{1} edition}
                \line {\smallCaps "2015"}
            }
        }
    }
    This work is free of known copyright restrictions.
    \vspace #0.5

    \wordwrap{
        Cover artwork, \italic{Song of the Angels}, painted in 1881 by
        William-Andolphe Bouguereau; downloaded from
        \with-url #"http://wikipaintings.org" \italic"wikipaintings.org"
    }
    \vspace #0.5

    \wordwrap{
        Inside cover artwork illustrated by Arthur Hughes, as found in
        \italic{Christmas Carols, New and Old}; downloaded from
        \with-url #"http://www.ccel.org/b/bramley/carols/jpg-hires/0001=i.jpg"
        \italic"http://www.ccel.org/b/bramley/carols/jpg-hires/0001=i.jpg"
    }
}
\pageBreak

\markup {
    \vspace #0.8
    \epsfile #X #85 #"../artwork/title.eps"
}
\pageBreak

\markup{
    \vspace #0.8 
    \center-align { \huge \smallCaps "Preface"}
    \vspace #0.8
\override #'(baseline-skip . 2.35)
\wordwrap{Several years ago, I found an old collection of Christmas
carols on the Internet, originally published in the late 1800s,
called \italic {Christmas Carols, New and Old}, the music edited
by Sir John Stainer and the words by Henrey Ramsden Bramley. Just
before Christmas  2010, I had this collection printed
as a book through Lulu.com, and I enjoyed some of its more obscure
carols enough that I thought I might combine them into a single
volume containing Christmas carols from several different sources.
So in early 2011, I set about creating such a book by simply
taking pages from several old collections of Christmas music and
combining them into a single volume.  I thought briefly of taking
the trouble of making new engravings of all the music, but it
seemed an enormous task: though I had used a program called
Lilypond to engrave music in the past, the amount of music I
wanted to include would take many days of transcribing and
proofreading, and it did not seem necessary at the time.} 
\vspace #0.5

\override #'(baseline-skip . 2.35) \wordwrap{
I had this collection ready (and in its third edition, the first edition
having been merely a draft, and the second edition lacking \italic{Gaudete})
in time for Christmas  2011, but after giving a few away as Christmas gifts,
I decided that the book in its current form was not ideal, and worthwhile
improvements could be made by making new engravings of all the music. 
Thus, I have taken the trouble of transcribing everything into Lilypond
for this new edition.  In this way, I have also been able to add nearly
60 more songs to the collection, including a handful of Advent hymns and
two songs, \italic{Ring Out Wild Bells} and \italic{Auld Lang Syne}, in
celebration of the new year, which always begins a week after Christmas. 
To make the book more affordable, I have published it through CreateSpace
instead of Lulu, and in hopes that others may also find it useful, I have
made it available for purchase on Amazon.com, where it should be easier
to find.}
\vspace #0.5

\override #'(baseline-skip . 2.35) \wordwrap{
In selecting the songs, I have tried to include all the public domain carols
that are well-known, as well as those which I have found appealing.  Some
songs I sought out specifically, and others I had never heard before finding
them in older collections while preparing the present volume, having looked
through several such books, including \italic{The Cowley Carol Book} (1919),
\italic{The Cambridge Carol Book} (1924), the aforementioned
\italic{Christmas Carols, New and Old} (1871), as well as the several
Christmas carols found in \italic{Favorite Songs and Hymns for School and Home}
(1899).  In a few cases I have slightly edited the music from the source
arrangement, and in rarer cases I have slightly modified the text.  In perhaps
the rarest of cases, I have anonymously arranged a handful of the songs myself.}
\vspace #0.5

\override #'(baseline-skip . 2.35) \wordwrap{
In ordering the songs, I have attempted to interleave the more well-known songs
with those tending further toward obscurity.  However, the obscure carols seemed
to outnumber those I expect to be well-known, which led to a section beginning
not long after the middle of the book consisting entirely of carols of relative
obscurity.  This is followed by a handful of carols of foreign origin, which
are followed by a few more carols and part songs.  However, these sections are
rather nebulous and songs may occasionally seem out of place within the book.}
\vspace #0.5

\override #'(baseline-skip . 2.35) \wordwrap{
In laying out the music, I have tried to avoid setting lyrics for additional
verses too far below the music itself, because of the difficulty involved in
continually glancing back and forth between the music and the words.  Thus,
some songs have the exact same music printed several times, sometimes with a
chorus also doubled, though sometimes the chorus is given only once even when
the verses are doubled.}
\vspace #0.5

\override #'(baseline-skip . 2.35) \wordwrap{
In a few cases I have included the original foreign-language words as well as
an English translation, but in other cases this was impossible, for Bramley
and Stainer, while noting which texts were translations, were not so thoughtful
as to include the \italic names of the original texts, and I have only been
able to find the source texts for a few of them.  There are also a few
foreign-language carols for which I have not included any English translation.}
\vspace #0.8

\fill-line {""  \italic"Benjamin Bloomfield"}
\fill-line {""  "Cincinnati, 2012"}
}
\pageBreak
\markup{
\vspace #0.4
\fill-line \center-align {{ \abs-fontsize #32 \smallCaps"Contents"}}
\vspace #0.4
}

\markup{{\override #'(line-width . 41.3) \override #'(baseline-skip . 2.35) \override #'(word-space . 0) \column{
{\page-link #150 {\fill-with-pattern #0.1 #CENTER . "Ad cantus lætitiæ" "146"}}
{\page-link #16 {\fill-with-pattern #0.1 #CENTER . "Adeste Fideles" "12"}}
{\page-link #68 {\fill-with-pattern #0.1 #CENTER . "All my heart this night rejoices" "64"}}
{\page-link #146 {\fill-with-pattern #0.1 #CENTER . \italic"All this night bright angels sing" "142"}}
{\page-link #200 {\fill-with-pattern #0.1 #CENTER . "Alma Redemptoris Mater" "196"}}
{\page-link #83 {\fill-with-pattern #0.1 #CENTER . "Although at Yule it Bloweth Cool" "79"}}
{\page-link #53 {\fill-with-pattern #0.1 #CENTER . "The Angel Gabriel" "49"}}
{\page-link #81 {\fill-with-pattern #0.1 #CENTER . "Angels from the Realms of Glory" "77"}}
{\page-link #26 {\fill-with-pattern #0.1 #CENTER . "Angels We Have Heard on High" "22"}}
{\page-link #54 {\fill-with-pattern #0.1 #CENTER . "Angelus ad Virginem" "50"}}
{\page-link #171 {\fill-with-pattern #0.1 #CENTER . \italic"As Jacob with travel was weary one day" "167"}}
{\page-link #89 {\fill-with-pattern #0.1 #CENTER . "As Lately We Watched" "85"}}
{\page-link #71 {\fill-with-pattern #0.1 #CENTER . "As With Gladness Men of Old" "67"}}
{\page-link #210 {\fill-with-pattern #0.1 #CENTER . "Auld Lang Syne" "206"}}
{\page-link #125 {\fill-with-pattern #0.1 #CENTER . "Ave Jesu Deus" "121"}}
{\page-link #32 {\fill-with-pattern #0.1 #CENTER . "Away in a Manger" "28, 29"}}
{\page-link #138 {\fill-with-pattern #0.1 #CENTER . "The Babe of Bethlehem" "134"}}
{\page-link #166 {\fill-with-pattern #0.1 #CENTER . \italic"Behould a sely tender babe" "162"}}
{\page-link #103 {\fill-with-pattern #0.1 #CENTER . "Blessed be that Maid Marie" "99"}}
{\page-link #80 {\fill-with-pattern #0.1 #CENTER . "The Boar’s Head Carol" "76"}}
{\page-link #52 {\fill-with-pattern #0.1 #CENTER . "Bring a Torch, Jeannette, Isabella!" "48"}}
{\page-link #146 {\fill-with-pattern #0.1 #CENTER . "Carol for Christmas Day" "142"}}
{\page-link #62 {\fill-with-pattern #0.1 #CENTER . "A Carol for Christmas Eve" "58"}}
{\page-link #30 {\fill-with-pattern #0.1 #CENTER . "Carol for Christmas Eve" "26"}}
{\page-link #112 {\fill-with-pattern #0.1 #CENTER . "Carol of the Bells" "108"}}
{\page-link #93 {\fill-with-pattern #0.1 #CENTER . "Carol of the Birds" "89"}}
{\page-link #58 {\fill-with-pattern #0.1 #CENTER . "Carol of the Shepherds" "54"}}
{\page-link #19 {\fill-with-pattern #0.1 #CENTER . "A Child this day is born" "15"}}
{\page-link #40 {\fill-with-pattern #0.1 #CENTER . "Christ Was Born on Christmas Day" "36"}}
{\page-link #64 {\fill-with-pattern #0.1 #CENTER . "Christians, Awake, Salute the Happy Morn" "60"}}
{\page-link #117 {\fill-with-pattern #0.1 #CENTER . "Christmas Bells" "113"}}
{\page-link #88 {\fill-with-pattern #0.1 #CENTER . "Christmas Day" "84"}}
{\page-link #13 {\fill-with-pattern #0.1 #CENTER . "Christmas is Coming" "9, 10"}}
{\page-link #196 {\fill-with-pattern #0.1 #CENTER . "A Christmas Round" "192"}}
{\page-link #168 {\fill-with-pattern #0.1 #CENTER . "Christmas Song" "164"}}
{\page-link #151 {\fill-with-pattern #0.1 #CENTER . "Christmas Time is Come Again" "147"}}
{\page-link #148 {\fill-with-pattern #0.1 #CENTER . "Chrystmasse of Olde" "144"}}
{\page-link #58 {\fill-with-pattern #0.1 #CENTER . \italic"Come All Ye Shepherds" "54"}}
{\page-link #8 {\fill-with-pattern #0.1 #CENTER . "Come Thou Long Expected Jesus" "4"}}
{\page-link #130 {\fill-with-pattern #0.1 #CENTER . "Come! Tune Your Heart" "126"}}
{\page-link #121 {\fill-with-pattern #0.1 #CENTER . "Come Ye Lofty" "117"}}
{\page-link #13 {\fill-with-pattern #0.1 #CENTER . "Conditor alme siderum" "9"}}
{\page-link #94 {\fill-with-pattern #0.1 #CENTER . "Congaudeat turba fidelium" "90"}}
{\page-link #126 {\fill-with-pattern #0.1 #CENTER . "Corde Natus" "122"}}
{\page-link #66 {\fill-with-pattern #0.1 #CENTER . "The Coventry Carol" "62, 63"}}
{\page-link #107 {\fill-with-pattern #0.1 #CENTER . "Cradle Hymn" "103"}}
{\page-link #170 {\fill-with-pattern #0.1 #CENTER . "A Cradle-Song of the Blessed Virgin" "166"}}
{\page-link #12 {\fill-with-pattern #0.1 #CENTER . "Creator alme siderum" "8"}}
{\page-link #118 {\fill-with-pattern #0.1 #CENTER . \italic"Dashing through the snow" "114"}}
{\page-link #152 {\fill-with-pattern #0.1 #CENTER . "A Day, a Day of Glory" "148"}}
{\page-link #116 {\fill-with-pattern #0.1 #CENTER . "Deck the Hall" "112"}}
}
\hspace #0.01 \path #0.1 #'((moveto 0 1.4) (lineto 0 -117.54125)) \hspace #0.01 \override #'(line-width . 41.3) \override #'(baseline-skip . 2.35) \override #'(word-space . 0) \column {
{\page-link #37 {\fill-with-pattern #0.1 #CENTER . \italic"Ding dong ding." "33"}}
{\page-link #36 {\fill-with-pattern #0.1 #CENTER . "Ding Dong Merrily on High" "32"}}
{\page-link #153 {\fill-with-pattern #0.1 #CENTER . "Earth Today Rejoices" "149"}}
{\page-link #96 {\fill-with-pattern #0.1 #CENTER . "Es ist ein Ros entsprungen" "92"}}
{\page-link #70 {\fill-with-pattern #0.1 #CENTER . \italic"The first good joy that Mary had" "66"}}
{\page-link #20 {\fill-with-pattern #0.1 #CENTER . "The First Noël" "16"}}
{\page-link #96 {\fill-with-pattern #0.1 #CENTER . "Flos de radice Jesse" "92"}}
{\page-link #82 {\fill-with-pattern #0.1 #CENTER . "The Friendly Beasts" "78"}}
{\page-link #95 {\fill-with-pattern #0.1 #CENTER . "From Church to Church" "91"}}
{\page-link #142 {\fill-with-pattern #0.1 #CENTER . "From far away" "138"}}
{\page-link #80 {\fill-with-pattern #0.1 #CENTER . "From Heaven High I Come to You" "76"}}
{\page-link #180 {\fill-with-pattern #0.1 #CENTER . "Fum, Fum, Fum" "176"}}
{\page-link #198 {\fill-with-pattern #0.1 #CENTER . "Gaudete" "194"}}
{\page-link #108 {\fill-with-pattern #0.1 #CENTER . "Glad Christmas Bells" "104"}}
{\page-link #198 {\fill-with-pattern #0.1 #CENTER . "Glorious, Beauteous, Golden-Bright" "194"}}
{\page-link #78 {\fill-with-pattern #0.1 #CENTER . "Gloucestershire Wassail" "74"}}
{\page-link #139 {\fill-with-pattern #0.1 #CENTER . "God Loved the World" "135"}}
{\page-link #148 {\fill-with-pattern #0.1 #CENTER . \italic"God rest you Chrysten gentilmen" "144"}}
{\page-link #56 {\fill-with-pattern #0.1 #CENTER . "God Rest You Merry, Gentlemen" "52"}}
{\page-link #136 {\fill-with-pattern #0.1 #CENTER . "God’s dear Son" "132"}}
{\page-link #109 {\fill-with-pattern #0.1 #CENTER . "The Golden Carol" "105"}}
{\page-link #77 {\fill-with-pattern #0.1 #CENTER . "Good Christian Men, Rejoice" "73"}}
{\page-link #46 {\fill-with-pattern #0.1 #CENTER . "Good King Wenceslas" "42, 43"}}
{\page-link #60 {\fill-with-pattern #0.1 #CENTER . \italic"Good people all, this Christmas time" "56"}}
{\page-link #134 {\fill-with-pattern #0.1 #CENTER . \scale #'(0.98 . 1) \italic"The Great God of Heaven is come down to earth" "130"}}
{\page-link #181 {\fill-with-pattern #0.1 #CENTER . "Hacia Belén va una burra" "177"}}
{\page-link #156 {\fill-with-pattern #0.1 #CENTER . \scale #'(0.98 . 1) "Hail! Holy Child, Lain In An Oxen Manger" "152"}}
{\page-link #10 {\fill-with-pattern #0.1 #CENTER . "Hark! a Herald Voice is Calling" "6"}}
{\page-link #112 {\fill-with-pattern #0.1 #CENTER . \italic"Hark! how the bells" "108"}}
{\page-link #22 {\fill-with-pattern #0.1 #CENTER . "Hark! the Herald Angels Sing" "18"}}
{\page-link #79 {\fill-with-pattern #0.1 #CENTER . \italic"Here we come a wassailing" "75"}}
{\page-link #154 {\fill-with-pattern #0.1 #CENTER . "Ho! Steward, Bid My Servants" "150"}}
{\page-link #196 {\fill-with-pattern #0.1 #CENTER . \italic"Hodie Christus natus est" "192"}}
{\page-link #100 {\fill-with-pattern #0.1 #CENTER . "The Holly and the Ivy" "96, 97"}}
{\page-link #140 {\fill-with-pattern #0.1 #CENTER . "How Great Our Joy!" "136"}}
{\page-link #107 {\fill-with-pattern #0.1 #CENTER . \italic"Hush, my dear, lie still and slumber" "103"}}
{\page-link #44 {\fill-with-pattern #0.1 #CENTER . "Hymn for Christmas Day" "40"}}
{\page-link #93 {\fill-with-pattern #0.1 #CENTER . "I Heard the Bells on Christmas Day" "89"}}
{\page-link #190 {\fill-with-pattern #0.1 #CENTER . \italic"I saw a fair Mayden syttin and sing" "186"}}
{\page-link #69 {\fill-with-pattern #0.1 #CENTER . "I Saw Three Ships" "65"}}
{\page-link #195 {\fill-with-pattern #0.1 #CENTER . \italic"If angels sung a Savior's birth" "191"}}
{\page-link #178 {\fill-with-pattern #0.1 #CENTER . "Il est né le divin Enfant" "174"}}
{\page-link #145 {\fill-with-pattern #0.1 #CENTER . "In Bethlehem, that noble place" "141"}}
{\page-link #74 {\fill-with-pattern #0.1 #CENTER . "In Dulci Jubilo" "70, 71, 72"}}
{\page-link #48 {\fill-with-pattern #0.1 #CENTER . "In natali Domini" "44"}}
{\page-link #192 {\fill-with-pattern #0.1 #CENTER . "In Terra Pax" "188"}}
{\page-link #184 {\fill-with-pattern #0.1 #CENTER . "In the Bleak Midwinter" "180, 182"}}
{\page-link #134 {\fill-with-pattern #0.1 #CENTER . "The Incarnation" "130"}}
{\page-link #177 {\fill-with-pattern #0.1 #CENTER . "Infant Holy, Infant Lowly" "173"}}
{\page-link #192 {\fill-with-pattern #0.1 #CENTER . \italic"Infant of days, yet Lord of Life" "188"}}
{\page-link #24 {\fill-with-pattern #0.1 #CENTER . "It Came Upon the Midnight Clear" "20"}}
}}}
\pageBreak
\markup\vspace#0.475
\markup{{\override #'(line-width . 41.3) \override #'(baseline-skip . 2.35) \override #'(word-space . 0) \column{
{\page-link #172 {\fill-with-pattern #0.1 #CENTER . \italic"It was the very noon of night" "168"}}
{\page-link #171 {\fill-with-pattern #0.1 #CENTER . "Jacob's Ladder" "167"}}
{\page-link #124 {\fill-with-pattern #0.1 #CENTER . "Jesu, hail! O God most holy" "120"}}
{\page-link #140 {\fill-with-pattern #0.1 #CENTER . "Jesus in the Manger" "136"}}
{\page-link #82 {\fill-with-pattern #0.1 #CENTER . \italic"Jesus our brother kind and good" "78"}}
{\page-link #23 {\fill-with-pattern #0.1 #CENTER . "Jesus the Light of the World" "19"}}
{\page-link #118 {\fill-with-pattern #0.1 #CENTER . "Jingle Bells" "114"}}
{\page-link #120 {\fill-with-pattern #0.1 #CENTER . "Jolly Old Saint Nicholas" "116"}}
{\page-link #42 {\fill-with-pattern #0.1 #CENTER . "Joseph, O Dear Joseph Mine" "38"}}
{\page-link #18 {\fill-with-pattern #0.1 #CENTER . "Joy to the World!" "14"}}
{\page-link #176 {\fill-with-pattern #0.1 #CENTER . "Kling Glöckchen" "172"}}
{\page-link #122 {\fill-with-pattern #0.1 #CENTER . \italic"Like silver lamps in a distant shrine" "118"}}
{\page-link #30 {\fill-with-pattern #0.1 #CENTER . \italic"Listen Lordings unto me" "26"}}
{\page-link #97 {\fill-with-pattern #0.1 #CENTER . "Lo, How a Rose E'er Blooming" "93"}}
{\page-link #62 {\fill-with-pattern #0.1 #CENTER . \italic"The Lord at first had Adam made" "58"}}
{\page-link #66 {\fill-with-pattern #0.1 #CENTER . \italic"Lullay, Thou Little Tiny Child" "62"}}
{\page-link #187 {\fill-with-pattern #0.1 #CENTER . "Lætentur Cœli" "183"}}
{\page-link #157 {\fill-with-pattern #0.1 #CENTER . "Make we joy now in this fest" "153"}}
{\page-link #122 {\fill-with-pattern #0.1 #CENTER . "The Manger Throne" "118"}}
{\page-link #27 {\fill-with-pattern #0.1 #CENTER . "Masters in This Hall" "23"}}
{\page-link #188 {\fill-with-pattern #0.1 #CENTER . \italic"Methinks I see an heav’nly Host" "184"}}
{\page-link #195 {\fill-with-pattern #0.1 #CENTER . "Milford" "191"}}
{\page-link #132 {\fill-with-pattern #0.1 #CENTER . \italic"The moon shines bright" "128"}}
{\page-link #190 {\fill-with-pattern #0.1 #CENTER . "Myn Lyking" "186"}}
{\page-link #166 {\fill-with-pattern #0.1 #CENTER . "New Prince, New Pompe" "162"}}
{\page-link #147 {\fill-with-pattern #0.1 #CENTER . \italic"Now the Holly bears a berry" "143"}}
{\page-link #179 {\fill-with-pattern #0.1 #CENTER . "Noël Nouvelet" "175"}}
{\page-link #114 {\fill-with-pattern #0.1 #CENTER . "O Christmas Tree" "110"}}
{\page-link #17 {\fill-with-pattern #0.1 #CENTER . "O Come, All Ye Faithful" "13"}}
{\page-link #9 {\fill-with-pattern #0.1 #CENTER . "O Come, Divine Messiah" "5"}}
{\page-link #98 {\fill-with-pattern #0.1 #CENTER . "O Come, Little Children" "94"}}
{\page-link #6 {\fill-with-pattern #0.1 #CENTER . "O Come, O Come, Emmanuel" "2"}}
{\page-link #92 {\fill-with-pattern #0.1 #CENTER . "O Du Fröhliche" "88"}}
{\page-link #84 {\fill-with-pattern #0.1 #CENTER . "O Holy Night" "80"}}
{\page-link #43 {\fill-with-pattern #0.1 #CENTER . "O Little Town of Bethlehem" "39"}}
{\page-link #202 {\fill-with-pattern #0.1 #CENTER . "O Magnum Mysterium" "198"}}
{\page-link #115 {\fill-with-pattern #0.1 #CENTER . "O Tannenbaum" "111"}}
{\page-link #128 {\fill-with-pattern #0.1 #CENTER . "Of the Father's Love Begotten" "124"}}
{\page-link #117 {\fill-with-pattern #0.1 #CENTER . \italic"Oh how lovely is the evening" "113"}}
{\page-link #102 {\fill-with-pattern #0.1 #CENTER . \italic"On Christmas Night all Christians Sing" "98"}}
{\page-link #10 {\fill-with-pattern #0.1 #CENTER . "On Jordan's Bank" "6"}}
{\page-link #49 {\fill-with-pattern #0.1 #CENTER . "On the Birthday of the Lord" "45"}}
{\page-link #28 {\fill-with-pattern #0.1 #CENTER . \italic"On the first day of Christmas" "24"}}
{\page-link #90 {\fill-with-pattern #0.1 #CENTER . \italic"On yesternight I saw a sight" "86"}}
{\page-link #168 {\fill-with-pattern #0.1 #CENTER . \italic"Once again O blessed time" "164"}}
{\page-link #50 {\fill-with-pattern #0.1 #CENTER . "Once in Royal David's City" "46"}}
{\page-link #83 {\fill-with-pattern #0.1 #CENTER . "Orientis Partibus" "79"}}
{\page-link #51 {\fill-with-pattern #0.1 #CENTER . "Past Three a Clock" "47"}}
{\page-link #72 {\fill-with-pattern #0.1 #CENTER . "Pat-a-Pan" "68"}}
{\page-link #205 {\fill-with-pattern #0.1 #CENTER . "Personent Hodie" "201, 202"}}
{\page-link #158 {\fill-with-pattern #0.1 #CENTER . "Puer Natus in Bethlehem" "154"}}
{\page-link #162 {\fill-with-pattern #0.1 #CENTER . "Puer nobis nascitur" "158"}}
{\page-link #167 {\fill-with-pattern #0.1 #CENTER . "Quem Pastores" "163"}}
}
\hspace #0.01 \path #0.1 #'((moveto 0 1.4) (lineto 0 -122.2389)) \hspace #0.01 \override #'(line-width . 41.3) \override #'(baseline-skip . 2.35) \override #'(word-space . 0) \column {
{\page-link #207 {\fill-with-pattern #0.1 #CENTER . "Ring Out, Wild Bells" "203, 204"}}
{\page-link #104 {\fill-with-pattern #0.1 #CENTER . "Rise Up, Shepherds, and Follow" "100"}}
{\page-link #182 {\fill-with-pattern #0.1 #CENTER . "Riu Riu Chiu" "178"}}
{\page-link #147 {\fill-with-pattern #0.1 #CENTER . "The Sans Day Carol" "143"}}
{\page-link #111 {\fill-with-pattern #0.1 #CENTER . \italic"Saw ye never in the twilight" "107"}}
{\page-link #44 {\fill-with-pattern #0.1 #CENTER . \italic"See Amid the Winter's Snow" "40"}}
{\page-link #70 {\fill-with-pattern #0.1 #CENTER . "The Seven Joys of Mary" "66"}}
{\page-link #25 {\fill-with-pattern #0.1 #CENTER . "Shepherds! Shake Off Your Drowsy Sleep" "21"}}
{\page-link #188 {\fill-with-pattern #0.1 #CENTER . "Shiloh" "184"}}
{\page-link #210 {\fill-with-pattern #0.1 #CENTER . \italic"Should auld acquaintance be forgot" "206"}}
{\page-link #39 {\fill-with-pattern #0.1 #CENTER . "Silent Night" "35"}}
{\page-link #105 {\fill-with-pattern #0.1 #CENTER . "Sleep, Holy Babe!" "101"}}
{\page-link #160 {\fill-with-pattern #0.1 #CENTER . "The Son of God is born for all" "156"}}
{\page-link #175 {\fill-with-pattern #0.1 #CENTER . "Still, Still, Still" "171"}}
{\page-link #38 {\fill-with-pattern #0.1 #CENTER . "Stille Nacht" "34"}}
{\page-link #172 {\fill-with-pattern #0.1 #CENTER . "The Story of the Shepherd" "168"}}
{\page-link #111 {\fill-with-pattern #0.1 #CENTER . "The Stranger Star" "107"}}
{\page-link #102 {\fill-with-pattern #0.1 #CENTER . "The Sussex Carol" "98"}}
{\page-link #174 {\fill-with-pattern #0.1 #CENTER . "Sweet was the song the Virgin sung" "170"}}
{\page-link #99 {\fill-with-pattern #0.1 #CENTER . "There’s a Song in the Air!" "95"}}
{\page-link #104 {\fill-with-pattern #0.1 #CENTER . \italic"There’s a star in the east" "100"}}
{\page-link #92 {\fill-with-pattern #0.1 #CENTER . "This Endris Night" "88"}}
{\page-link #163 {\fill-with-pattern #0.1 #CENTER . "To us is born a little Child" "159"}}
{\page-link #164 {\fill-with-pattern #0.1 #CENTER . "To Us This Morn a Child is Born" "160"}}
{\page-link #196 {\fill-with-pattern #0.1 #CENTER . "Tollite Hostias" "192"}}
{\page-link #106 {\fill-with-pattern #0.1 #CENTER . "The Truth from Above" "102"}}
{\page-link #165 {\fill-with-pattern #0.1 #CENTER . "’Twas in a Cave on Christmas Morn" "161"}}
{\page-link #131 {\fill-with-pattern #0.1 #CENTER . "’Twas in the winter cold" "127"}}
{\page-link #28 {\fill-with-pattern #0.1 #CENTER . "The Twelve Days of Christmas" "24"}}
{\page-link #162 {\fill-with-pattern #0.1 #CENTER . "Unto us is born a Son" "158"}}
{\page-link #37 {\fill-with-pattern #0.1 #CENTER . "Up! Good Christen Folk and Listen" "33"}}
{\page-link #7 {\fill-with-pattern #0.1 #CENTER . "Veni, Veni, Emmanuel" "3"}}
{\page-link #90 {\fill-with-pattern #0.1 #CENTER . "The Virgin and Child" "86"}}
{\page-link #170 {\fill-with-pattern #0.1 #CENTER . \italic"The virgin stills the crying" "166"}}
{\page-link #34 {\fill-with-pattern #0.1 #CENTER . "A Virgin Unspotted" "30"}}
{\page-link #132 {\fill-with-pattern #0.1 #CENTER . "The Waits' Song" "128"}}
{\page-link #88 {\fill-with-pattern #0.1 #CENTER . \italic"Wake all music's magic powers" "84"}}
{\page-link #11 {\fill-with-pattern #0.1 #CENTER . "Wake, O Wake! with Tidings Thrilling" "7"}}
{\page-link #79 {\fill-with-pattern #0.1 #CENTER . "The Wassail Song" "75"}}
{\page-link #78 {\fill-with-pattern #0.1 #CENTER . \italic"Wassail, Wassail" "74"}}
{\page-link #73 {\fill-with-pattern #0.1 #CENTER . "Watchman, Tell Us of the Night" "69"}}
{\page-link #109 {\fill-with-pattern #0.1 #CENTER . \italic"We saw a light shine out afar" "105"}}
{\page-link #110 {\fill-with-pattern #0.1 #CENTER . "We Three Kings of Orient Are" "106"}}
{\page-link #117 {\fill-with-pattern #0.1 #CENTER . "We Wish You a Merry Christmas" "113"}}
{\page-link #60 {\fill-with-pattern #0.1 #CENTER . "The Wexford Carol" "56"}}
{\page-link #45 {\fill-with-pattern #0.1 #CENTER . "What Child is This?" "41"}}
{\page-link #164 {\fill-with-pattern #0.1 #CENTER . "When Angelick Host Entuned" "160"}}
{\page-link #21 {\fill-with-pattern #0.1 #CENTER . "When Christ Was Born of Mary Free!" "17"}}
{\page-link #93 {\fill-with-pattern #0.1 #CENTER . \italic"Whence comes this rush of wings afar?" "89"}}
{\page-link #140 {\fill-with-pattern #0.1 #CENTER . \italic"While by the sheep we watched at night" "136"}}
{\page-link #59 {\fill-with-pattern #0.1 #CENTER . "While Shepherds Watched Their Flocks" "55"}}
{\page-link #140 {\fill-with-pattern #0.1 #CENTER . \italic"Why Most Highest art Thou lying?" "136"}}
{\page-link #72 {\fill-with-pattern #0.1 #CENTER . \italic"Willie, get your little drum" "68"}}
}}}
