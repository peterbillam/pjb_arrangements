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
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
DIST = pjb3265@loki.webcity.com.au:public_html/mus/arr
PIECE1 = webern_op18
PIECE2 = sonata
PLAY  = webern_op18

dev : ${PIECE1}.a4
all : ${FREED}/${PIECE1}.pdf \
 ${A4D}/${PIECE1}.pdf  ${USD}/${PIECE1}.pdf \
 ${XMLD}/${PIECE1}.xml ${XMLD}/${PIECE1}_readme.txt
dist:
	scp -P 2223 ${A4D}/${PIECE1}.pdf  ${DIST}/a4/
	scp -P 2223 ${USD}/${PIECE1}.pdf  ${DIST}/us/
	scp -P 2223 ${XMLD}/${PIECE1}.xml ${DIST}/xml/
	scp -P 2223 ${PIECE1} ${DIST}/src/${PIECE1}.txt

${A4D}/${PIECE1}.pdf : title.a4 p2.a4 ${PIECE1}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE1}.pdf : title.a4 p2.a4 ${PIECE1}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE1}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE1}.xml : ${PIECE1}
	${MUSCRIPT} -xml ${PIECE1} > $@
${XMLD}/${PIECE1}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE1}.txt : ${PIECE1}
	cp ${PIECE1} $@
${MP3D}/${PIECE1}.mp3 : ${PIECE1}
	sed 's/B__b\?/C_/g' ${PIECE1} | ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${PIECE1}.wav : ${PIECE1}
	sed 's/vol90 B_b/vol90 C_/' ${PIECE1} | sed 's/B__b\?/C_/g' \
	| sed 's/pan 80/pan 65/' | sed 's/pan 20/pan 35/' \
	| ${MUSCRIPT} -midi | timidity -Ow -c /etc/timidity/timidity.cfg -o $@ -
	${NORMALIZE} --peak $@
burn1 : ${PIECE1}.wav
	wodim dev=/dev/cdrom -pad -v -dao cuefile=suite_op16.cue
	# If you got:  wodim: Bad audio track size 21381760 for track 04.
	# Audio tracks must be at least 705600 bytes and a multiple of 2352.
	# See -pad option.   ( -pad doesn't work with cuefile :-( )
	# then  python3
	#   >>> (2352 - (21381760 % 2352)) / 4
	#   >>> 68.0
	# mv suite_op16.wav t.wav;  sox t.wav suite_op16.wav pad 0 68s

${A4D}/${PIECE2}.pdf : title.a4 p2.a4 ${PIECE2}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE2}.pdf : title.a4 p2.a4 ${PIECE2}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} title.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE2}.xml : ${PIECE2}
	${MUSCRIPT} -xml ${PIECE2} > $@
${XMLD}/${PIECE2}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE2}.txt : ${PIECE2}
	cp ${PIECE2} $@
${MP3D}/${PIECE2}.mp3 : ${PIECE2}
	sed 's/B__b\?/C_/g' ${PIECE2} | ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${PIECE2}.wav : ${PIECE2}
	sed 's/vol90 B_b/vol90 C_/' ${PIECE2} | sed 's/B__b\?/C_/g' \
	| sed 's/pan 80/pan 65/' | sed 's/pan 20/pan 35/' \
	| ${MUSCRIPT} -midi | timidity -Ow -c /etc/timidity/timidity.cfg -o $@ -
	${NORMALIZE} --peak $@
burn2 : ${PIECE2}.wav
	wodim dev=/dev/cdrom -pad -v -dao cuefile=suite_op16.cue
	# If you got:  wodim: Bad audio track size 21381760 for track 04.
	# Audio tracks must be at least 705600 bytes and a multiple of 2352.
	# See -pad option.   ( -pad doesn't work with cuefile :-( )
	# then  python3
	#   >>> (2352 - (21381760 % 2352)) / 4
	#   >>> 68.0
	# mv suite_op16.wav t.wav;  sox t.wav suite_op16.wav pad 0 68s


title.a4 : title
	groff -ms title | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
${PIECE1}.a4 : ${PIECE1}
	${MUSCRIPT} ${PIECE1} > $@
${PIECE2}.a4 : ${PIECE2}
	${MUSCRIPT} ${PIECE2} > $@
play :
	 ${MUSCRIPT} -midi ${PLAY} | aplaymidi - &
