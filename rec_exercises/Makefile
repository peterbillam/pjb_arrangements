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
BACKPAGE = /home/pjb/mus/blurb/cc_backpage.a4
WARNING = /home/pjb/mus/blurb/mus_free_warning_arr.a4
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
PIECE_C = rec_exercises_C
PIECE_F = rec_exercises_F
PIECE_B = rec_exercises_B
PIECE_G = rec_exercises_G

dev : title_C.a4 title_F.a4 ${PIECE_C}.a4 ${PIECE_F}.a4 p2.a4 f_min.a4 \
 title_B.a4 ${PIECE_B}.a4 title_G.a4 ${PIECE_G}.a4
all : ${FREED}/${PIECE_C}.pdf ${FREED}/${PIECE_F}.pdf \
 ${A4D}/${PIECE_C}.pdf  ${USD}/${PIECE_C}.pdf ${SRCD}/${PIECE_C}.txt \
 ${A4D}/${PIECE_F}.pdf  ${USD}/${PIECE_F}.pdf ${SRCD}/${PIECE_F}.txt \
 ${A4D}/${PIECE_B}.pdf  ${USD}/${PIECE_B}.pdf ${SRCD}/${PIECE_B}.txt \
 ${A4D}/${PIECE_G}.pdf  ${USD}/${PIECE_G}.pdf ${SRCD}/${PIECE_G}.txt
distc:
	upload ${A4D}/${PIECE_C}.pdf
	upload ${USD}/${PIECE_C}.pdf
	upload ${SRCD}/${PIECE_C}.txt
distf:
	upload ${A4D}/${PIECE_F}.pdf
	upload ${USD}/${PIECE_F}.pdf
	upload ${SRCD}/${PIECE_F}.txt
distb:
	upload ${A4D}/${PIECE_B}.pdf
	upload ${USD}/${PIECE_B}.pdf
	upload ${SRCD}/${PIECE_B}.txt
distg:
	upload ${A4D}/${PIECE_G}.pdf
	upload ${USD}/${PIECE_G}.pdf
	upload ${SRCD}/${PIECE_G}.txt

warnc: ${FREED}/${PIECE_C}.pdf
	upload ${FREED}/${PIECE_C}.pdf
warnf: ${FREED}/${PIECE_F}.pdf
	upload ${FREED}/${PIECE_F}.pdf
warnb: ${FREED}/${PIECE_B}.pdf
	upload ${FREED}/${PIECE_B}.pdf
${FREED}/${PIECE_C}.pdf : ${WARNING}
	${A42US} -c ${WARNING} \
	  | /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${FREED}/${PIECE_F}.pdf : ${WARNING}
	${A42US} -c ${WARNING} \
	  | /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${FREED}/${PIECE_B}.pdf : ${WARNING}
	${A42US} -c ${WARNING} \
	  | /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -

${A4D}/${PIECE_C}.pdf : title_C.a4 p2.a4 ${PIECE_C}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE_C}.a4 \
	| ${PSCAT} title_C.a4 p2.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE_C}.pdf : title_C.a4 p2.a4 ${PIECE_C}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE_C}.a4 \
	| ${PSCAT} title_C.a4 p2.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE_C}.xml : ${PIECE_C}
	${MUSCRIPT} -xml ${PIECE_C} > $@
${XMLD}/${PIECE_C}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE_C}.txt : ${PIECE_C}
	cp ${PIECE_C} $@
${MP3D}/${PIECE_C}.mp3 : ${PIECE_C}
	${MUSCRIPT} -midi ${PIECE_C} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE_F}.pdf : title_F.a4 p2.a4 ${PIECE_F}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE_F}.a4 \
	| ${PSCAT} title_F.a4 p2.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE_F}.pdf : title_F.a4 p2.a4 ${PIECE_F}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE_F}.a4 \
	| ${PSCAT} title_F.a4 p2.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE_F}.xml : ${PIECE_F}
	${MUSCRIPT} -xml ${PIECE_F} > $@
${XMLD}/${PIECE_F}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE_F}.txt : ${PIECE_F}
	cp ${PIECE_F} $@
${MP3D}/${PIECE_F}.mp3 : ${PIECE_F}
	${MUSCRIPT} -midi ${PIECE_F} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE_B}.pdf : title_B.a4 p2.a4 ${PIECE_B}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE_B}.a4 \
	| ${PSCAT} title_B.a4 p2.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE_B}.pdf : title_B.a4 p2.a4 ${PIECE_B}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE_B}.a4 \
	| ${PSCAT} title_B.a4 p2.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE_B}.xml : ${PIECE_B}
	${MUSCRIPT} -xml ${PIECE_B} > $@
${XMLD}/${PIECE_B}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE_B}.txt : ${PIECE_B}
	cp ${PIECE_B} $@
${MP3D}/${PIECE_B}.mp3 : ${PIECE_B}
	${MUSCRIPT} -midi ${PIECE_B} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

${A4D}/${PIECE_G}.pdf : title_G.a4 p2.a4 ${PIECE_G}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE_G}.a4 \
	| ${PSCAT} title_G.a4 p2.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE_G}.pdf : title_G.a4 p2.a4 ${PIECE_G}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE_G}.a4 \
	| ${PSCAT} title_G.a4 p2.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE_G}.xml : ${PIECE_G}
	${MUSCRIPT} -xml ${PIECE_G} > $@
${XMLD}/${PIECE_G}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE_G}.txt : ${PIECE_G}
	cp ${PIECE_G} $@
${MP3D}/${PIECE_G}.mp3 : ${PIECE_G}
	${MUSCRIPT} -midi ${PIECE_G} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

title_C.a4 : title
	sed 's/X/C/' title | groff -ms | ${BANNERISE} > $@
title_F.a4 : title
	sed 's/X/F/' title | groff -ms | ${BANNERISE} > $@
title_B.a4 : title
	sed 's/Recorder in X/Bass Recorder/' title | groff -ms | ${BANNERISE} > $@
title_G.a4 : title
	sed 's/Recorder in X/Great-Bass Recorder/' title | groff -ms | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
${PIECE_C}.a4 : ${PIECE_C}
	${MUSCRIPT} ${PIECE_C} > $@
	pkill -HUP gv
${PIECE_F}.a4 : ${PIECE_F}
	${MUSCRIPT} ${PIECE_F} > $@
	pkill -HUP gv
${PIECE_B}.a4 : ${PIECE_B}
	${MUSCRIPT} ${PIECE_B} > $@
	pkill -HUP gv
${PIECE_G}.a4 : ${PIECE_G}
	${MUSCRIPT} ${PIECE_G} > $@
	pkill -HUP gv

f_min.a4 : f_min
	${MUSCRIPT} f_min > $@
bass.a4 : bass
	${MUSCRIPT} bass > $@
	pkill -HUP gv

