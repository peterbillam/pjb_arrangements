MUSCRIPT = /home/pbin/muscript
NORMALIZE = /usr/bin/normalize-audio
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
ARRD = /home/pjb/www/mus/arr
A4D = ${ARRD}/a4
USD = ${ARRD}/us
XMLD = ${ARRD}/xml
SRCD = ${ARRD}/src
MP3D = ${ARRD}/mp3
FREEBACKPAGE = /home/pjb/mus/blurb/cc_backpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
PIECE = bwv1032_rec
PIECE2 = bwv1032_rec_Bb
PLAY = ${PIECE2}

dev : title.a4 p2.a4 ${PIECE}.a4  title_bb.a4 ${PIECE2}.a4
all : ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt \
  ${A4D}/${PIECE2}.pdf  ${USD}/${PIECE2}.pdf ${SRCD}/${PIECE2}.txt
 # ${XMLD}/${PIECE}.xml ${XMLD}/${PIECE}_readme.txt
dist:
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	# upload ${XMLD}/${PIECE}.xml
	# upload ${XMLD}/${PIECE}_readme.txt
	upload ${SRCD}/${PIECE}.txt
dist2:
	upload ${A4D}/${PIECE2}.pdf
	upload ${USD}/${PIECE2}.pdf
	# upload ${XMLD}/${PIECE2}.xml
	# upload ${XMLD}/${PIECE2}_readme.txt
	upload ${SRCD}/${PIECE2}.txt

${A4D}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE}.xml : ${PIECE}
	${MUSCRIPT} -xml ${PIECE} > $@
${XMLD}/${PIECE}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE}.txt : ${PIECE}
	cp ${PIECE} $@
${MP3D}/${PIECE}.mp3 : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE2}.pdf : title_bb.a4 p2.a4 ${PIECE2}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} title_bb.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE2}.pdf : title_bb.a4 p2.a4 ${PIECE2}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} title_bb.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE2}.xml : ${PIECE2}
	${MUSCRIPT} -xml ${PIECE2} > $@
${XMLD}/${PIECE2}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE2}.txt : ${PIECE2}
	cp ${PIECE2} $@
${MP3D}/${PIECE2}.mp3 : ${PIECE2}
	${MUSCRIPT} -midi ${PIECE2} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

title.a4 : title
	${UTF2ISO} title | groff -ms | ${BANNERISE} > $@
title_bb.a4 : title_bb
	${UTF2ISO} title_bb | groff -ms | ${BANNERISE} > $@
p2.a4 : p2
	${UTF2ISO} p2 | groff -ms | ${BANNERISE} > $@
${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
	pkill -HUP gv
${PIECE2}.a4 : ${PIECE2}
	${MUSCRIPT} ${PIECE2} > $@
	pkill -HUP gv
play :
	${MUSCRIPT} -midi ${PLAY} | aplaymidi - &

${PIECE}.acc.mid : ${PIECE}
	grep -v '^=1' ${PIECE} | ${MUSCRIPT} -midi > $@
