MUSCRIPT=/home/pbin/muscript
DISTDIR=/home/pjb/www/tmp
PLAY=such_a_night

dev : t.mid heartache_tonight.a4 poppa_was.a4 \
 son_of_a_preacher_man.a4 such_a_night.a4

heartache_tonight.a4 : heartache_tonight
	${MUSCRIPT} heartache_tonight > $@
	pkill -HUP gv
poppa_was.a4 : poppa_was
	${MUSCRIPT} poppa_was > $@
	pkill -HUP gv
son_of_a_preacher_man.a4 : son_of_a_preacher_man
	${MUSCRIPT} son_of_a_preacher_man > $@
	pkill -HUP gv
such_a_night.a4 : such_a_night
	${MUSCRIPT} such_a_night > $@
	pkill -HUP gv
play :
	# ${MUSCRIPT} -midi ${PLAY} | midisox_lua - -d trim 70 stat
	${MUSCRIPT} -midi ${PLAY} | aplaymidi - &

all : ${DISTDIR}/such_a_night.pdf ${DISTDIR}/such_a_night.mp3

dist :
	upload  ${DISTDIR}/such_a_night.pdf
	upload  ${DISTDIR}/such_a_night.mp3

${DISTDIR}/such_a_night.mp3 : such_a_night
	${MUSCRIPT} -midi such_a_night | timidity -Ow -o t.wav -
	normalize-audio --peak t.wav
	lame -h t.wav $@
	rm t.wav

${DISTDIR}/such_a_night.pdf : such_a_night.a4
	/usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ - \
	 <such_a_night.a4
