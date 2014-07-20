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
PIECE1 = draw_on_rec
PIECE2 = draw_on_fl
TITLE1 = title_rec
TITLE2 = title_fl


dev : ${TITLE1}.a4 ${TITLE2}.a4 p2.a4 ${PIECE1}.a4 ${PIECE2}.a4
all : \
 ${A4D}/${PIECE1}.pdf  ${USD}/${PIECE1}.pdf \
 ${A4D}/${PIECE2}.pdf  ${USD}/${PIECE2}.pdf \
 ${SRCD}/${PIECE1}.txt ${SRCD}/${PIECE2}.txt \
 ${XMLD}/${PIECE1}.xml ${XMLD}/${PIECE1}_readme.txt \
 ${XMLD}/${PIECE2}.xml ${XMLD}/${PIECE2}_readme.txt

dist1:
	upload ${A4D}/${PIECE1}.pdf
	upload ${USD}/${PIECE1}.pdf
	# upload ${XMLD}/${PIECE1}.xml
	# upload ${XMLD}/${PIECE1}_readme.txt
	upload ${SRCD}/${PIECE1}.txt
dist2:
	upload ${A4D}/${PIECE2}.pdf
	upload ${USD}/${PIECE2}.pdf
	# upload ${XMLD}/${PIECE2}.xml
	# upload ${XMLD}/${PIECE2}_readme.txt ${DIST}/arr/xml/ 
	upload ${SRCD}/${PIECE2}.txt

${A4D}/${PIECE1}.pdf : ${TITLE1}.a4 p2.a4 ${PIECE1}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} ${TITLE1}.a4 p2.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE1}.pdf : ${TITLE1}.a4 p2.a4 ${PIECE1}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} ${TITLE1}.a4 p2.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE1}.xml : ${PIECE1}
	${MUSCRIPT} -xml ${PIECE1} > $@
${XMLD}/${PIECE1}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE1}.txt : ${PIECE1}
	cp ${PIECE1} $@
${MP3D}/${PIECE1}.mp3 : ${PIECE1}
	${MUSCRIPT} -midi ${PIECE1} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${FREED}/${PIECE2}.pdf : p2.a4 ${WARNING} ${PIECE2}.a4 ${BACKPAGE}
	${UTF2ISO} ${TITLE2} | groff -ms | ${BANNERISE} > ${TITLE2}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 ${WARNING} p2.a4 - ${BACKPAGE} \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${A4D}/${PIECE2}.pdf : ${TITLE2}.a4 p2.a4 ${PIECE2}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 p2.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE2}.pdf : ${TITLE2}.a4 p2.a4 ${PIECE2}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 p2.a4 - ${BACKPAGE} \
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

${TITLE1}.a4 : ${TITLE1}
	${UTF2ISO} ${TITLE1} | groff -ms | ${BANNERISE} > $@
${TITLE2}.a4 : ${TITLE2}
	${UTF2ISO} ${TITLE2} | groff -ms | ${BANNERISE} > $@
p2.a4 : p2
	${UTF2ISO} p2 | groff -ms | ${BANNERISE} > $@
${PIECE1}.a4 : ${PIECE1}
	${MUSCRIPT} ${PIECE1} > $@
	pkill -HUP gv
${PIECE2}.a4 : ${PIECE2}
	${MUSCRIPT} ${PIECE2} > $@
	pkill -HUP gv
play1 :
	${MUSCRIPT} -midi ${PIECE1} | aplaymidi - &
play2 :
	${MUSCRIPT} -midi ${PIECE2} | midisox_lua - -d stat # trim 50 fade 1 60 1
