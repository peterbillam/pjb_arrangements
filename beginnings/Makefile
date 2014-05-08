MUSCRIPT = /home/pbin/muscript
NORMALIZE = /usr/bin/normalize-audio
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
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
PIECE = beginnings
TITLE = title


dev : ${TITLE}.a4 ${PIECE}.a4
all : \
 ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt \
 ${XMLD}/${PIECE}.xml
 # ${XMLD}/${PIECE}_readme.txt

dist:
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	# upload ${XMLD}/${PIECE}.xml
	# upload ${XMLD}/${PIECE}_readme.txt
	upload ${SRCD}/${PIECE}.txt

${A4D}/${PIECE}.pdf : ${TITLE}.a4 ${PIECE}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} ${TITLE}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : ${TITLE}.a4 ${PIECE}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} ${TITLE}.a4 - ${BACKPAGE} \
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

${TITLE}.a4 : ${TITLE}
	${UTF2ISO} ${TITLE} | groff -ms | ${BANNERISE} > $@
p2.a4 : p2
	${UTF2ISO} p2 | groff -ms | ${BANNERISE} > $@
${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
	pkill -HUP gv
play :
	${MUSCRIPT} -midi ${PIECE} | aplaymidi - &
