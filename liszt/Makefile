MUSCRIPT = /home/pbin/muscript
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
BACKPAGE = /home/pjb/mus/blurb/cc_backpage
ARRD  = /home/pjb/www/mus/arr
A4D   = ${ARRD}/a4
USD   = ${ARRD}/us
XMLD  = ${ARRD}/xml
SRCD  = ${ARRD}/src
PIECE = late_liszt
PLAY = lugubre_gondola_2

dev : title.a4 p2.a4 ${PIECE}.a4
all : ${A4D}/${PIECE}.pdf ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt
dist :
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${SRCD}/${PIECE}.txt

${PIECE} : fugue_on_bach lugubre_gondola_1 lugubre_gondola_2 \
 nuages_gris unstern
	chmod 644 $@
	cat fugue_on_bach lugubre_gondola_1 lugubre_gondola_2 \
	  nuages_gris unstern > $@
	chmod 444 $@

${A4D}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${BACKPAGE}.a4
	utf2iso title | groff -ms | ${BANNERISE} > title.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${BACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.a4 p2.a4 ${PIECE}.a4 ${BACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${BACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE}.xml : ${PIECE}
	${MUSCRIPT} -xml ${PIECE} > $@
${SRCD}/${PIECE}.txt : ${PIECE}
	cp ${PIECE} $@
${PIECE}.a4 : ${PIECE} ${MUSCRIPT}
	${MUSCRIPT} ${PIECE} > $@
	pkill -HUP gv

${PLAY}.a4 : ${PLAY} ${MUSCRIPT}
	${MUSCRIPT} ${PLAY} > $@
	pkill -HUP gv

title.a4 : title
	utf2iso title | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
p2.a4 : p2
	utf2iso p2 | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv
play :
	muscript -midi ${PLAY} | midisox_lua - - stat \
	  | aplaymidi -p TiMidity - &
