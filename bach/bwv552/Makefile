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
DIST = pjb3265@loki.webcity.com.au:public_html/mus/arr
PIECE = bwv552

dev : title.ps p2.ps ${PIECE}.ps
all : ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}txt
dist:
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${SRCD}/${PIECE}.txt

${FREED}/${PIECE}.pdf : p2.ps ${PIECE}.ps ${FREEBACKPAGE}.ps
	${UTF2ISO} title | groff -ms | ${BANNERISE} > title.ps
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps p2.ps - ${FREEBACKPAGE}.ps \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${A4D}/${PIECE}.pdf : title.ps p2.ps ${PIECE}.ps ${FREEBACKPAGE}.ps
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps p2.ps - ${FREEBACKPAGE}.ps \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.ps p2.ps ${PIECE}.ps ${FREEBACKPAGE}.ps
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps p2.ps - ${FREEBACKPAGE}.ps \
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

title.ps : title
	${UTF2ISO} title | groff -ms | ${BANNERISE} > $@
p2.ps : p2
	${UTF2ISO} p2 | groff -ms | ${BANNERISE} > $@
${PIECE}.ps : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
	pkill -HUP gv
play :
	${MUSCRIPT} -midi ${PIECE} | midisox_lua - -d stat trim 330
