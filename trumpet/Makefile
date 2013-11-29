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
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage.a4
WARNING = /home/pjb/mus/blurb/mus_free_warning_arr.a4
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
DIST = pjb3265@loki.webcity.com.au:public_html/mus
PIECE = trp_and_pno_1

dev :  t.mid ${PIECE}.a4 copyright.a4 sight_reading.a4 \
 low.a4 p2.a4 title.a4 chorales.a4
all : ${FREED}/${PIECE}.pdf \
 ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt
 #${XMLD}/${PIECE}.xml ${XMLD}/${PIECE}_readme.txt
dist:
	scp -P 2223 ${A4D}/${PIECE}.pdf   ${DIST}/arr/a4/
	scp -P 2223 ${USD}/${PIECE}.pdf   ${DIST}/arr/us/
	scp -P 2223 ${FREED}/${PIECE}.pdf ${DIST}/free/
	scp -P 2223 ${PIECE} ${DIST}/arr/src/${PIECE}.txt

${FREED}/${PIECE}.pdf : title.a4 ${WARNING} p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}
	groff -ms title | ${BANNERISE} > title.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 ${WARNING} p2.a4 - ${FREEBACKPAGE} \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${A4D}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE}
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE} \
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


${PIECE}.a4 : ${PIECE} ${MUSCRIPT}
	${MUSCRIPT} -a4 ${PIECE} > $@
low.a4 : low
	${MUSCRIPT} low > $@
copyright.a4 : copyright
	${MUSCRIPT} copyright > $@
sight_reading.a4 : sight_reading
	${MUSCRIPT} sight_reading > $@
chorales.a4 : chorales
	${MUSCRIPT} chorales > $@
t.mid : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} > $@
	aplaymidi $@ &

copyright.mid : copyright
	${MUSCRIPT} -midi copyright > $@

title.a4 : title
	groff -ms title | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@

