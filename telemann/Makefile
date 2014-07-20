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
PIECE1 = fantasias_Crec
PIECE2 = fantasias_Frec
TITLE1 = title_Crec
TITLE2 = title_Frec
PLAY  = fantasias_Frec

dev : t.mid ${TITLE1}.a4 ${TITLE2}.a4 p2.a4 p3.a4 ${PIECE1}.a4 ${PIECE2}.a4
all : \
 ${A4D}/${PIECE1}.pdf  ${USD}/${PIECE1}.pdf ${SRCD}/${PIECE1}.txt \
 ${A4D}/${PIECE2}.pdf  ${USD}/${PIECE2}.pdf ${SRCD}/${PIECE2}.txt
 #${XMLD}/${PIECE}.xml ${XMLD}/${PIECE}_readme.txt
	date

dist1:
	# 20090912  scp slows down a lot and often hangs
	upload ${A4D}/${PIECE1}.pdf
	upload ${USD}/${PIECE1}.pdf
	upload ${SRCD}/${PIECE1}.txt
	#upload ${XMLD}/${PIECE1}.xml
	#upload ${XMLD}/${PIECE1}_readme.txt
dist2:
	upload ${A4D}/${PIECE2}.pdf
	upload ${USD}/${PIECE2}.pdf
	upload ${SRCD}/${PIECE2}.txt
	#upload ${XMLD}/${PIECE2}.xml
	#upload ${XMLD}/${PIECE2}_readme.txt

${A4D}/${PIECE1}.pdf : ${TITLE1}.a4 p2.a4 p3.a4 ${PIECE1}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} ${TITLE1}.a4 p2.a4 p3.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE1}.pdf : ${TITLE1}.a4 ${PIECE1}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} ${TITLE1}.a4 p2.a4 p3.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE1}.xml : ${PIECE1}
	${MUSCRIPT} -xml ${PIECE1} > $@
${XMLD}/${PIECE1}_readme.txt : p2 p3
	${NROF} p2 > $@
	${NROF} p3 >> $@
${SRCD}/${PIECE1}.txt : ${PIECE1}
	cp ${PIECE1} $@
${MP3D}/${PIECE1}.mp3 : ${PIECE1}
	${MUSCRIPT} -midi ${PIECE1} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${PIECE1}.a4 : ${PIECE1}
	${MUSCRIPT} ${PIECE1} > $@

${A4D}/${PIECE2}.pdf : ${TITLE1}.a4 p2.a4 p3.a4 ${PIECE2}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE1}.a4 p2.a4 p3.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE2}.pdf : ${TITLE1}.a4 ${PIECE2}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE1}.a4 p2.a4 p3.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE2}.xml : ${PIECE2}
	${MUSCRIPT} -xml ${PIECE2} > $@
${XMLD}/${PIECE2}_readme.txt : p2 p3
	${NROF} p2 > $@
	${NROF} p3 >> $@
${SRCD}/${PIECE2}.txt : ${PIECE2}
	cp ${PIECE2} $@
${MP3D}/${PIECE2}.mp3 : ${PIECE2}
	${MUSCRIPT} -midi ${PIECE2} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${PIECE2}.a4 : ${PIECE2}
	${MUSCRIPT} ${PIECE2} > $@

${TITLE1}.a4 : title
	sed 's/ X / C /' title | groff -ms | ${BANNERISE} > $@
${TITLE2}.a4 : title
	sed 's/ X / F /' title | groff -ms | ${BANNERISE} > $@
p2.a4 : p2
	groff -t -ms p2 | ${BANNERISE} > $@
p3.a4 : p3
	groff -t -ms p3 | ${BANNERISE} > $@
t.mid : ${PLAY}
	${MUSCRIPT} -midi ${PLAY} > t.mid
	aplaymidi t.mid &


