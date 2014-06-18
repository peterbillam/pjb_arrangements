MUSCRIPT = /home/pbin/muscript
NORMALIZE = /usr/bin/normalize-audio
BLURB = /home/pjb/mus/blurb/compositions
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
DIST = pjb3265@loki.webcity.com.au:public_html/mus/arr
PIECE1 = descant_chorales
PIECE2 = satb_chorales
TITLE1 = title_${PIECE1}
TITLE2 = title_${PIECE2}
P2_1 = p2_${PIECE1}
P2_2 = p2_${PIECE2}
P3_2 = p3_${PIECE2}

dev : ${TITLE1}.a4 ${P2_1}.a4 ${PIECE1}.a4 \
 ${TITLE2}.a4 ${P2_2}.a4 ${P3_2}.a4 ${PIECE2}.a4 \
 o_welt_ich_muss.a4 o_wie_selig.a4 trumpet.a4 alan_chorales.a4 bs_chorales.a4
all : ${A4D}/${PIECE1}.pdf  ${USD}/${PIECE1}.pdf ${XMLD}/${PIECE1}.xml \
      ${A4D}/${PIECE2}.pdf  ${USD}/${PIECE2}.pdf ${XMLD}/${PIECE2}.xml \
      ${SRCD}/${PIECE1}.txt ${SRCD}/${PIECE2}.txt
dist1:
	upload ${A4D}/${PIECE1}.pdf
	upload ${USD}/${PIECE1}.pdf
	upload ${SRCD}/${PIECE1}.txt
dist2:
	upload ${A4D}/${PIECE2}.pdf
	upload ${USD}/${PIECE2}.pdf
	upload ${SRCD}/${PIECE2}.txt

${A4D}/${PIECE1}.pdf : ${TITLE1}.a4 ${P2_1}.a4 ${PIECE1}.a4 ${BACKPAGE}
	${UTF2ISO} ${TITLE1} | groff -ms | ${BANNERISE} > ${TITLE1}.a4
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} ${TITLE1}.a4 ${P2_1}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE1}.pdf : ${TITLE1}.a4 ${P2_1}.a4 ${PIECE1}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} ${TITLE1}.a4 ${P2_1}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE1}.xml : ${PIECE1}
	${MUSCRIPT} -xml ${PIECE1} > $@
${XMLD}/${PIECE1}_readme.txt : ${P2_1}.a4
	${NROF} ${P2_1}.a4 > $@
${SRCD}/${PIECE1}.txt : ${PIECE1}
	cp ${PIECE1} $@
${MP3D}/${PIECE1}.mp3 : ${PIECE1}
	${MUSCRIPT} -midi ${PIECE1} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE2}.pdf : ${TITLE2}.a4 ${P2_2}.a4 ${P3_2}.a4 \
 ${PIECE2}.a4 ${BACKPAGE}
	${UTF2ISO} ${TITLE2} | groff -ms | ${BANNERISE} > ${TITLE2}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 ${P2_2}.a4 ${P3_2}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE2}.pdf : ${TITLE2}.a4 ${P2_2}.a4 ${P3_2}.a4 \
 ${PIECE2}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 ${P2_2}.a4 ${P3_2}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE2}.xml : ${PIECE2}
	${MUSCRIPT} -xml ${PIECE2} > $@
${XMLD}/${PIECE2}_readme.txt : ${P2_2} ${P3_2}
	${NROF} ${P2_2} ${P3_2} > $@
${SRCD}/${PIECE2}.txt : ${PIECE2}
	cp ${PIECE2} $@
${MP3D}/${PIECE2}.mp3 : ${PIECE2}
	${MUSCRIPT} -midi ${PIECE2} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${PIECE1}.a4 : ${PIECE1}
	${MUSCRIPT} ${PIECE1} > $@
${PIECE2}.a4 : ${PIECE2}
	${MUSCRIPT} ${PIECE2} > $@
${TITLE1}.a4 : ${TITLE1}
	${UTF2ISO} ${TITLE1} | groff -ms | ${BANNERISE} > $@
${TITLE2}.a4 : ${TITLE2}
	${UTF2ISO} ${TITLE2} | groff -ms | ${BANNERISE} > $@
${P2_1}.a4 : ${P2_1}
	${UTF2ISO} ${P2_1} | groff -ms | ${BANNERISE} > $@
${P2_2}.a4 : ${P2_2}
	${UTF2ISO} ${P2_2} | groff -ms | ${BANNERISE} > $@
${P3_2}.a4 : ${P3_2}
	${UTF2ISO} ${P3_2} | groff -t -ms | ${BANNERISE} > $@
play1 :
	${MUSCRIPT} -midi ${PIECE1} | aplaymidi - &
play2 :
	${MUSCRIPT} -midi ${PIECE2} | aplaymidi - &

alan_chorales.a4 : alan_chorales
	${MUSCRIPT} alan_chorales > $@
o_welt_ich_muss.a4 : o_welt_ich_muss
	${MUSCRIPT} o_welt_ich_muss > $@
o_wie_selig.a4 : o_wie_selig
	${MUSCRIPT} o_wie_selig > $@
trumpet.a4 : trumpet
	${MUSCRIPT} trumpet > $@

bs_chorales.a4 : ${PIECE2}
	egrep -v "^\=1,|^\=2'" ${PIECE2} | ${MUSCRIPT} > $@

