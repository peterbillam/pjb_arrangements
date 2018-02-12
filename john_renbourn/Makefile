# 02_smokey_river.wav 05_finches.wav 10_alices_wonderland.wav 13_casbah.wav

# PLAY = judy
# PLAY = down_on_the_barge
PLAY = plainsong
# PLAY = train_tune
# PLAY = wildest_pig_in_captivity
# PLAY = another_monday
# PLAY = waltz
# PLAY = buffalo
# PLAY = debbie_anne
# PLAY = day_at_the_seaside
SRCDIR1 = /home/cds/folk/john_renbourn/1965_john_renbourn
SRCDIR2 = /home/cds/folk/john_renbourn/1966_another_monday

all : ${TRISTANOWAV}

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
	muscript -midi ${PLAY} | midisox - -d # tempo 1.26
play :
	muscript -midi ${PLAY} | midisox - -d # tempo 1.26
playslow : ${PLAY}_slow.wav
	xterm -geometry 80x24+484-2 -e mplayer ${PLAY}_slow.wav &
playorig :
	xterm -geometry 80x24+1-5 -e mplayer ${SRCDIR1}/06_plainsong.wav &

judy_slow.wav : ${SRCDIR1}/01_judy.wav
	sox ${SRCDIR1}/01_judy.wav $@ speed 0.8409 tempo 0.5
	# standard tuning, capo on 3rd
down_on_the_barge_slow.wav : ${SRCDIR1}/04_down_on_the_barge.wav
	sox ${SRCDIR1}/04_down_on_the_barge.wav $@ speed 0.88 tempo 0.5
	# capo on 2nd
plainsong_slow.wav : ${SRCDIR1}/06_plainsong.wav
	sox ${SRCDIR1}/06_plainsong.wav $@ tempo 0.5 # speed 0.88
	# capo on 2nd 3:45 long, contains a few hummed notes round 150sec
train_tune_slow.wav : ${SRCDIR1}/09_train_tune.wav
	sox ${SRCDIR1}/09_train_tune.wav $@ speed 0.94 tempo 0.5
	# capo on 1st, but with 6th string down to D_
wildest_pig_in_captivity.wav.wav : \
 ${SRCDIR1}/11_wildest_pig_in_captivity.wav.wav
	sox ${SRCDIR1}/11_wildest_pig_in_captivity.wav.wav $@ tempo 0.5
	# either tuned E_ B_ E G B e, or capo on 2nd with 6th string down to D_
	# or capo on 2nd with D_ A_ D G A d
	# or  with D_ A_ D F A d for an easier pull from G# to A
	# which is the same as E_ B_ E G B e ...
another_monday_slow.wav : ${SRCDIR2}/01_another_monday.wav
	sox ${SRCDIR2}/01_another_monday.wav $@ speed 0.8909 tempo 0.5
	# capo on 2nd
waltz_slow.wav : ${SRCDIR2}/04_waltz.wav
	sox ${SRCDIR2}/04_buffalo.wav $@ speed 0.9439 tempo 0.5
	# capo on 1st, standard tuning in e_min
buffalo_slow.wav : ${SRCDIR2}/07_buffalo.wav
	sox ${SRCDIR2}/07_buffalo.wav $@ speed 1.06 tempo 0.5
	# blues. strung _down_ a semitone
debbie_anne_slow.wav : ${SRCDIR2}/09_debbie_anne.wav
	sox ${SRCDIR2}/09_debbie_anne.wav $@ speed 0.794 tempo 0.7
	# capo on 4th, but with 6th string down to D_
day_at_the_seaside_slow.wav : ${SRCDIR2}/11_day_at_the_seaside.wav
	sox ${SRCDIR2}/11_day_at_the_seaside.wav $@ speed 0.9439 tempo 0.5
	# capo on 1st ? standard tuning ? or capo on 3rd with E_ down to D_ ?
	# or an open tuning ?
clean :
	rm -f judy_slow.wav
	rm -f another_monday_slow.wav
