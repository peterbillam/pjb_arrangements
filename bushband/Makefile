MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
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
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
UPLOAD = /home/pbin/upload
PIECE = bushband
PLAY = reels

dev : ${PIECE}.a4 p2.a4 title.a4 hornpipes.a4

all : ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf  ${SRCD}/${PIECE}.txt
 # ${MP3D}/bushband_polkas.mp3 ${MP3D}/bushband_jigs.mp3 \
 # ${MP3D}/bushband_waltzes.mp3 ${MP3D}/bushband_reels.mp3

dist :
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${SRCD}/${PIECE}.txt
	# upload ${MP3D}/bushband_polkas.mp3
	# upload ${MP3D}/bushband_jigs.mp3
	# upload ${MP3D}/bushband_waltzes.mp3
play :
	sed 's/^# //' ${PLAY} | ${MUSCRIPT} -midi | aplaymidi - &

bushband : polkas jigs waltzes reels
	cat polkas jigs waltzes reels > $@

${A4D}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${BACKPAGE}
	groff -ms title | ${BANNERISE} > title.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE}.xml : ${PIECE}
	${MUSCRIPT} -xml ${PIECE} > $@
${SRCD}/${PIECE}.txt : ${PIECE}
	cp ${PIECE} $@
${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
	pkill -HUP gv
title.a4 : title
	groff -ms title | ${BANNERISE} > $@

compromise :
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${BACKPAGE} \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sOutputFile=/tmp/bushband.pdf -
	# now:
	#  yencee -n alt.binaries.sheet-music -s 'Australian folkdances' \
	#  /tmp/bushband.pdf

polkas.mid: polkas
	sed 's/^# //' polkas | ${MUSCRIPT} -midi > $@
polkas.wav: polkas.mid
	# This uses the XV-2020; the amp must be switched to SYNTH
	rec -c 2 t.wav trim 0 169 stat &
	sleep 0.2
	aplaymidi polkas.mid
	sox t.wav $@ rate 44100
	normalize --peak $@
	rm t.wav
${MP3D}/bushband_polkas.mp3 : polkas.wav
	# ${MUSCRIPT} -midi ${PIECE} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	lame -h polkas.wav $@

jigs.mid: jigs
	sed 's/^# //' jigs | ${MUSCRIPT} -midi > $@
jigs.wav: jigs.mid
	# This uses the XV-2020; the amp must be switched to SYNTH
	rec -c 2 t.wav trim 0 230 stat &
	sleep 0.2
	aplaymidi jigs.mid
	sox t.wav $@ rate 44100
	normalize --peak $@
	rm t.wav
${MP3D}/bushband_jigs.mp3 : jigs.wav
	# ${MUSCRIPT} -midi ${PIECE} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	lame -h jigs.wav $@

waltzes.mid: waltzes
	sed 's/^# //' waltzes | ${MUSCRIPT} -midi > $@
waltzes.wav: waltzes.mid
	# This uses the XV-2020; the amp must be switched to SYNTH
	rec -c 2 t.wav trim 0 193 stat &
	sleep 0.2
	aplaymidi waltzes.mid
	sox t.wav $@ rate 44100
	normalize --peak $@
	rm t.wav
${MP3D}/bushband_waltzes.mp3 : waltzes.wav
	# ${MUSCRIPT} -midi ${PIECE} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	lame -h waltzes.wav $@

reels.mid: reels
	sed 's/^# //' reels | ${MUSCRIPT} -midi > $@
reels.wav: reels.mid
	# This uses the XV-2020; the amp must be switched to SYNTH
	rec -c 2 t.wav trim 0 140 stat &
	sleep 0.2
	aplaymidi reels.mid
	sox t.wav $@ rate 44100
	normalize --peak $@
	rm t.wav
${MP3D}/bushband_reels.mp3 : reels.wav
	# ${MUSCRIPT} -midi ${PIECE} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	lame -h reels.wav $@
hornpipes.a4 : hornpipes
	muscript hornpipes > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
