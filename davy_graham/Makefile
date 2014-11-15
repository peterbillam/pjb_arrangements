PLAY = tristano
WAVDIR = /home/pjb/wav/folk
TRISTANOWAV = ${WAVDIR}/tristano.wav
dev : ${PLAY}.a4

all : ${TRISTANOWAV}

tristano.a4 : tristano
	muscript tristano > $@
	pkill -HUP gv

${TRISTANOWAV} : tristano
	muscript -midi tristano | timidity -Ow -o $@ -
	normalize $@
	ls -l $@

play :
	muscript -midi ${PLAY} | midisox_lua - - stat | aplaymidi -p TiM - &
playdavy :
	mplayer /home/pjb/wav/davy_graham/03_tristano_A.wav
playslow :
	xterm -geometry -0-0 -e mplayer tristano_A_slow.wav &
