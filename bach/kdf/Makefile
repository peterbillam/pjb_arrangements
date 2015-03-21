MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
ARRD = /home/pjb/www/mus/arr
A4D = ${ARRD}/a4
USD = ${ARRD}/us
XMLD = ${ARRD}/xml
SRCD = ${ARRD}/src
BACKPAGE = /home/pjb/mus/blurb/cc_backpage.a4
FREED = /home/pjb/www/mus/free
WARNING = /home/pjb/mus/blurb/mus_free_warning_arr.a4
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
UPLOAD = /home/pbin/upload
PIECE1   = c1_kbd
PIECE2   = c2_kbd
PIECE3   = c3_kbd
PIECE4   = c4_kbd
PIECE4UNFINGERED   = c4_kbd_unfingered
PIECE5   = c5_kbd
PIECE6   = c6_kbd
PIECE7   = c7_kbd
PIECE8   = c8_kbd
PIECE9   = c9_kbd
PIECE10  = c10_kbd
PIECE11  = c11_kbd
PIECE14K = c14_kbd
PIECE14R = c14_rec
PIECE14S = c14_str
PIECE14GK = c14_goencz_kbd
PIECE14GR = c14_goencz_rec
PIECE14GS = c14_goencz_str
PIECECAN = kdf_canons
PLAY = c14_goencz_kbd

dev : viol.a4 ${PIECE14K}.a4 ${PIECE14R}.a4 ${PIECE14S}.a4 \
 ${PIECE14GK}.a4 \
 ${PIECE1}.a4 ${PIECE3}.a4 ${PIECE4}.a4 ${PIECE5}.a4 \
 ${PIECE7}.a4 ${PIECE8}.a4 ${PIECE9}.a4 ${PIECE10}.a4 \
 ${PIECE11}.a4 ${PIECECAN}.a4 \
 title_${PIECE1}.a4 title_${PIECE3}.a4 title_${PIECE4}.a4 \
 title_${PIECE5}.a4 title_${PIECE7}.a4 title_${PIECE8}.a4 \
 title_${PIECE9}.a4 title_${PIECE10}.a4 title_${PIECE11}.a4 \
 title_${PIECE14K}.a4 title_${PIECE14S}.a4 \
 p2_c14.a4 p3_c14.a4

all : ${A4D}/${PIECE1}.pdf  ${USD}/${PIECE1}.pdf  ${SRCD}/${PIECE1}.txt \
 ${A4D}/${PIECE3}.pdf  ${USD}/${PIECE3}.pdf  ${SRCD}/${PIECE3}.txt \
 ${A4D}/${PIECE4}.pdf  ${USD}/${PIECE4}.pdf  ${SRCD}/${PIECE4}.txt \
 ${A4D}/${PIECE4UNFINGERED}.pdf ${USD}/${PIECE4UNFINGERED}.pdf \
 ${A4D}/${PIECE5}.pdf  ${USD}/${PIECE5}.pdf  ${SRCD}/${PIECE5}.txt \
 ${A4D}/${PIECE7}.pdf  ${USD}/${PIECE7}.pdf  ${SRCD}/${PIECE7}.txt \
 ${A4D}/${PIECE8}.pdf  ${USD}/${PIECE8}.pdf  ${SRCD}/${PIECE8}.txt \
 ${A4D}/${PIECE9}.pdf  ${USD}/${PIECE9}.pdf  ${SRCD}/${PIECE9}.txt \
 ${A4D}/${PIECE10}.pdf ${USD}/${PIECE10}.pdf ${SRCD}/${PIECE10}.txt \
 ${A4D}/${PIECE11}.pdf ${USD}/${PIECE11}.pdf ${SRCD}/${PIECE11}.txt \
 ${A4D}/${PIECE14K}.pdf ${USD}/${PIECE14K}.pdf ${SRCD}/${PIECE14K}.txt \
 ${A4D}/${PIECE14R}.pdf ${USD}/${PIECE14R}.pdf ${SRCD}/${PIECE14R}.txt \
 ${A4D}/${PIECE14S}.pdf ${USD}/${PIECE14S}.pdf ${SRCD}/${PIECE14S}.txt\
 ${A4D}/${PIECE14GK}.pdf ${USD}/${PIECE14GK}.pdf ${SRCD}/${PIECE14GK}.txt

dist1 :
	upload ${A4D}/${PIECE1}.pdf
	upload ${USD}/${PIECE1}.pdf
	upload ${SRCD}/${PIECE1}.txt
dist3 :
	upload ${A4D}/${PIECE3}.pdf
	upload ${USD}/${PIECE3}.pdf
	upload ${SRCD}/${PIECE3}.txt
dist4 :
	upload ${A4D}/${PIECE4}.pdf
	upload ${USD}/${PIECE4}.pdf
	upload ${SRCD}/${PIECE4}.txt
dist4unfingered :
	upload ${A4D}/${PIECE4UNFINGERED}.pdf
	upload ${USD}/${PIECE4UNFINGERED}.pdf
dist5 :
	upload ${A4D}/${PIECE5}.pdf
	upload ${USD}/${PIECE5}.pdf
	upload ${SRCD}/${PIECE5}.txt
dist7 :
	upload ${A4D}/${PIECE7}.pdf
	upload ${USD}/${PIECE7}.pdf
	upload ${SRCD}/${PIECE7}.txt
dist8 :
	upload ${A4D}/${PIECE8}.pdf
	upload ${USD}/${PIECE8}.pdf
	upload ${SRCD}/${PIECE8}.txt
dist9 :
	upload ${A4D}/${PIECE9}.pdf
	upload ${USD}/${PIECE9}.pdf
	upload ${SRCD}/${PIECE9}.txt
dist10 :
	upload ${A4D}/${PIECE10}.pdf
	upload ${USD}/${PIECE10}.pdf
	upload ${SRCD}/${PIECE10}.txt
dist11 : all
	upload ${A4D}/${PIECE11}.pdf
	upload ${USD}/${PIECE11}.pdf
	upload ${SRCD}/${PIECE11}.txt
dist14k :
	upload ${A4D}/${PIECE14K}.pdf
	upload ${USD}/${PIECE14K}.pdf
	upload ${SRCD}/${PIECE14K}.txt
dist14r :
	upload ${A4D}/${PIECE14R}.pdf
	upload ${USD}/${PIECE14R}.pdf
	upload ${SRCD}/${PIECE14R}.txt
dist14s :
	upload ${A4D}/${PIECE14S}.pdf
	upload ${USD}/${PIECE14S}.pdf
	upload ${SRCD}/${PIECE14S}.txt
dist14gk :
	upload ${A4D}/${PIECE14GK}.pdf
	upload ${USD}/${PIECE14GK}.pdf
	upload ${SRCD}/${PIECE14GK}.txt
dist14gr :
	upload ${A4D}/${PIECE14GR}.pdf
	upload ${USD}/${PIECE14GR}.pdf
	upload ${SRCD}/${PIECE14GR}.txt
dist14gs :
	upload ${A4D}/${PIECE14GS}.pdf
	upload ${USD}/${PIECE14GS}.pdf
	upload ${SRCD}/${PIECE14GS}.txt
play :
	muscript -midi ${PLAY} | midisox_lua - - stat | aplaymidi -p TiMidity - &
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
play6 :
	${MUSCRIPT} -midi ${PIECE6} | aplaymidi - &
play7 :
	${MUSCRIPT} -midi ${PIECE7} | aplaymidi - &
play8 :
	${MUSCRIPT} -midi ${PIECE8} | aplaymidi - &
play9 :
	${MUSCRIPT} -midi ${PIECE9} | aplaymidi - &
play10 :
	${MUSCRIPT} -midi ${PIECE10} | aplaymidi - &
play11 :
	${MUSCRIPT} -midi ${PIECE11} | aplaymidi - &
play14k :
	${MUSCRIPT} -midi ${PIECE14K} | aplaymidi - &
play14r :
	${MUSCRIPT} -midi ${PIECE14R} | aplaymidi - &
play14s :
	${MUSCRIPT} -midi ${PIECE14S} | aplaymidi - &
play14gk :
	${MUSCRIPT} -midi ${PIECE14GK} | aplaymidi - &
play14gr :
	${MUSCRIPT} -midi ${PIECE14GR} | aplaymidi - &
play14gs :
	${MUSCRIPT} -midi ${PIECE14GS} | aplaymidi - &
playcan :
	${MUSCRIPT} -midi ${PIECECAN} | aplaymidi - &
mp314k : ${PIECE14K}
	${MUSCRIPT} -midi ${PIECE14K} | timidity -Ow -o c14_kbd.wav -
	normalize-audio c14_kbd.wav
	lame -h c14_kbd.wav c14_kbd.mp3
	split -b 200000 c14_kbd.mp3
	# now use pftp to  mput x*  to public_html/mus/arr/mp3/
	# and     ssh -p 2223 pjb3265@loki.webcity.com.au
	# to do   cd ~/public_html/mus/arr/mp3 ; cat x* > c14_kbd.mp3

${A4D}/${PIECE1}.pdf : title_${PIECE1}.a4 ${PIECE1}.a4 ${BACKPAGE}
	./title_cNNN_kbd 1 | groff -ms | ${BANNERISE} > title_${PIECE1}.a4
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
title_${PIECE1}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 1 | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE3}.pdf : title_${PIECE3}.a4 ${PIECE3}.a4 ${BACKPAGE}
	./title_cNNN_kbd 3 | groff -ms | ${BANNERISE} > title_${PIECE3}.a4
	${ADDMESSAGE} ${PIECE3}.a4 \
	| ${PSCAT} title_${PIECE3}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE3}.pdf : title_${PIECE3}.a4 ${PIECE3}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE3}.a4 \
	| ${PSCAT} title_${PIECE3}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE3}.xml : ${PIECE3}
	${MUSCRIPT} -xml ${PIECE3} > $@
${SRCD}/${PIECE3}.txt : ${PIECE3}
	cp ${PIECE3} $@
${PIECE3}.a4 : ${PIECE3}
	${MUSCRIPT} ${PIECE3} > $@
	pkill -HUP gv
title_${PIECE3}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 3 | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE4}.pdf : title_${PIECE4}.a4 ${PIECE4}.a4 ${BACKPAGE}
	./title_cNNN_kbd 4 | groff -ms | ${BANNERISE} > title_${PIECE4}.a4
	${ADDMESSAGE} ${PIECE4}.a4 \
	| ${PSCAT} title_${PIECE4}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE4}.pdf : title_${PIECE4}.a4 ${PIECE4}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE4}.a4 \
	| ${PSCAT} title_${PIECE4}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE4}.xml : ${PIECE4}
	${MUSCRIPT} -xml ${PIECE4} > $@
${SRCD}/${PIECE4}.txt : ${PIECE4}
	cp ${PIECE4} $@
${PIECE4}.a4 : ${PIECE4}
	${MUSCRIPT} ${PIECE4} > $@
	pkill -HUP gv
title_${PIECE4}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 4 | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE4UNFINGERED}.pdf : title_${PIECE4}.a4 ${PIECE4UNFINGERED}.a4 ${BACKPAGE}
	./title_cNNN_kbd 4 | sed 's/ and fingered//' | groff -ms | ${BANNERISE} > title_${PIECE4UNFINGERED}.a4
	${ADDMESSAGE} ${PIECE4UNFINGERED}.a4 \
	| ${PSCAT} title_${PIECE4UNFINGERED}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE4UNFINGERED}.pdf : title_${PIECE4UNFINGERED}.a4 ${PIECE4UNFINGERED}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE4UNFINGERED}.a4 \
	| ${PSCAT} title_${PIECE4UNFINGERED}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${PIECE4UNFINGERED}.a4 : ${PIECE4}
	perl unfinger ${PIECE4} | ${MUSCRIPT} > $@
title_${PIECE4UNFINGERED}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 4 | sed 's/ and fingered//' | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE5}.pdf : title_${PIECE5}.a4 ${PIECE5}.a4 ${BACKPAGE}
	./title_cNNN_kbd 5 | groff -ms | ${BANNERISE} > title_${PIECE5}.a4
	${ADDMESSAGE} ${PIECE5}.a4 \
	| ${PSCAT} title_${PIECE5}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE5}.pdf : title_${PIECE5}.a4 ${PIECE5}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE5}.a4 \
	| ${PSCAT} title_${PIECE5}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE5}.xml : ${PIECE5}
	${MUSCRIPT} -xml ${PIECE5} > $@
${SRCD}/${PIECE5}.txt : ${PIECE5}
	cp ${PIECE5} $@
${PIECE5}.a4 : ${PIECE5}
	${MUSCRIPT} ${PIECE5} > $@
	pkill -HUP gv
title_${PIECE5}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 5 | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE7}.pdf : title_${PIECE7}.a4 ${PIECE7}.a4 ${BACKPAGE}
	./title_cNNN_kbd 7 | groff -ms | ${BANNERISE} > title_${PIECE7}.a4
	${ADDMESSAGE} ${PIECE7}.a4 \
	| ${PSCAT} title_${PIECE7}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE7}.pdf : title_${PIECE7}.a4 ${PIECE7}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE7}.a4 \
	| ${PSCAT} title_${PIECE7}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE7}.xml : ${PIECE7}
	${MUSCRIPT} -xml ${PIECE7} > $@
${SRCD}/${PIECE7}.txt : ${PIECE7}
	cp ${PIECE7} $@
${PIECE7}.a4 : ${PIECE7}
	${MUSCRIPT} ${PIECE7} > $@
	pkill -HUP gv
title_${PIECE7}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 7 | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE8}.pdf : title_${PIECE8}.a4 ${PIECE8}.a4 ${BACKPAGE}
	./title_cNNN_kbd 8 | groff -ms | ${BANNERISE} > title_${PIECE8}.a4
	${ADDMESSAGE} ${PIECE8}.a4 \
	| ${PSCAT} title_${PIECE8}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE8}.pdf : title_${PIECE8}.a4 ${PIECE8}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE8}.a4 \
	| ${PSCAT} title_${PIECE8}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE8}.xml : ${PIECE8}
	${MUSCRIPT} -xml ${PIECE8} > $@
${SRCD}/${PIECE8}.txt : ${PIECE8}
	cp ${PIECE8} $@
${PIECE8}.a4 : ${PIECE8}
	${MUSCRIPT} ${PIECE8} > $@
	pkill -HUP gv
title_${PIECE8}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 8 | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE9}.pdf : title_${PIECE9}.a4 ${PIECE9}.a4 ${BACKPAGE}
	./title_cNNN_kbd 9 | groff -ms | ${BANNERISE} > title_${PIECE9}.a4
	${ADDMESSAGE} ${PIECE9}.a4 \
	| ${PSCAT} title_${PIECE9}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE9}.pdf : title_${PIECE9}.a4 ${PIECE9}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE9}.a4 \
	| ${PSCAT} title_${PIECE9}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE9}.xml : ${PIECE9}
	${MUSCRIPT} -xml ${PIECE9} > $@
${SRCD}/${PIECE9}.txt : ${PIECE9}
	cp ${PIECE9} $@
${PIECE9}.a4 : ${PIECE9}
	${MUSCRIPT} ${PIECE9} > $@
	pkill -HUP gv
title_${PIECE9}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 9 | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE10}.pdf : title_${PIECE10}.a4 ${PIECE10}.a4 ${BACKPAGE}
	./title_cNNN_kbd 10 | groff -ms | ${BANNERISE} > title_${PIECE10}.a4
	${ADDMESSAGE} ${PIECE10}.a4 \
	| ${PSCAT} title_${PIECE10}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE10}.pdf : title_${PIECE10}.a4 ${PIECE10}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE10}.a4 \
	| ${PSCAT} title_${PIECE10}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE10}.xml : ${PIECE10}
	${MUSCRIPT} -xml ${PIECE10} > $@
${SRCD}/${PIECE10}.txt : ${PIECE10}
	cp ${PIECE10} $@
${PIECE10}.a4 : ${PIECE10}
	${MUSCRIPT} ${PIECE10} > $@
	pkill -HUP gv
title_${PIECE10}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 10 | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE11}.pdf : title_${PIECE11}.a4 ${PIECE11}.a4 ${BACKPAGE}
	./title_cNNN_kbd 11 | groff -ms | ${BANNERISE} > title_${PIECE11}.a4
	${ADDMESSAGE} ${PIECE11}.a4 \
	| ${PSCAT} title_${PIECE11}.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE11}.pdf : title_${PIECE11}.a4 ${PIECE11}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE11}.a4 \
	| ${PSCAT} title_${PIECE11}.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE11}.xml : ${PIECE11}
	${MUSCRIPT} -xml ${PIECE11} > $@
${SRCD}/${PIECE11}.txt : ${PIECE11}
	cp ${PIECE11} $@
${PIECE11}.a4 : ${PIECE11}
	${MUSCRIPT} ${PIECE11} > $@
	pkill -HUP gv
title_${PIECE11}.a4 : title_cNNN_kbd
	./title_cNNN_kbd 11 | groff -ms | ${BANNERISE} > $@

${FREED}/${PIECE14K}.pdf :
	${ADDMESSAGE} ${PIECE14K}.a4 \
	| ${PSCAT} title_${PIECE14K}.a4 ${WARNING} - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${A4D}/${PIECE14K}.pdf : p2_c14.a4 p3_c14.a4 ${PIECE14K}.a4 ${BACKPAGE}
	${UTF2ISO} title_${PIECE14K} | groff -ms | ${BANNERISE} > title_${PIECE14K}.a4
	${ADDMESSAGE} ${PIECE14K}.a4 \
	| ${PSCAT} title_${PIECE14K}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE14K}.pdf : title_${PIECE14K}.a4 p2_c14.a4 p3_c14.a4 \
 ${PIECE14K}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE14K}.a4 \
	| ${PSCAT} title_${PIECE14K}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE14K}.xml : ${PIECE14K}
	${MUSCRIPT} -xml ${PIECE14K} > $@
${XMLD}/${PIECE14K}_readme.txt : p2_c14 p3_c14
	${NROF} p2_c14 p3_c14 > $@
${SRCD}/${PIECE14K}.txt : ${PIECE14K}
	cp ${PIECE14K} $@
${MP3D}/${PIECE14K}.mp3 : ${PIECE14K}
	${MUSCRIPT} -midi ${PIECE14K} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${PIECE14K}.a4 : ${PIECE14K}
	${MUSCRIPT} ${PIECE14K} > $@
	pkill -HUP gv
title_${PIECE14K}.a4 : title_${PIECE14K}
	${UTF2ISO} title_${PIECE14K} | groff -ms | ${BANNERISE} > $@
	pkill -HUP gv

${A4D}/${PIECE14R}.pdf : p2_c14.a4 p3_c14.a4 ${PIECE14R}.a4 ${BACKPAGE}
	${UTF2ISO} title_${PIECE14R} | groff -ms | ${BANNERISE} > title_${PIECE14R}.a4
	${ADDMESSAGE} ${PIECE14R}.a4 \
	| ${PSCAT} title_${PIECE14R}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE14R}.pdf : title_${PIECE14R}.a4 p2_c14.a4 p3_c14.a4 \
 ${PIECE14R}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE14R}.a4 \
	| ${PSCAT} title_${PIECE14R}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE14R}.xml : ${PIECE14R}
	${MUSCRIPT} -xml ${PIECE14R} > $@
${XMLD}/${PIECE14R}_readme.txt : p2_c14 p3_c14
	${NROF} p2_c14 p3_c14 > $@
${SRCD}/${PIECE14R}.txt : ${PIECE14R}
	cp ${PIECE14R} $@
${MP3D}/${PIECE14R}.mp3 : ${PIECE14R}
	${MUSCRIPT} -midi ${PIECE14R} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${PIECE14R}.a4 : ${PIECE14R}
	${MUSCRIPT} ${PIECE14R} > $@
	pkill -HUP gv
title_${PIECE14R}.a4 : title_${PIECE14R}
	${UTF2ISO} title_${PIECE14R} | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE14S}.pdf : p2_c14.a4 p3_c14.a4 ${PIECE14S}.a4 ${BACKPAGE}
	${UTF2ISO} title_${PIECE14S} | groff -ms | ${BANNERISE} > title_${PIECE14S}.a4
	${ADDMESSAGE} ${PIECE14S}.a4 \
	| ${PSCAT} title_${PIECE14S}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE14S}.pdf : title_${PIECE14S}.a4 p2_c14.a4 p3_c14.a4 \
 ${PIECE14S}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE14S}.a4 \
	| ${PSCAT} title_${PIECE14S}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE14S}.xml : ${PIECE14S}
	${MUSCRIPT} -xml ${PIECE14S} > $@
${XMLD}/${PIECE14S}_readme.txt : p2_c14 p3_c14
	${NROF} p2_c14 p3_c14 > $@
${SRCD}/${PIECE14S}.txt : ${PIECE14S}
	cp ${PIECE14S} $@
	pkill -HUP gv
${MP3D}/${PIECE14S}.mp3 : ${PIECE14S}
	${MUSCRIPT} -midi ${PIECE14S} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${PIECE14S}.a4 : ${PIECE14S}
	${MUSCRIPT} ${PIECE14S} > $@
title_${PIECE14S}.a4 : title_${PIECE14S}
	${UTF2ISO} title_${PIECE14S} | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECE14GK}.pdf : p2_c14.a4 p3_c14.a4 ${PIECE14GK}.a4 ${BACKPAGE}
	${UTF2ISO} title_${PIECE14GK} | groff -ms | ${BANNERISE} > title_${PIECE14GK}.a4
	${ADDMESSAGE} ${PIECE14GK}.a4 \
	| ${PSCAT} title_${PIECE14GK}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE14GK}.pdf : title_${PIECE14GK}.a4 p2_c14.a4 p3_c14.a4 \
 ${PIECE14GK}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE14GK}.a4 \
	| ${PSCAT} title_${PIECE14GK}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE14GK}.xml : ${PIECE14GK}
	${MUSCRIPT} -xml ${PIECE14GK} > $@
${XMLD}/${PIECE14GK}_readme.txt : p2_c14 p3_c14
	${NROF} p2_c14 p3_c14 > $@
${SRCD}/${PIECE14GK}.txt : ${PIECE14GK}
	cp ${PIECE14GK} $@
	pkill -HUP gv
${MP3D}/${PIECE14GK}.mp3 : ${PIECE14GK}
	${MUSCRIPT} -midi ${PIECE14GK} \
	  | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${PIECE14GK}.a4 : ${PIECE14GK}
	${MUSCRIPT} ${PIECE14GK} > $@
	pkill -HUP gv
title_${PIECE14GK}.a4 : title_${PIECE14GK}
	${UTF2ISO} title_${PIECE14GK} | groff -ms | ${BANNERISE} > $@

${A4D}/${PIECECAN}.pdf : p2_c14.a4 p3_c14.a4 ${PIECECAN}.a4 ${BACKPAGE}
	${UTF2ISO} title_${PIECECAN} | groff -ms | ${BANNERISE} > title_${PIECECAN}.a4
	${ADDMESSAGE} ${PIECECAN}.a4 \
	| ${PSCAT} title_${PIECECAN}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECECAN}.pdf : title_${PIECECAN}.a4 p2_c14.a4 p3_c14.a4 \
 ${PIECECAN}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECECAN}.a4 \
	| ${PSCAT} title_${PIECECAN}.a4 p2_c14.a4 p3_c14.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECECAN}.xml : ${PIECECAN}
	${MUSCRIPT} -xml ${PIECECAN} > $@
${XMLD}/${PIECECAN}_readme.txt : p2_c14 p3_c14
	${NROF} p2_c14 p3_c14 > $@
${SRCD}/${PIECECAN}.txt : ${PIECECAN}
	cp ${PIECECAN} $@
	pkill -HUP gv
${MP3D}/${PIECECAN}.mp3 : ${PIECECAN}
	${MUSCRIPT} -midi ${PIECECAN} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${PIECECAN}.a4 : ${PIECECAN}
	${MUSCRIPT} ${PIECECAN} > $@
title_${PIECECAN}.a4 : title_${PIECECAN}
	${UTF2ISO} title_${PIECECAN} | groff -ms | ${BANNERISE} > $@

p2_c14.a4 : p2_c14
	groff -ms p2_c14 | ${BANNERISE} > $@
p3_c14.a4 : p3_c14
	utf2iso p3_c14 | groff -ms | ${BANNERISE} > $@

viol.a4 : viol
	${MUSCRIPT} viol > $@

