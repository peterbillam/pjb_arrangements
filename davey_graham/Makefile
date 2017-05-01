# /home/cds/folk/davey_graham/1970_holly_kaleidoscope/02_charlie.wav
# ${WAVDIR}/1970_holly_kaleidoscope/02_charlie.wav   !!

# sox /home/cds/folk/davey_graham/1965_folk_roots_new_routes/04_blue_monk.wav \
#  -d speed 0.825
# recorded with capo on 3rd fret

# 1963_the_guitar_player/01_angi.wav

# 1969_hat/01_bulgarian_dance.wav

# PLAY = tristano
# PLAY = blue_monk
PLAY = angi
# PLAY = cry_me_a_river
SRCDIR = /home/cds/folk/davey_graham
ANGIWAV = ${SRCDIR}/1963_the_guitar_player/01_angi.wav
TRISTANOWAV = ${SRCDIR}/1969_large_as_life_and_twice_as_natural/03_tristano.wav
MONKWAV = ${SRCDIR}/1965_folk_roots_new_routes/04_blue_monk.wav
CHARLIEWAV = ${SRCDIR}/1970_holly_kaleidoscope/02_charlie.wav
dev : ${PLAY}.ps

all : ${TRISTANOWAV}

${PLAY}.ps : ${PLAY}
	muscript ${PLAY} > $@
	pkill -HUP gv

#${TRISTANOWAV} : tristano
#	muscript -midi tristano | timidity -Ow -o $@ -
#	normalize $@
#	ls -l $@

dev :
	vi ${PLAY}
	muscript ${PLAY} > ${PLAY}.ps
	pkill -HUP gv
edit :
	vi ${PLAY}
	muscript ${PLAY} > ${PLAY}.ps
	pkill -HUP gv
	muscript -midi ${PLAY} | midisox - -d tempo 1.00
play :
	muscript -midi ${PLAY} | midisox - -d tempo 1.00
playslow : ${PLAY}_slow.wav
	xterm -geometry -0-0 -e mplayer ${PLAY}_slow.wav &
playmonk : blue_monk_slow.wav
	xterm -geometry -0-0 -e mplayer blue_monk_slow.wav &
tristano_slow.wav : ${TRISTANOWAV}
	sox ${TRISTANOWAV} $@ speed 0.83
blue_monk_slow.wav : ${MONKWAV}
	sox ${MONKWAV} $@ speed 0.825
charlie_slow.wav : ${CHARLIEWAV}
	sox ${CHARLIEWAV} $@ speed 0.83
angi_slow.wav : ${ANGIWAV}
	sox ${ANGIWAV} $@ speed 0.80   # I've tuned both guitars 1 semitone down
clean :
	rm -f tristano_slow.wav
	rm -f blue_monk_slow.wav
	rm -f charlie_slow.wav
	rm -f angi_slow.wav
