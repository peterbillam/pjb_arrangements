#PLAY = fly_on_acoustic
#PLAY = emily_has_gone
#PLAY = buddy_can_you_spare_a_dime
#PLAY = aint_necessarily_so
PLAY = new_speedway_boogie
WAVDIR = /home/pjb/wav/folk
WAV = ${WAVDIR}/${PLAY}.wav

dev : ${PLAY}.a4

edit :
	vi ${PLAY}
	make dev play

${PLAY}.a4 : ${PLAY}
	muscript ${PLAY} > $@
	pkill -HUP gv

play :
	muscript -midi ${PLAY} | midisox_lua - -d stat

${WAV} : ${PLAY}
	muscript -midi ${PLAY} | timidity -Ow -o $@ -
	normalize $@
	ls -l $@

