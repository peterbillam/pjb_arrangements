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
BACKPAGE = /home/pjb/mus/blurb/cc_backpage
WARNING = /home/pjb/mus/blurb/mus_free_warning_arr.a4
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
PIECE1 = canonica
PIECE2 = ric3
PIECE3 = ric6_kbd
PIECE4 = ric6_rec
PIECE5 = ric6_str
TITLE1 = title_${PIECE1}
TITLE2 = title_${PIECE2}
TITLE3 = title_${PIECE3}
TITLE4 = title_${PIECE4}
TITLE5 = title_${PIECE5}

dev : ${TITLE1}.a4 p2.a4 p3.a4 ${PIECE1}.a4 \
 ${TITLE2}.a4 ${PIECE2}.a4 \
 ${TITLE3}.a4 ${PIECE3}.a4 \
 ${TITLE4}.a4 ${PIECE4}.a4 \
 ${TITLE5}.a4 ${PIECE5}.a4
all : ${A4D}/${PIECE1}.pdf  ${USD}/${PIECE1}.pdf ${SRCD}/${PIECE1}.txt \
 ${A4D}/${PIECE2}.pdf  ${USD}/${PIECE2}.pdf ${SRCD}/${PIECE2}.txt \
 ${A4D}/${PIECE3}.pdf  ${USD}/${PIECE3}.pdf ${SRCD}/${PIECE3}.txt \
 ${A4D}/${PIECE4}.pdf  ${USD}/${PIECE4}.pdf ${SRCD}/${PIECE4}.txt \
 ${A4D}/${PIECE5}.pdf  ${USD}/${PIECE5}.pdf ${SRCD}/${PIECE5}.txt
dist1:
	upload ${A4D}/${PIECE1}.pdf
	upload ${USD}/${PIECE1}.pdf
	upload ${SRCD}/${PIECE1}.txt
dist2:
	upload ${A4D}/${PIECE2}.pdf
	upload ${USD}/${PIECE2}.pdf
	upload ${SRCD}/${PIECE2}.txt
dist3:
	upload ${A4D}/${PIECE3}.pdf
	upload ${USD}/${PIECE3}.pdf
	upload ${SRCD}/${PIECE3}.txt
dist4:
	upload ${A4D}/${PIECE4}.pdf
	upload ${USD}/${PIECE4}.pdf
	upload ${SRCD}/${PIECE4}.txt
dist5:
	upload ${A4D}/${PIECE5}.pdf
	upload ${USD}/${PIECE5}.pdf
	upload ${SRCD}/${PIECE5}.txt

${A4D}/${PIECE1}.pdf : ${TITLE1}.a4 p2.a4 p3.a4 ${PIECE1}.a4 ${BACKPAGE}.a4
	${UTF2ISO} ${TITLE1} | groff -ms | ${BANNERISE} > ${TITLE1}.a4
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} ${TITLE1}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE1}.pdf : ${TITLE1}.a4 p2.a4 p3.a4 ${PIECE1}.a4 ${BACKPAGE}.a4
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} ${TITLE1}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE1}.xml : ${PIECE1}
	${MUSCRIPT} -xml ${PIECE1} > $@
${XMLD}/${PIECE1}_readme.txt : p2.a4 p3.a4
	${NROF} p2.a4 p3.a4 > $@
${SRCD}/${PIECE1}.txt : ${PIECE1}
	cp ${PIECE1} $@
${MP3D}/${PIECE1}.mp3 : ${PIECE1}
	${MUSCRIPT} -midi ${PIECE1} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE2}.pdf : ${TITLE2}.a4 p2.a4 p3.a4 ${PIECE2}.a4 ${BACKPAGE}.a4
	${UTF2ISO} ${TITLE2} | groff -ms | ${BANNERISE} > ${TITLE2}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE2}.pdf : ${TITLE2}.a4 p2.a4 p3.a4 ${PIECE2}.a4 ${BACKPAGE}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE2}.xml : ${PIECE2}
	${MUSCRIPT} -xml ${PIECE2} > $@
${XMLD}/${PIECE2}_readme.txt : p2 p3
	${NROF} p2 p3 > $@
${SRCD}/${PIECE2}.txt : ${PIECE2}
	cp ${PIECE2} $@
${MP3D}/${PIECE2}.mp3 : ${PIECE2}
	${MUSCRIPT} -midi ${PIECE2} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE3}.pdf : ${TITLE3}.a4 p2.a4 p3.a4 ${PIECE3}.a4 ${BACKPAGE}.a4
	${UTF2ISO} ${TITLE3} | groff -ms | ${BANNERISE} > ${TITLE3}.a4
	${ADDMESSAGE} ${PIECE3}.a4 \
	| ${PSCAT} ${TITLE3}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE3}.pdf : ${TITLE3}.a4 p2.a4 p3.a4 \
 ${PIECE3}.a4 ${BACKPAGE}.a4
	${ADDMESSAGE} ${PIECE3}.a4 \
	| ${PSCAT} ${TITLE3}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE3}.xml : ${PIECE3}
	${MUSCRIPT} -xml ${PIECE3} > $@
${XMLD}/${PIECE3}_readme.txt : p2 p3
	${NROF} p2 p3 > $@
${SRCD}/${PIECE3}.txt : ${PIECE3}
	cp ${PIECE3} $@
${MP3D}/${PIECE3}.mp3 : ${PIECE3}
	${MUSCRIPT} -midi ${PIECE3} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE4}.pdf : ${TITLE4}.a4 p2.a4 p3.a4 ${PIECE4}.a4 ${BACKPAGE}.a4
	${UTF2ISO} ${TITLE4} | groff -ms | ${BANNERISE} > ${TITLE4}.a4
	${ADDMESSAGE} ${PIECE4}.a4 \
	| ${PSCAT} ${TITLE4}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE4}.pdf : ${TITLE4}.a4 p2.a4 p3.a4 \
 ${PIECE4}.a4 ${BACKPAGE}.a4
	${ADDMESSAGE} ${PIECE4}.a4 \
	| ${PSCAT} ${TITLE4}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE4}.xml : ${PIECE4}
	${MUSCRIPT} -xml ${PIECE4} > $@
${XMLD}/${PIECE4}_readme.txt : p2 p3
	${NROF} p2 p3 > $@
${SRCD}/${PIECE4}.txt : ${PIECE4}
	cp ${PIECE4} $@
${MP3D}/${PIECE4}.mp3 : ${PIECE4}
	${MUSCRIPT} -midi ${PIECE4} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE5}.pdf : ${TITLE5}.a4 p2.a4 p3.a4 ${PIECE5}.a4 ${BACKPAGE}.a4
	${UTF2ISO} ${TITLE5} | groff -ms | ${BANNERISE} > ${TITLE5}.a4
	${ADDMESSAGE} ${PIECE5}.a4 \
	| ${PSCAT} ${TITLE5}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE5}.pdf : ${TITLE5}.a4 p2.a4 p3.a4 \
 ${PIECE5}.a4 ${BACKPAGE}.a4
	${ADDMESSAGE} ${PIECE5}.a4 \
	| ${PSCAT} ${TITLE5}.a4 p2.a4 p3.a4 - ${BACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE5}.xml : ${PIECE5}
	${MUSCRIPT} -xml ${PIECE5} > $@
${XMLD}/${PIECE5}_readme.txt : p2 p3
	${NROF} p2 p3 > $@
${SRCD}/${PIECE5}.txt : ${PIECE5}
	cp ${PIECE5} $@
${MP3D}/${PIECE5}.mp3 : ${PIECE5}
	${MUSCRIPT} -midi ${PIECE5} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${PIECE1}.a4 : ${PIECE1}
	${MUSCRIPT} ${PIECE1} > $@
	pkill -HUP gv
${PIECE2}.a4 : ${PIECE2}
	${MUSCRIPT} ${PIECE2} > $@
	pkill -HUP gv
${PIECE3}.a4 : ${PIECE3}
	${MUSCRIPT} ${PIECE3} > $@
	pkill -HUP gv
${PIECE4}.a4 : ${PIECE4}
	${MUSCRIPT} ${PIECE4} > $@
	pkill -HUP gv
${PIECE5}.a4 : ${PIECE5}
	${MUSCRIPT} ${PIECE5} > $@
	pkill -HUP gv
${TITLE1}.a4 : ${TITLE1}
	${UTF2ISO} ${TITLE1} | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
${TITLE2}.a4 : ${TITLE2}
	${UTF2ISO} ${TITLE2} | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
${TITLE3}.a4 : ${TITLE3}
	${UTF2ISO} ${TITLE3} | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
${TITLE4}.a4 : ${TITLE4}
	${UTF2ISO} ${TITLE4} | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
${TITLE5}.a4 : ${TITLE5}
	${UTF2ISO} ${TITLE5} | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
p2.a4 : p2
	${UTF2ISO} p2 | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
p3.a4 : p3
	${UTF2ISO} p3 | groff -t -ms | ${BANNERISE} > $@
	pkill -HUP gv
play1 :
	${MUSCRIPT} -midi ${PIECE1} | aplaymidi - &
play2 :
	${MUSCRIPT} -midi ${PIECE2} | aplaymidi - &
play3 :
	${MUSCRIPT} -midi ${PIECE3} | aplaymidi - &
play4 :
	${MUSCRIPT} -midi ${PIECE4} | aplaymidi - &
play5 :
	${MUSCRIPT} -midi ${PIECE5} | aplaymidi - &

