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
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage.a4
WARNING = /home/pjb/mus/blurb/mus_free_warning_arr.a4
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
DIST = pjb3265@loki.webcity.com.au:public_html/mus/arr
PIECE = bwv1031
PLAY  = bwv1031

dev : t.mid title.a4 p2.a4 ${PIECE}.a4 Bb_part.a4
all : ${FREED}/bwv1031.pdf ${FREED}/bwv1031_Bb_part.pdf \
 ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf \
 ${XMLD}/${PIECE}.xml ${XMLD}/${PIECE}_readme.txt
dist:
	scp -P 2223 ${A4D}/${PIECE}.pdf  ${DIST}/a4/
	scp -P 2223 ${USD}/${PIECE}.pdf  ${DIST}/us/
	scp -P 2223 ${XMLD}/${PIECE}.xml ${DIST}/xml/
	scp -P 2223 ${XMLD}/${PIECE}_readme.txt ${DIST}/xml/ 
	scp -P 2223 ${PIECE} ${DIST}/src/${PIECE}.txt

${FREED}/bwv1031.pdf : title.a4 ${WARNING} p2.a4 bwv1031.a4 ${FREEBACKPAGE}
	groff -ms title | ${BANNERISE} > title.a4
	${ADDMESSAGE} bwv1031.a4 \
	| ${PSCAT} title.a4 ${WARNING} p2.a4 - ${FREEBACKPAGE} \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${FREED}/${PIECE}_Bb_part.pdf : Bb_part.a4
	${ADDMESSAGE} Bb_part.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${A4D}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE} \
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
	groff -ms title | ${BANNERISE} > $@
p2.a4 : p2
	${UTF2ISO} p2 | groff -ms | ${BANNERISE} > $@
${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
Bb_part.a4 : Bb_part
	${MUSCRIPT} Bb_part > $@
t.mid : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} > $@
	aplaymidi t.mid &
