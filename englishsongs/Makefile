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

dev : title.a4 p2.a4 englishsongs.a4
all : ${A4D}/englishsongs.pdf ${USD}/englishsongs.pdf ${SRCD}/englishsongs.txt
dist :
	upload ${A4D}/englishsongs.pdf
	upload ${USD}/englishsongs.pdf
	upload ${SRCD}/englishsongs.txt

${A4D}/englishsongs.pdf : title.a4 p2.a4 englishsongs.a4 ${BACKPAGE}.a4
	groff -ms title | ${BANNERISE} > title.a4
	${ADDMESSAGE} englishsongs.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${BACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/englishsongs.pdf : title.a4 p2.a4 englishsongs.a4 ${BACKPAGE}.a4
	${ADDMESSAGE} englishsongs.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${BACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/englishsongs.xml : englishsongs
	${MUSCRIPT} -xml englishsongs > $@
${SRCD}/englishsongs.txt : englishsongs
	cp englishsongs $@
englishsongs.a4 : englishsongs ${MUSCRIPT}
	${MUSCRIPT} englishsongs > $@
	pkill -HUP gv

title.a4 : title
	groff -ms title | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@

