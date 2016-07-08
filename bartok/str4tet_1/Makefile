MUSCRIPT = /home/pbin/muscript_lua
NORMALIZE = /usr/bin/normalize-audio
BLURB = /home/pjb/mus/blurb/compositions
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
PIECE = bartok_str4tet_1
PLAY = bartok_str4tet_1
WAV = /home/pjb/wav/bartok/${PIECE}.wav

dev : title.ps p2.ps bartok_str4tet_1.ps

all : ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt \
 ${MP3D}/${PIECE}.mp3
dist:
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${SRCD}/${PIECE}.txt
#	upload ${MP3D}/${PIECE}.mp3

${A4D}/${PIECE}.pdf : title.ps p2.ps ${PIECE}.ps ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps p2.ps - ${FREEBACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.ps p2.ps ${PIECE}.ps ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps p2.ps - ${FREEBACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE}.xml : ${PIECE}
	${MUSCRIPT} -xml ${PIECE} > $@
${XMLD}/${PIECE}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE}.txt : ${PIECE}
	cp ${PIECE} $@
${MP3D}/${PIECE}.mp3 : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} | midisox_lua - - tempo 1.1 \
	| timidity -Ow -o ${WAV} -
	${NORMALIZE} --peak ${WAV}
	lame -h ${WAV} $@

title.ps : title
	${UTF2ISO} title | groff -ms | ${BANNERISE} > $@
p2.ps : p2
	${UTF2ISO} p2 | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
bartok_str4tet_1.ps : bartok_str4tet_1
	${MUSCRIPT} bartok_str4tet_1 > $@
	pkill -HUP gv
play :
	${MUSCRIPT} -midi ${PLAY} | midisox_lua - -d
edit :
	vi ${PLAY}
	${MUSCRIPT} ${PLAY} > ${PLAY}.ps
	pkill -HUP gv
	${MUSCRIPT} -midi ${PLAY} | midisox_lua - -d

video_titles.jpg : video_titles.eps
	eps2jpg video_titles.eps > $@
	display $@
video : video_titles.jpg
	muscript2video -t video_titles.jpg \
	  -c /home/pjb/mus/blurb/credits.jpg video_bartok_str4tet_1
