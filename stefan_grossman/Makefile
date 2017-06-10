# Promising instrumentals:
#  cd /home/cds/folk/stefan_grossman/1972_live/
#  play 04_lena_anne.wav 17_dallas_rag.wav 20_matesa.wav 22_powder_rag.wav


# 04_lena_anne.wav   capo on 2nd
# 17_dallas_rag.wav  capo on 5th
# 20_matesa.wav      sounds in D; could be opne, or capo in 2nd
# 22_powder_rag.wav  in A; no capo

PLAY = dallas_rag
SRCDIR = /home/cds/folk/stefan_grossman/1972_live
LENAWAV    = ${SRCDIR}/04_lena_anne.wav
DALLASWAV  = ${SRCDIR}/17_dallas_rag.wav
MATESAWAV  = ${SRCDIR}/20_matesa.wav
POWDERWAV  = ${SRCDIR}/22_powder_rag.wav

${PLAY}.ps : ${PLAY}
	muscript ${PLAY} > $@
	pkill -HUP gv

dev :
	vi ${PLAY}
	muscript ${PLAY} > ${PLAY}.ps
	pkill -HUP gv
edit :
	vi ${PLAY}
	muscript ${PLAY} > ${PLAY}.ps
	pkill -HUP gv
	muscript -midi ${PLAY} | midisox - -d # tempo 1.12
play :
	muscript -midi ${PLAY} | midisox - -d tempo 1.00
playslow : ${PLAY}_slow.wav
	xterm -geometry 80x24+320-5 -e mplayer ${PLAY}_slow.wav &
lena_anne_slow.wav : ${LENAWAV}
	sox ${LENAWAV}   $@ speed 0.8409  # standard tuning, capo on 2nd
dallas_rag_slow.wav : ${DALLASWAV}
	sox ${DALLASWAV} $@ speed 0.8409 tempo 0.75 # standard tuning, capo on 5th
matesa_slow.wav : ${MATESAWAV}
	sox ${MATESAWAV} $@ speed 0.8409 tempo 0.75  # standard tuning, capo on 2nd
powder_rag_slow.wav : ${POWDERWAV}
	sox ${POWDERWAV} $@ speed 0.9439 tempo 0.8
clean :
	rm -f lena_anne_slow.wav
	rm -f dallas_rag_slow.wav
	rm -f matesa_slow.wav
	rm -f powder_rag_slow.wav
