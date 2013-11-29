MUSCRIPT = /home/pbin/muscript
NORMALIZE = /usr/bin/normalize-audio
BLURB = /home/pjb/mus/blurb/compositions
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
PLAY = spem_in_alium_ch2

dev : title_ch1.ps title_ch2.ps title_ch3.ps title_ch4.ps \
 title_ch5.ps title_ch6.ps title_ch7.ps title_ch8.ps chords.ps \
 p2.ps spem_in_alium_ch1.ps spem_in_alium_ch2.ps
# spem_in_alium_ch3.ps spem_in_alium_ch4.ps \
# spem_in_alium_ch5.ps spem_in_alium_ch6.ps \
# spem_in_alium_ch7.ps spem_in_alium_ch8.ps

all : ${A4D}/${PIECE}.pdf  ${USD}/${PIECE}.pdf ${SRCD}/${PIECE}.txt \
 ${MP3D}/${PIECE}.mp3
 # ${XMLD}/${PIECE}.xml ${XMLD}/${PIECE}_readme.txt
dist:
	upload ${A4D}/${PIECE}.pdf
	upload ${USD}/${PIECE}.pdf
	upload ${SRCD}/${PIECE}.txt
	upload ${MP3D}/${PIECE}.mp3

${A4D}/${PIECE}.pdf : title.ps ${PIECE}.ps ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps - ${FREEBACKPAGE}.a4 \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE}.pdf : title.ps ${PIECE}.ps ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.ps \
	| ${PSCAT} title.ps - ${FREEBACKPAGE}.a4 \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE}.xml : ${PIECE}
	${MUSCRIPT} -xml ${PIECE} > $@
${XMLD}/${PIECE}_readme.txt : p2
	${NROF} p2 > $@
${SRCD}/${PIECE}.txt : ${PIECE}
	cp ${PIECE} $@
${MP3D}/${PIECE}.mp3 : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} | timidity -Ow -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav

title_ch1.ps : title_chXX
	sed 's/XX/1/' title_chXX | groff -ms | ${BANNERISE} > $@
title_ch2.ps : title_chXX
	sed 's/XX/2/' title_chXX | groff -ms | ${BANNERISE} > $@
title_ch3.ps : title_chXX
	sed 's/XX/3/' title_chXX | groff -ms | ${BANNERISE} > $@
title_ch4.ps : title_chXX
	sed 's/XX/4/' title_chXX | groff -ms | ${BANNERISE} > $@
title_ch5.ps : title_chXX
	sed 's/XX/5/' title_chXX | groff -ms | ${BANNERISE} > $@
title_ch6.ps : title_chXX
	sed 's/XX/6/' title_chXX | groff -ms | ${BANNERISE} > $@
title_ch7.ps : title_chXX
	sed 's/XX/7/' title_chXX | groff -ms | ${BANNERISE} > $@
title_ch8.ps : title_chXX
	sed 's/XX/8/' title_chXX | groff -ms | ${BANNERISE} > $@
p2.ps : p2
	${UTF2ISO} p2 | groff -ms | ${BANNERISE} > $@
spem_in_alium_ch1.ps : spem_in_alium_ch1
	${MUSCRIPT} spem_in_alium_ch1 > $@
	pkill -HUP gv
spem_in_alium_ch2.ps : spem_in_alium_ch2
	${MUSCRIPT} spem_in_alium_ch2 > $@
	pkill -HUP gv
spem_in_alium_ch3.ps : spem_in_alium_ch3
	${MUSCRIPT} spem_in_alium_ch3 > $@
	pkill -HUP gv
spem_in_alium_ch4.ps : spem_in_alium_ch4
	${MUSCRIPT} spem_in_alium_ch4 > $@
	pkill -HUP gv
spem_in_alium_ch5.ps : spem_in_alium_ch5
	${MUSCRIPT} spem_in_alium_ch5 > $@
	pkill -HUP gv
spem_in_alium_ch6.ps : spem_in_alium_ch6
	${MUSCRIPT} spem_in_alium_ch6 > $@
	pkill -HUP gv
spem_in_alium_ch7.ps : spem_in_alium_ch7
	${MUSCRIPT} spem_in_alium_ch7 > $@
	pkill -HUP gv
spem_in_alium_ch8.ps : spem_in_alium_ch8
	${MUSCRIPT} spem_in_alium_ch8 > $@
	pkill -HUP gv
chords.ps : chords
	${MUSCRIPT} chords > $@
	pkill -HUP gv
play :
	${MUSCRIPT} -midi ${PLAY} | aplaymidi -p TiMidity - &
	# ${MUSCRIPT} -midi ${PIECE} | midisox_lua - -d stat trim 279.5 tempo 1.1
