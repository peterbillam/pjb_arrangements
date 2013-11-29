MUSCRIPT = /home/pbin/muscript
ARRD = /home/pjb/www/mus/arr
A4D  = ${ARRD}/a4
USD  = ${ARRD}/us
XMLD = ${ARRD}/xml
SRCD = ${ARRD}/src
BACKPAGE  = /home/pjb/mus/blurb/freebackpage.a4
WARNING   = /home/pjb/mus/blurb/mus_free_warning_arr.a4
BANNERISE = /home/pbin/bannerise
A42US   = /home/pbin/a42us
PSCAT   = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
UPLOAD  = /home/pbin/upload
PIECE   = scarlatti_sonatas
PLAY    = scarlatti_sonatas

dev : ${PIECE}.a4 title.a4

all : ${A4D}/${PIECE1}.pdf  ${USD}/${PIECE1}.pdf  ${SRCD}/${PIECE1}.txt

dist1 :
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${SRCD}/${PIECE}.pdf
play :
	${MUSCRIPT} -midi ${PIECE} | aplaymidi - &

${A4D}/${PIECE}.pdf : title.a4 ${PIECE}.a4 ${BACKPAGE}
	groff -ms title | ${BANNERISE} > title.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.a4 ${PIECE}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 - ${BACKPAGE} \
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

p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@

