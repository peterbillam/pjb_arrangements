# 02_smokey_river.wav 05_finches.wav 10_alices_wonderland.wav 13_casbah.wav

# PLAY = veronica
# PLAY = wheel
# PLAY = smokey_river
# PLAY = finches
PLAY = alices_wonderland
# PLAY = casbah
SRCDIR = /home/cds/folk/bert_jansch
SMOKEYWAV = ${SRCDIR}/02_smokey_river.wav
FINCHEWAV = ${SRCDIR}/05_finches.wav
VERONIWAV = ${SRCDIR}/07_veronica.wav
ALICESWAV = ${SRCDIR}/10_alices_wonderland.wav
CASBAHWAV = ${SRCDIR}/13_casbah.wav
WHEELWAV  = ${SRCDIR}/1965_it_dont_bother_me/05_the_wheel.wav

all : ${TRISTANOWAV}

${PLAY}.a4 : ${PLAY}
	muscript ${PLAY} > $@
	pkill -HUP gv

dev :
	vi ${PLAY}
	muscript ${PLAY} > ${PLAY}.a4
	pkill -HUP gv
edit :
	vi ${PLAY}
	muscript ${PLAY} > ${PLAY}.a4
	pkill -HUP gv
	muscript -midi ${PLAY} | midisox - -d # tempo 1.12
play :
	muscript -midi ${PLAY} | midisox - -d tempo 1.00
playslow : ${PLAY}_slow.wav
	xterm -geometry 80x24+320-5 -e mplayer ${PLAY}_slow.wav &
smokey_river_slow.wav : ${SMOKEYWAV}
	sox ${SMOKEYWAV} $@ speed 0.7925  # standard tuning, capo on 3rd ?
finches_slow.wav : ${FINCHEWAV}
	sox ${FINCHEWAV} $@ speed 0.83  # G_DGBd capo on 3rd ?
veronica_slow.wav : ${VERONIWAV}
	sox ${VERONIWAV} $@ speed 0.794   # standard tuning, capo on 3rd
alices_wonderland_slow.wav : ${ALICESWAV}
	sox ${ALICESWAV} $@ speed 0.783
casbah_slow.wav : ${CASBAHWAV}
	sox ${CASBAHWAV} $@ speed 0.83
wheel_slow.wav : ${WHEELWAV}
	sox ${WHEELWAV} $@ speed 0.7834
clean :
	rm -f smokey_river_slow.wav
	rm -f finches_slow.wav
	rm -f veronica_slow.wav
	rm -f alices_wonderland_slow.wav
	rm -f casbah_slow.wav
	rm -f wheel_slow.wav
