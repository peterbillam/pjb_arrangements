#PLAY = fly_on_acoustic
#PLAY = emily_has_gone
#PLAY = buddy_can_you_spare_a_dime
#PLAY = aint_necessarily_so
#PLAY = new_speedway_boogie
#PLAY = london_rag
PLAY = square_rag
WAVDIR = /home/pjb/wav/folk
WAV = ${WAVDIR}/${PLAY}.wav

dev : ${PLAY}.a4 folk_gtr.a4

edit :
	vi ${PLAY}
	make dev play

${PLAY}.a4 : ${PLAY}
	muscript ${PLAY} > $@
	pkill -HUP gv

play :
	muscript -midi ${PLAY} | midisox_lua - -d stat

folk_gtr.a4 : folk_gtr
	muscript folk_gtr > $@
	pkill -HUP gv

folk_gtr : october_song aint_necessarily_so \
  dedicated_to_you_but_you_werent_listening buddy_can_you_spare_a_dime \
  emily_has_gone entertainer_gtr my_home_town river_man new_speedway_boogie
	cat october_song aint_necessarily_so \
	  dedicated_to_you_but_you_werent_listening buddy_can_you_spare_a_dime \
	  emily_has_gone entertainer_gtr my_home_town river_man \
	  new_speedway_boogie > $@

${WAV} : ${PLAY}
	muscript -midi ${PLAY} | timidity -Ow -o $@ -
	normalize $@
	ls -l $@

