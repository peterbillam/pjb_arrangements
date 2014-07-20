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
PIECE1  = book1
PLAY    = f_bb

dev : ${PIECE1}.a4 title_${PIECE1}.a4

all : ${A4D}/${PIECE1}.pdf  ${USD}/${PIECE1}.pdf  ${SRCD}/${PIECE1}.txt

dist1 :
	upload ${A4D}/${PIECE1}.pdf
	upload ${USD}/${PIECE1}.pdf
	upload ${SRCD}/${PIECE1}.pdf
dist2 :
	upload ${A4D}/${PIECE2}.pdf
	upload ${USD}/${PIECE2}.pdf
	upload ${SRCD}/${PIECE2}.pdf
play :
	${MUSCRIPT} -midi ${PLAY} | aplaymidi - &
play2 :
	${MUSCRIPT} -midi ${PIECE2} | aplaymidi - &

${PIECE1} : p_C f_C p_d f_d p_E f_E p_fis f_fis p_As f_As p_bb f_bb
	chmod 644 $@
	cat p_C f_C p_d f_d p_E f_E p_fis f_fis p_As f_As p_bb f_bb > $@
	chmod 444 $@

${A4D}/${PIECE1}.pdf : title_${PIECE1}.a4 ${PIECE1}.a4 ${BACKPAGE}
	groff -ms title_${PIECE1} | ${BANNERISE} > title_${PIECE1}.a4
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} title_${PIECE1}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE1}.pdf : title_${PIECE1}.a4 ${PIECE1}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} title_${PIECE1}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE1}.xml : ${PIECE1}
	${MUSCRIPT} -xml ${PIECE1} > $@
${SRCD}/${PIECE1}.txt : ${PIECE1}
	cp ${PIECE1} $@
${PIECE1}.a4 : ${PIECE1}
	${MUSCRIPT} ${PIECE1} > $@
	pkill -HUP gv
title_${PIECE1}.a4 : title_${PIECE1}
	groff -ms title_${PIECE1} | ${BANNERISE} > $@

${A4D}/${PIECE2}.pdf : title_${PIECE2}.a4 ${PIECE2}.a4 ${BACKPAGE}
	groff -ms title_${PIECE2}.a4 | ${BANNERISE} > title_${PIECE2}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} title_${PIECE2}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE2}.pdf : title_${PIECE2}.a4 ${PIECE2}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} title_${PIECE2}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE2}.xml : ${PIECE2}
	${MUSCRIPT} -xml ${PIECE2} > $@
${SRCD}/${PIECE2}.txt : ${PIECE2}
	cp ${PIECE2} $@
${PIECE2}.a4 : ${PIECE2}
	${MUSCRIPT} ${PIECE2} > $@
	pkill -HUP gv
title_${PIECE2}.a4 : title_${PIECE2}
	groff -ms title_${PIECE2} | ${BANNERISE} > $@

p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@

