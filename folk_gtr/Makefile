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
#PLAY = river_man
# cd /home/cds/song/tom_lehrer/1965_that_was_the_year_that_was/
# play  14_the_vatican_rag.wav tempo 0.5
#PLAY = 20171209
PLAY = too_tight_rag

WAVDIR = /home/pjb/wav/folk
WAV = ${WAVDIR}/${PLAY}.wav

dev : ${PLAY}.ps songs.ps folk_gtr_solos.ps p2_folk_gtr_solos.ps

all : \
 ${A4D}/folk_gtr_solos.pdf  ${USD}/folk_gtr_solos.pdf \
 ${SRCD}/folk_gtr_solos.txt ${XMLD}/folk_gtr_solos.xml

dist :
	upload ${A4D}/folk_gtr_solos.pdf
	upload ${USD}/folk_gtr_solos.pdf
	upload ${SRCD}/folk_gtr_solos.txt

edit :
	vi ${PLAY}
	make dev play

${PLAY}.ps : ${PLAY}
	muscript ${PLAY} > $@
	pkill -HUP gv

play :
	muscript -midi ${PLAY} | midisox_lua - -d stat

songs.ps : songs
	muscript songs > $@
	pkill -HUP gv

songs : october_song aint_necessarily_so \
  dedicated_to_you_but_you_werent_listening buddy_can_you_spare_a_dime \
  emily_has_gone my_home_town river_man new_speedway_boogie
	cat october_song aint_necessarily_so \
	  dedicated_to_you_but_you_werent_listening buddy_can_you_spare_a_dime \
	  emily_has_gone my_home_town river_man new_speedway_boogie > $@

folk_gtr_solos : ../davey_graham/angi \
  ../davey_graham/blue_monk \
  ../davey_graham/cry_me_a_river \
  ../stefan_grossman/matesa \
  ../stefan_grossman/powder_rag \
  ../stefan_grossman/lena_anne \
  ../bert_jansch/alices_wonderland \
  ../bert_jansch/veronica \
  ../bert_jansch/smokey_river \
  ../bert_jansch/wheel \
  ../john_renbourn/day_at_the_seaside \
  whisper_not \
  entertainer \
  london_rag
	cat \
	  ../davey_graham/angi \
	  ../davey_graham/blue_monk \
	  ../davey_graham/cry_me_a_river \
	  ../stefan_grossman/matesa \
	  ../stefan_grossman/powder_rag \
	  ../stefan_grossman/lena_anne \
	  ../bert_jansch/alices_wonderland \
	  ../bert_jansch/veronica \
	  ../bert_jansch/smokey_river \
	  ../bert_jansch/wheel \
	  ../john_renbourn/day_at_the_seaside \
	  whisper_not \
	  entertainer \
	  london_rag > $@

folk_gtr_solos.ps : folk_gtr_solos
	muscript folk_gtr_solos > $@
	pkill -HUP gv

${A4D}/folk_gtr_solos.pdf : title_folk_gtr_solos.ps p2_folk_gtr_solos.ps \
  folk_gtr_solos.ps ${BACKPAGE}
	groff -ms title_folk_gtr_solos | ${BANNERISE} > title_folk_gtr_solos.ps
	${ADDMESSAGE} folk_gtr_solos.ps \
	| ${PSCAT} title_folk_gtr_solos.ps p2_folk_gtr_solos.ps - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/folk_gtr_solos.pdf : title_folk_gtr_solos.ps p2_folk_gtr_solos.ps \
  folk_gtr_solos.ps ${BACKPAGE}
	${ADDMESSAGE} folk_gtr_solos.ps \
	| ${PSCAT} title_folk_gtr_solos.ps p2_folk_gtr_solos.ps - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/folk_gtr_solos.xml : folk_gtr_solos
	${MUSCRIPT} -xml folk_gtr_solos > $@
${XMLD}/folk_gtr_solos_readme.txt : p2_folk_gtr_solos
	${NROF} p2_folk_gtr_solos > $@
${SRCD}/folk_gtr_solos.txt : folk_gtr_solos
	cp folk_gtr_solos $@
${MP3D}/folk_gtr_solos.mp3 : folk_gtr_solos
	${MUSCRIPT} -midi folk_gtr_solos | timidity -Ow -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav


duet.ps : duet
	muscript duet > $@
	pkill -HUP gv

p2_folk_gtr_solos.ps : p2_folk_gtr_solos
	groff -ms p2_folk_gtr_solos | ${BANNERISE} > $@

title_folk_gtr_solos.ps : title_folk_gtr_solos
	groff -ms title_folk_gtr_solos | ${BANNERISE} > $@

${WAV} : ${PLAY}
	muscript -midi ${PLAY} | timidity -Ow -o $@ -
	normalize $@
	ls -l $@

play_river :
	mplayer /home/cds/folk/nick_drake/five_leaves_left/02_river_man.wav

