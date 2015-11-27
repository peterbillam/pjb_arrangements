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
PIECE = rite_of_spring
TITLE = title_${PIECE}
PLAY   = rite_2_79

dev : ${TITLE}.a4 p2.a4 ${PIECE}.a4 ${PLAY}.a4
edit :
	vi ${PLAY}
	muscript ${PLAY} > ${PLAY}.a4
	pkill -HUP gv
	muscript -midi ${PLAY} | midisox_lua - -d stat
all : ${A4D}/${PIECE}.pdf ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt
	date
mp3 : ${MP3D}/${PIECE}.mp3

dist2:
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${SRCD}/${PIECE}.txt
v :
	gv /home/pjb/mus/scores/rite_of_spring.pdf &

${A4D}/${PIECE}.pdf : ${TITLE}.a4 p2_op67.a4 ${PIECE}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} ${TITLE}.a4 p2_op67.a4 - ${FREEBACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : ${TITLE}.a4 ${PIECE}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} ${TITLE}.a4 p2_op67.a4 - ${FREEBACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE}.xml : ${PIECE}
	${MUSCRIPT} -xml ${PIECE} > $@
${XMLD}/${PIECE}_readme.txt : p2_op67 
	${NROF} p2_op67 > $@
${SRCD}/${PIECE}.txt : ${PIECE}
	cp ${PIECE} $@
${MP3D}/${PIECE}.mp3 : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${TITLE}.a4 : ${TITLE}
	groff -ms ${TITLE} | ${BANNERISE} > $@
p2.a4 : p2
	utf2iso p2 | groff -t -ms | ${BANNERISE} > $@
${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
	pkill -HUP gv

www : scriabin_op59 op74
	sed -n '/^# start no2/,999p' scriabin_op59 \
	 | muscript -us \
	 | /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter \
	  -sOutputFile=/home/pjb/www/mus/scriabin/op59no2.pdf -
	sed -n '/^# start no5/,999p' op74 \
	 | perl -pe 's/^#S //;' | muscript -us \
	 | /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter \
	  -sOutputFile=/home/pjb/www/mus/scriabin/op74no5.pdf -
	perl -pe 's/^#A //;' op74 | muscript -us \
	 | /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter \
	  -sOutputFile=/home/pjb/www/mus/scriabin/op74analysis.pdf -


play :
	${MUSCRIPT} -midi ${PLAY} | midisox_lua - -d stat
${PLAY}.a4 : ${PLAY}
	muscript ${PLAY} > ${PLAY}.a4
	pkill -HUP gv
