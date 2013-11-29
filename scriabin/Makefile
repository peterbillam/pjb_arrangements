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
PIECE1 = scriabin_op59
PIECE2 = scriabin_op67
PIECE3 = scriabin_op74
PIECE4 = flammes_sombres
PIECE5 = vers_la_flamme
TITLE1 = title_${PIECE1}
TITLE2 = title_${PIECE2}
TITLE3 = title_${PIECE3}
TITLE4 = title_${PIECE4}
TITLE5 = title_${PIECE5}
PLAY   = scriabin_op59

dev : t.mid ${TITLE2}.a4 p2_op67.a4 p2_op74.a4 p3_op74.a4 \
 ${PIECE1}.a4 ${PIECE2}.a4 ${PIECE3}.a4 ${PIECE4}.a4 ${PIECE5}.a4
all : ${A4D}/${PIECE2}.pdf ${USD}/${PIECE2}.pdf ${SRCD}/${PIECE2}.txt \
 ${A4D}/${PIECE3}.pdf ${USD}/${PIECE3}.pdf ${SRCD}/${PIECE3}.txt
	date
mp3 : ${MP3D}/scriabin_op74_no1.mp3 ${MP3D}/scriabin_op74_no2.mp3 \
 ${MP3D}/scriabin_op74_no3.mp3 ${MP3D}/scriabin_op74_no4.mp3 \
 ${MP3D}/scriabin_op74_no5.mp3

dist2:
	upload ${A4D}/${PIECE2}.pdf
	upload ${USD}/${PIECE2}.pdf
	upload ${SRCD}/${PIECE2}.txt

dist3:
	upload ${A4D}/${PIECE3}.pdf
	upload ${USD}/${PIECE3}.pdf
	upload ${SRCD}/${PIECE3}.txt


${PIECE1}.a4 : ${PIECE1}
	${MUSCRIPT} ${PIECE1} > $@
	pkill -HUP gv

${A4D}/${PIECE2}.pdf : ${TITLE2}.a4 p2_op67.a4 ${PIECE2}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 p2_op67.a4 - ${FREEBACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE2}.pdf : ${TITLE2}.a4 ${PIECE2}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE2}.a4 \
	| ${PSCAT} ${TITLE2}.a4 p2_op67.a4 - ${FREEBACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE2}.xml : ${PIECE2}
	${MUSCRIPT} -xml ${PIECE2} > $@
${XMLD}/${PIECE2}_readme.txt : p2_op67 
	${NROF} p2_op67 > $@
${SRCD}/${PIECE2}.txt : ${PIECE2}
	cp ${PIECE2} $@
${MP3D}/${PIECE2}.mp3 : ${PIECE2}
	${MUSCRIPT} -midi ${PIECE2} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${TITLE2}.a4 : ${TITLE2}
	groff -ms ${TITLE2} | ${BANNERISE} > $@
p2_op67.a4 : p2_op67
	utf2iso p2_op67 | groff -t -ms | ${BANNERISE} > $@
${PIECE2}.a4 : ${PIECE2}
	${MUSCRIPT} ${PIECE2} > $@
	pkill -HUP gv

${A4D}/${PIECE3}.pdf : ${TITLE3}.a4 p2_op74.a4 p3_op74.a4 \
 ${PIECE3}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE3}.a4 \
	| ${PSCAT} ${TITLE3}.a4 p2_op74.a4 p3_op74.a4 - ${FREEBACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE3}.pdf : ${TITLE3}.a4 ${PIECE3}.a4 ${FREEBACKPAGE}
	${ADDMESSAGE} ${PIECE3}.a4 \
	| ${PSCAT} ${TITLE3}.a4 p2_op74.a4 p3_op74.a4 - ${FREEBACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE3}.xml : ${PIECE3}
	${MUSCRIPT} -xml ${PIECE3} > $@
${XMLD}/${PIECE3}_readme.txt : p2_op74 p3_op74
	${NROF} p2_op74 > $@
	${NROF} p3_op74 >> $@
${SRCD}/${PIECE3}.txt : ${PIECE3}
	cp ${PIECE3} $@
${MP3D}/${PIECE3}_no1.mp3 : ${PIECE3}
	sed -n '1,/^# start no2/p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	sox t.wav /home/pjb/wav/scriabin/${PIECE3}_no1.wav pad 0 3
${MP3D}/${PIECE3}_no2.mp3 : ${PIECE3}
	sed -n '/^# start no2/,/^# start no3/p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	${NORMALIZE} -g 0.5 t.wav
	lame -h t.wav $@
	sox t.wav /home/pjb/wav/scriabin/${PIECE3}_no2.wav pad 0 3
${MP3D}/${PIECE3}_no3.mp3 : ${PIECE3}
	sed -n '/^# start no3/,/^# start no4/p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	sox t.wav /home/pjb/wav/scriabin/${PIECE3}_no3.wav pad 0 3
${MP3D}/${PIECE3}_no4.mp3 : ${PIECE3}
	sed -n '/^# start no4/,/^# start no5/p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	${NORMALIZE} -g 0.5 t.wav
	lame -h t.wav $@
	sox t.wav /home/pjb/wav/scriabin/${PIECE3}_no4.wav pad 0 3
${MP3D}/${PIECE3}_no5.mp3 : ${PIECE3}
	sed -n '/^# start no5/,999p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	mv t.wav /home/pjb/wav/scriabin/${PIECE3}_no5.wav
${TITLE3}.a4 : ${TITLE3}
	groff -ms ${TITLE3} | ${BANNERISE} > $@
${PIECE3}.a4 : ${PIECE3}
	${MUSCRIPT} ${PIECE3} > $@
	pkill -HUP gv
p2_op74.a4 : p2_op74
	utf2iso p2_op74 | groff -t -ms | ${BANNERISE} > $@
	pkill -HUP gv
p3_op74.a4 : p3_op74
	utf2iso p3_op74 | groff -t -ms | ${BANNERISE} > $@
	pkill -HUP gv
${PIECE3} : op74
	perl -pe 's/^#S //;' op74 > $@
	perl -pe 's/^#A //;' op74 >> $@
${PIECE3}.mid : op74
	perl -pe 's/^#M //;' op74 | muscript -midi > $@
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


t.mid : ${PLAY}
	${MUSCRIPT} -midi ${PLAY} > t.mid
play : t.mid
	aplaymidi t.mid &

