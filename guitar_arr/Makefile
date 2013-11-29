MUSCRIPT = /home/pbin/muscript
NORMALIZE = /usr/bin/normalize-audio
BLURB = /home/pjb/mus/blurb/compositions
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
PIECE = guitar_arr

dev : title.ps ${PIECE}.ps
all : ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt \
 ${MP3D}/${PIECE}.mp3
 # ${XMLD}/${PIECE}.xml ${XMLD}/${PIECE}_readme.txt
dist:
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${SRCD}/${PIECE}.txt
	upload ${MP3D}/${PIECE}.mp3

${A4D}/${PIECE}.pdf : title.ps ${PIECE}.ps ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps - ${FREEBACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.ps ${PIECE}.ps ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps - ${FREEBACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE}.xml : ${PIECE}
	${MUSCRIPT} -xml ${PIECE} > $@
${XMLD}/${PIECE}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE}.txt : ${PIECE}
	cp ${PIECE} $@
${MP3D}/${PIECE}.mp3 : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} | timidity -Ow -o t.wav -
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
	${MUSCRIPT} -midi ${PIECE} | aplaymidi -p TiM - &
	# ${MUSCRIPT} -midi ${PIECE} | midisox_lua - -d stat trim 279.5 tempo 1.1
