MUSCRIPT = /home/pbin/muscript
NORMALIZE = /usr/bin/normalize-audio
BLURB = /home/pjb/mus/blurb/cc_backpage
FREED = /home/pjb/www/mus/free
ARRD = /home/pjb/www/mus/arr
A4D = ${ARRD}/a4
USD = ${ARRD}/us
XMLD = ${ARRD}/xml
SRCD = ${ARRD}/src
MP3D = ${ARRD}/mp3
BACKPAGE = /home/pjb/mus/blurb/cc_backpage.a4
WARNING = /home/pjb/mus/blurb/mus_free_warning_arr.a4
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso

#PLAY = fly_on_acoustic
#PLAY = emily_has_gone
#PLAY = buddy_can_you_spare_a_dime
#PLAY = aint_necessarily_so
#PLAY = new_speedway_boogie
#PLAY = london_rag
#PLAY = square_rag
#PLAY = whisper_not
#PLAY = vatican_rag
#PLAY = two_plus_two
PLAY = river_man
# cd /home/cds/song/tom_lehrer/1965_that_was_the_year_that_was/
# play  14_the_vatican_rag.wav tempo 0.5

WAVDIR = /home/pjb/wav/folk
WAV = ${WAVDIR}/${PLAY}.wav

dev : ${PLAY}.a4 songs.a4 instrumentals.a4 p2_instrumentals.a4

edit :
	vi ${PLAY}
	make dev play

${PLAY}.a4 : ${PLAY}
	muscript ${PLAY} > $@
	pkill -HUP gv

play :
	muscript -midi ${PLAY} | midisox_lua - -d stat

songs.a4 : songs
	muscript songs > $@
	pkill -HUP gv

songs : october_song aint_necessarily_so \
  dedicated_to_you_but_you_werent_listening buddy_can_you_spare_a_dime \
  emily_has_gone my_home_town river_man new_speedway_boogie
	cat october_song aint_necessarily_so \
	  dedicated_to_you_but_you_werent_listening buddy_can_you_spare_a_dime \
	  emily_has_gone my_home_town river_man new_speedway_boogie > $@

instrumentals.a4 : instrumentals
	muscript instrumentals > $@
	pkill -HUP gv

instrumentals : ../davey_graham/angi \
  ../bert_jansch/smokey_river \
  ../bert_jansch/veronica \
  ../davey_graham/blue_monk \
  ../bert_jansch/wheel \
  whisper_not \
  ../bert_jansch/alices_wonderland \
  entertainer \
  ../davey_graham/cry_me_a_river \
  london_rag
	cat ../davey_graham/angi \
	  ../bert_jansch/smokey_river \
	  ../bert_jansch/veronica \
	  ../davey_graham/blue_monk \
	  ../bert_jansch/wheel \
	  whisper_not \
	  ../bert_jansch/alices_wonderland \
	  entertainer \
	  ../davey_graham/cry_me_a_river \
	  london_rag > $@

duet.a4 : duet
	muscript duet > $@
	pkill -HUP gv

p2_instrumentals.a4 : p2_instrumentals
	groff -ms p2_instrumentals | ${BANNERISE} > $@

title_instrumentals.a4 : title_instrumentals
	groff -ms title_instrumentals | ${BANNERISE} > $@

${WAV} : ${PLAY}
	muscript -midi ${PLAY} | timidity -Ow -o $@ -
	normalize $@
	ls -l $@

play_river :
	mplayer /home/cds/folk/nick_drake/five_leaves_left/02_river_man.wav


