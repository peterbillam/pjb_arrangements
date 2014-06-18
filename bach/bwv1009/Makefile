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
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
PIECE = bwv1009
PLAY  = bwv1009

dev : ${PIECE}.a4
all : ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt \
 ${XMLD}/${PIECE}.xml ${XMLD}/${PIECE}_readme.txt
dist:
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${XMLD}/${PIECE}.xml
	upload ${XMLD}/${PIECE}_readme.txt
	upload ${SRCD}/${PIECE}.txt

${FREED}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${A4D}/${PIECE}.pdf : title.a4 ${PIECE}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 - ${FREEBACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.a4 ${PIECE}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 - ${FREEBACKPAGE}.a4 \
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

title.a4 : title
	${UTF2ISO} title | groff -ms | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
bwv1009_C.a4 : bwv1009_C
	${MUSCRIPT} bwv1009_C > $@
${PIECE}.mid : ${PIECE}
	sed '/pagenum 14/q' ${PIECE} | ${MUSCRIPT} -midi > $@
t : ${PLAY}
	start_stop ${PLAY} > $@
t.a4 : t
	${MUSCRIPT} t > $@
play : t
	${MUSCRIPT} -midi t > $@
	aplaymidi t.mid &
