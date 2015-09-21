\version "2.14.2"

#(set-default-paper-size "letter")

\paper {
  two-sided = ##t
  first-page-number = #1
  print-first-page-number = ##t
  headerMarkup = \markup\fromproperty #'header:section
  oddHeaderMarkup = \markup\fill-line{
        ""
        \on-the-fly #print-page-number-check-first
        \headerMarkup
  }
  evenHeaderMarkup = \markup\fill-line{
        \headerMarkup
        \on-the-fly #print-page-number-check-first
        ""
  }
}

%% Xmas (Christmas)
% (Xmas) "It's a lovely little beet"            %"The_First_Nowell.ly" - 1
% (Xmas) "Santa Claus, Like pumpkin pie"        %"Stille_Nacht.ly" - 3
% (Xmas) "On Christmas day, I love you"         %"The_Holly_and_the_Ivy-English.ly" - 5
% (Xmas) "Christmas Cat"                        %"Joy_to_the_World.ly" - 9
% (Xmas) "Santa, are you online"                %"O_Come_All_Ye_Faithful.ly" - 11
% (Xmas) "The Magic of the Elves"               %"Auld_Lang_Syne.ly" - 15
% (Xmas) "The Christmas Fish"                   %"A_Cradle-Song_of_the_Blessed_Virgin.ly" - 16
% (Xmas) "Santa Knows what we think we might hide % "It_Came_Upon_the_Midnight_Clear.ly" - 17
% (Xmas) That Annoying Elf                  %"Come_Thou_Long_Expected_Jesus-Stuttgart.ly" - 19
% (Xmas) "Christmas Animals"                    %"Ring_Out_Wild_Bells-Mozart.ly" - 21
% (Xmas) "Christmas Pickle"                     %"On_Jordans_Bank.ly" - 22
% (Xmas) "Christmas Hippo"                      %"Hark_the_Herald_Angels_Sing.ly" - 25
% (Xmas) "Glory, Glory He Has Come"             %"Angels_We_Have_Heard_on_High.ly" - 27
% (Xmas) "Santa, you are really nice"           %"Ding_Dong_Merrily_on_High.ly" - 30
% (Xmas) "Christmas Dinosaurs"                  %"Es_ist_ein_Ros_entsprungen.ly" - 50

%% Aml (Animals / Science)
% (Aml/Kids) "Skinks"                                %"The_First_Nowell.ly" - 2
% (Aml) "Mole, Mole, Mole"                      %"Stille_Nacht.ly" - 4
% (Aml/Kids) "I really love kittens"                 %"Joy_to_the_World.ly" - 8
% (Aml/Kids) Fishy song                              %"O_Come_All_Ye_Faithful.ly" - 10
% (Aml/Kids) Cat poop                                %"A_Cradle-Song_of_the_Blessed_Virgin.ly" - 14
% (Aml/Kids) "I really like your fish (kids/animals)" %"Carol_of_the_Shepherds.ly" - 40

%% Kid (Kids songs)
% (Aml/Kids) "Skinks"                                %"The_First_Nowell.ly" - 2
% (Aml/Kids) "I really love kittens"                %"Joy_to_the_World.ly" - 8
% (Aml/Kids) Fishy song                             %"O_Come_All_Ye_Faithful.ly" - 10
% (Aml/Kids) Cat poop                               %"A_Cradle-Song_of_the_Blessed_Virgin.ly" - 14
% (Aml/Kids) "I really like your fish (kids/animals)" %"Carol_of_the_Shepherds.ly" - 40
% (Con/Kids) "A Pickle Song"                        %"Joy_to_the_World.ly" - 7
% (Con/Kids) "Hot Wheels"                           %"Auld_Lang_Syne.ly" - 13
% (Kid) "I once had a kitty"                        % "Away_In_A_Manger-Kirkpatrick.ly" - 44
% (Kid) "Please clean up after your puppy."         % "We_Wish_You_a_Merry_Christmas.ly" - 47
% (Kid) "Fish friends"                              % "This_Endris_Night.ly" - 48
% (Kid) "My sharp teeth"                            % "How_Great_Our_Joy.ly" - 49
% (Con/Kid) "I ate five dogs"                       %"I_Saw_Three_Ships.ly" - 36
% (Con/Kid) "It's board game time"                  %"Good_King_Wenceslas-Stainer.ly" - 37
% (None/Kid) "A very short nothing song"            %"On_Jordans_Bank.ly" - 24
% (None/Kid) "I wanted a pie."                      %"The_First_Nowell.ly" - 46

%% Hwn (Haloween)
% (Hwn) "On Halloween we partied"               % %"The_Holly_and_the_Ivy-English.ly" - 6
% (Hwn) "The Cats of Ulthar"                    %"O_Come_All_Ye_Faithful.ly" - 12
% (Hwn) "And a Happy Halloween to you"          %"It_Came_Upon_the_Midnight_Clear.ly" - 18
% (Hwn) Introvert at a Halloween Party      %"Come_Thou_Long_Expected_Jesus-Stuttgart.ly" - 20
% (Hwn) "Halloween Cat"                         %"On_Jordans_Bank.ly" - 23
% (Hwn) "Ghosts and Ghoulies"                   "Angels_We_Have_Heard_on_High.ly" - 28
% (Hwn) "My Friend Fred"                         % "Away_In_A_Manger-Kirkpatrick.ly" - 29
% (Hwn) "The demons hunting you"                % "Creator_of_the_Stars_of_Night.ly" - 31
% (Hwn) "On Halloween, we ate lots of things"   %"What_Child_is_This.ly" - 33
% (Hwn) "On this blessed morning"               % "O_Little_Town_of_Bethlehem.ly" - 34
% (Hwn/Con) "Cosplay's not just for Halloween"  % "God_Rest_You_Merry_Gentlemen.ly" - 38
% (Hwn) "While you're out and about trick..."   % "While_Shepherds_Watched_Their_Flocks-Handel.ly" - 41
% (Hwn) "This only happened one time a year"    %"Angelus_ad_virginem.ly" - 42
% (Hwn) "On this Halloween, I hope you die"     % "The_Wexford_Carol.ly" - 43
% (Con/Hwn) "Traumatic insemination"                %"The_Coventry_Carol-Shaw.ly" - 45

%% Con (Conferences and one-off holidays)
% (Con/Kids) "A Pickle Song"                         %"Joy_to_the_World.ly" - 7
% (Con/Kids) "Hot Wheels"                            %"Auld_Lang_Syne.ly" - 13
% (Con) "This Arbor Day"                        %"Hark_the_Herald_Angels_Sing.ly" - 26
% (Con/Kid) "I ate five dogs"                       %"I_Saw_Three_Ships.ly" - 36
% (Con/Kid) "It's board game time"                  %"Good_King_Wenceslas-Stainer.ly" - 37
% (Con/Hwn) "Cosplay's not just for Halloween"  %"God_Rest_You_Merry_Gentlemen.ly" - 38
% (Con) "I really like your fish"               %"Carol_of_the_Shepherds.ly" - 39
% (Con/Hwn) "Traumatic insemination"                %"The_Coventry_Carol-Shaw.ly" - 45

%% None (Nothing and the like) 
% (None/Kid) "A very short nothing song"            %"On_Jordans_Bank.ly" - 24
% (None/Kid) "I wanted a pie."                      %"The_First_Nowell.ly" - 46

%% Me (songs about Steven Black)
% (Me) "Prayer for Polytheism"                  %"Watchman_Tell_Us_of_the_Night.ly" - 32
% (Me) "Fermi's Paradox"                        %"O_Little_Town_of_Bethlehem.ly" - 35

\include "unmapped/The_First_Nowell.ly"         % Xmas, Aml, None
\include "unmapped/Stille_Nacht.ly"             % Xmas, Aml 
\include "unmapped/The_Holly_and_the_Ivy-English.ly" %Xmas, Hwn 
\include "unmapped/Joy_to_the_World.ly"         % Xmas, Aml, Days 
\include "unmapped/O_Come_All_Ye_Faithful.ly"   % Xmas, Aml, Hwn 
\include "unmapped/Auld_Lang_Syne.ly"           % Con, Xmas 
\include "unmapped/A_Cradle-Song_of_the_Blessed_Virgin.ly" % Aml, Xmas
\include "unmapped/It_Came_Upon_the_Midnight_Clear.ly" % Xmas, Hwn 
\include "unmapped/Come_Thou_Long_Expected_Jesus-Stuttgart.ly" % Xmas, Hwn
\include "unmapped/On_Jordans_Bank.ly" % Xmas, None, Hwn
\include "unmapped/Hark_the_Herald_Angels_Sing.ly" % Xmas, Con
\include "unmapped/Angels_We_Have_Heard_on_High.ly" % Xmas, Hwn
\include "unmapped/O_Little_Town_of_Bethlehem.ly" % Hwn, Me
\include "unmapped/Carol_of_the_Shepherds.ly" % Con, Aml

\include "unmapped/Ring_Out_Wild_Bells-Mozart.ly" % Xmas 
\include "unmapped/Ding_Dong_Merrily_on_High.ly" % Xmas
\include "unmapped/Es_ist_ein_Ros_entsprungen.ly" % Xmas

\include "unmapped/Away_In_A_Manger-Kirkpatrick.ly" % Hwn
\include "unmapped/Creator_of_the_Stars_of_Night.ly" % Hwn
\include "unmapped/What_Child_is_This.ly" % Hwn
\include "unmapped/God_Rest_You_Merry_Gentlemen.ly" % Hwn/con
\include "unmapped/While_Shepherds_Watched_Their_Flocks-Handel.ly" % Hwn
\include "unmapped/Angelus_ad_virginem.ly" % Hwn
\include "unmapped/The_Wexford_Carol.ly" % Hwn

\include "unmapped/Watchman_Tell_Us_of_the_Night.ly" % Me

\include "unmapped/I_Saw_Three_Ships.ly" % Con 
\include "unmapped/Good_King_Wenceslas-Stainer.ly" % Con
%\include "unmapped/God_Rest_You_Merry_Gentlemen.ly" % Con/HWN 
\include "unmapped/The_Coventry_Carol-Shaw.ly" % Con

\include "unmapped/We_Wish_You_a_Merry_Christmas.ly" % Kid 
\include "unmapped/This_Endris_Night.ly" % Kid
\include "unmapped/How_Great_Our_Joy.ly" % Kid

\include "unmapped/Quem_Pastores-Vaughan_Williams.ly" 
\include "unmapped/Sweet_was_the_song_the_Virgin_sung.ly"
\include "unmapped/In_dulci_jubilo-Bach.ly"
\include "unmapped/Bring_a_Torch_Jeanette_Isabella.ly"

\include "unmapped/Masters_in_This_Hall.ly"
\include "unmapped/Christians_Awake_Salute_the_Happy_Morn.ly"
\include "unmapped/All_my_heart_this_night_rejoices.ly"
\include "unmapped/The_Boars_Head_Carol.ly"
\include "unmapped/Angels_from_the_Realms_of_Glory.ly"
\include "unmapped/The_Friendly_Beasts.ly"
\include "unmapped/Good_Christian_Men_Rejoice.ly"
\include "unmapped/The_Wassail_Song.ly"
\include "unmapped/From_Heaven_High_I_Come_to_You.ly"
\include "unmapped/Christmas_Day.ly"
\include "unmapped/O_Du_Froehliche.ly"
\include "unmapped/Carol_of_the_Birds.ly"
\include "unmapped/I_Heard_the_Bells_on_Christmas_Day.ly"
\include "unmapped/O_Come_Little_Children.ly"
\include "unmapped/Carol_of_the_Bells.ly"
\include "unmapped/O_Tannenbaum.ly"
\include "unmapped/Deck_the_Hall.ly"
\include "unmapped/Christmas_Bells.ly" 
\include "unmapped/Jolly_Old_Saint_Nicholas.ly"
\include "unmapped/Come_Ye_Lofty.ly"
\include "unmapped/Jesu_hail_O_God_most_holy.ly"
\include "unmapped/Come_Tune_Your_Heart.ly"
\include "unmapped/Twas_in_the_winter_cold.ly"
\include "unmapped/The_Waits_Song.ly"
\include "unmapped/God_Loved_the_World.ly"

\include "unmapped/From_far_away.ly"
\include "unmapped/Carol_for_Christmas_Day.ly"
\include "unmapped/The_Sans_Day_Carol.ly"
\include "unmapped/Chrystmasse_of_Olde.ly"
\include "unmapped/Christmas_Time_is_Come_Again.ly"
\include "unmapped/To_Us_This_Morn_a_Child_is_Born.ly"
\include "unmapped/When_Angelick_Host_Entuned.ly"
\include "unmapped/Twas_in_a_Cave_on_Christmas_Morn.ly" 
\include "unmapped/Christmas_Song.ly"
\include "unmapped/Jacobs_Ladder.ly"
\include "unmapped/Earth_Today_Rejoices.ly"
\include "unmapped/O_Magnum_Mysterium.ly"
\include "unmapped/Personent_hodie-Holst.ly"
\include "unmapped/Noel_Nouvelet.ly"
\include "unmapped/Fum_Fum_Fum.ly"

\include "unmapped/Hacia_Belen_va_una_burra.ly"
\include "unmapped/Kling_Gloeckchen.ly" 
\include "unmapped/Myn_Lyking.ly"
\include "unmapped/In_Terra_Pax.ly"
\include "unmapped/Milford.ly"
\include "unmapped/Tollite_Hostias.ly"
\include "unmapped/Glorious_Beauteous_Golden-Bright.ly"
\include "unmapped/Alma_Redemptoris_Mater.ly"
\include "unmapped/Christ_Was_Born_on_Christmas_Day.ly"

\include "unmapped/Past_Three_a_Clock.ly"

%%%%%%%%%%%%%%%%%%%%%%

%\include "unmapped/Jingle_Bells.ly" 
%\include "unmapped/Still_Still_Still.ly"
%\include "unmapped/Infant_Holy_Infant_Lowly.ly" 
%\include "unmapped/Gloucestershire_Wassail.ly"
%\include "unmapped/Orientis_Partibus.ly"
%\include "unmapped/Although_at_Yule_it_Bloweth_Cool.ly" 
%\include "unmapped/As_Lately_We_Watched.ly"
%\include "unmapped/The_Virgin_and_Child.ly"
%\include "unmapped/Congaudeat_turba_fidelium.ly"
%\include "unmapped/From_Church_to_Church.ly"
%\include "unmapped/Lo_How_a_Rose_Eer_Blooming.ly" 
%\include "unmapped/Theres_a_Song_in_the_Air.ly"

%\include "unmapped/The_Seven_Joys_of_Mary.ly"
%\include "unmapped/The_Coventry_Carol-Stainer.ly"
%\include "unmapped/Shepherds_Shake_Off_Your_Drowsy_Sleep.ly"
%\include "unmapped/Carol_for_Christmas_Eve.ly"
%\include "unmapped/A_Virgin_Unspotted.ly"
%\include "unmapped/Up_Good_Christen_folk_and_listen.ly"
%\include "unmapped/Joseph_O_Dear_Joseph_Mine.ly"
%\include "unmapped/In_natali_Domini.ly"
%\include "unmapped/On_the_Birthday_of_the_Lord.ly"
%\include "unmapped/Once_in_Royal_Davids_City.ly"

%\include "unmapped/Good_King_Wenceslas-Woodward.ly"
%\include "unmapped/Jesus_the_Light_of_the_World.ly" 
%\include "unmapped/Veni_Veni_Emmanuel.ly"
%\include "unmapped/O_Come_Divine_Messiah.ly"
%\include "unmapped/Creator_alme_siderum.ly"
%\include "unmapped/Adeste_Fideles.ly"
%\include "unmapped/A_Child_this_day_is_born.ly"
%\include "unmapped/Silent_Night.ly"
%\include "unmapped/Away_In_A_Manger-Murray.ly"
%\include "unmapped/Away_In_A_Manger-Spilman.ly"
%\include "unmapped/Ring_Out_Wild_Bells-Mendelssohn.ly"
%\include "unmapped/Come_Thou_Long_Expected_Jesus-Stainer.ly"
%\include "unmapped/Flos_de_radice_Jesse.ly"
%\include "unmapped/A_Christmas_Round.ly"
%\include "unmapped/Christmas_is_Coming-Round.ly"
%\include "unmapped/Christmas_is_Coming-Walford_Davies.ly"
%\include "unmapped/Hark_a_Herald_Voice_is_Calling.ly"
%\include "unmapped/While_Shepherds_Watched_Their_Flocks-Winchester_Old.ly"

%\include "unmapped/A_Carol_for_Christmas_Eve.ly"
%\include "unmapped/As_With_Gladness_Men_of_Old.ly"
%\include "unmapped/Pat-a-Pan.ly"
%\include "unmapped/In_dulci_jubilo-Pearsall.ly"
%\include "unmapped/In_dulci_jubilo.ly"

%\include "unmapped/Blessed_be_that_Maid_Marie.ly"
%\include "unmapped/Rise_Up_Shepherds_and_Follow.ly"
%\include "unmapped/Cradle_Hymn.ly"
%\include "unmapped/Glad_Christmas_Bells.ly"
%\include "unmapped/The_Golden_Carol.ly"
%\include "unmapped/We_Three_Kings_of_Orient_Are.ly"
%\include "unmapped/The_Stranger_Star.ly"
%\include "unmapped/O_Christmas_Tree.ly"

%\include "unmapped/A_Day_a_Day_of_Glory.ly"
%\include "unmapped/Ho_Steward_Bid_My_Servants.ly"
%\include "unmapped/Hail_Holy_Child_Lain_in_an_Oxen_Manger.ly"
%\include "unmapped/Puer_natus_in_Bethlehem.ly"
%\include "unmapped/The_Son_of_God_is_born_for_all.ly"
%\include "unmapped/Puer_nobis_nascitur.ly"
%\include "unmapped/Unto_us_is_born_a_Son.ly"
%\include "unmapped/To_us_is_born_a_little_Child.ly"
%\include "unmapped/New_Prince_New_Pompe.ly"
%\include "unmapped/Quem_Pastores-Lunn.ly"

%% Multi-Staff / Segmented
%\include "unmapped/Hymn_for_Christmas_Day.ly"
%\include "unmapped/Ave_Jesu_Deus.ly"
%\include "unmapped/When_Christ_was_born_of_Mary_free.ly"

%% Problematic: MIDI issues
%\include "unmapped/O_Holy_Night.ly"

%% Problematic, but would be nice
%\include "unmapped/The_Holly_and_the_Ivy-French.ly"
%\include "unmapped/O_Come_O_Come_Emmanuel.ly"

%% Problematic: structural repeat
%\include "unmapped/Il_est_ne_le_divin_Enfant.ly"

