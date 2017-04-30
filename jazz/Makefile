MUSCRIPT = /home/pbin/muscript_lua
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
PLAY   = whisper_not

dev : ${PLAY}.a4
all : ${A4D}/${PLAY}.pdf ${USD}/${PLAY}.pdf ${SRCD}/${PLAY}.txt
	date
dist:
	upload ${A4D}/${PLAY}.pdf
	upload ${USD}/${PLAY}.pdf
	upload ${SRCD}/${PLAY}.txt



${A4D}/${PLAY}.pdf : ${TITLE61}.a4 ${PLAY}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PLAY}.a4 \
	| ${PSCAT} ${TITLE61}.a4 p2_op67.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PLAY}.pdf : ${TITLE61}.a4 ${PLAY}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PLAY}.a4 \
	| ${PSCAT} ${TITLE61}.a4 p2_op67.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PLAY}.xml : ${PLAY}
	${MUSCRIPT} -xml ${PLAY} > $@
${XMLD}/${PLAY}_readme.txt : p2_op67 
	${NROF} p2_op67 > $@
${SRCD}/${PLAY}.txt : ${PLAY}
	cp ${PLAY} $@
${MP3D}/${PLAY}.mp3 : ${PLAY}
	${MUSCRIPT} -midi ${PLAY} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${TITLE61}.a4 : ${TITLE61}
	utf2iso ${TITLE61} | groff -ms | ${BANNERISE} > $@
${PLAY}.a4 : ${PLAY}
	${MUSCRIPT} ${PLAY} > $@
	pkill -HUP gv

edit :
	vi ${PLAY}
	muscript_lua ${PLAY} > ${PLAY}.a4
	pkill -HUP gv
	muscript_lua -midi ${PLAY} | midisox_lua - -d stat # trim 65

play :
	${MUSCRIPT} -midi ${PLAY} | midisox_lua - -d stat # trim 65

