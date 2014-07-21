PLAY=03
dev : wind5tet.a4
all : wind5tet.a4
wind5tet : 01 02 03
	cat 01 02 03 > $@
${PLAY}.a4 : ${PLAY}
	muscript ${PLAY} > $@
	pkill -HUP gv
wind5tet.a4 : wind5tet
	muscript wind5tet > $@
	pkill -HUP gv
play :
	muscript -midi ${PLAY} | midisox_lua - -d stat

#concert_pitch_01 : 01
#	transpose -A -s 1 -5 01 | transpose -A -s 2 -7 | transpose -A -s 3 -2 \
#	 | transpose -A -s 4 -7 > $@
#concert_pitch_02 : 02
#	transpose -A -s 1 -5 02 | transpose -A -s 2 -7 | transpose -A -s 3 -2 \
#	 | transpose -A -s 4 -7 > $@
concert_pitch_03 : 03
	transpose -A -s 1 -5 03 | transpose -A -s 2 -3 | transpose -A -s 3 -2 \
	 | transpose -A -s 4 -7 > $@
concert_pitch_01.a4 : concert_pitch_01
	muscript concert_pitch_01 > $@
	pkill -HUP gv
concert_pitch_02.a4 : concert_pitch_02
	muscript concert_pitch_02 > $@
	pkill -HUP gv
concert_pitch_03.a4 : concert_pitch_03
	muscript concert_pitch_03 > $@
	pkill -HUP gv
