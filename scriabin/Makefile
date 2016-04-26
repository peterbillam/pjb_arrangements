MUSCRIPT = /home/pbin/muscript_lua
NORMALIZE = /usr/bin/normalize-audio
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
PIECE59 = scriabin_op59
PIECE61 = scriabin_op61
PIECE63 = scriabin_op63
PIECE65 = scriabin_op65
PIECE67 = scriabin_op67
PIECE69 = scriabin_op69
PIECE71 = scriabin_op71
PIECE72 = scriabin_op72
PIECE73 = scriabin_op73
PIECE74 = scriabin_op74
TITLE59 = title_${PIECE59}
TITLE61 = title_${PIECE61}
TITLE63 = title_${PIECE63}
TITLE65 = title_${PIECE65}
TITLE67 = title_${PIECE67}
TITLE69 = title_${PIECE69}
TITLE71 = title_${PIECE71}
TITLE72 = title_${PIECE72}
TITLE73 = title_${PIECE73}
TITLE74 = title_${PIECE74}
PLAY   = scriabin_op63

dev : ${TITLE61}.a4 ${TITLE74}.a4 p2_op67.a4 p2_op74.a4 p3_op74.a4 \
 ${PIECE59}.a4 ${PIECE61}.a4 ${PIECE67}.a4 ${PIECE74}.a4 ${PIECE73}.a4 \
 ${PIECE72}.a4 ${PIECE63}.a4
all : ${A4D}/${PIECE61}.pdf ${USD}/${PIECE61}.pdf ${SRCD}/${PIECE61}.txt \
 ${A4D}/${PIECE67}.pdf ${USD}/${PIECE67}.pdf ${SRCD}/${PIECE67}.txt
	date
mp3 : ${MP3D}/scriabin_op74_no1.mp3 ${MP3D}/scriabin_op74_no2.mp3 \
 ${MP3D}/scriabin_op74_no3.mp3 ${MP3D}/scriabin_op74_no4.mp3 \
 ${MP3D}/scriabin_op74_no5.mp3

dist59:
	upload ${A4D}/${PIECE59}.pdf
	upload ${USD}/${PIECE59}.pdf
	upload ${SRCD}/${PIECE59}.txt
dist61:
	upload ${A4D}/${PIECE61}.pdf
	upload ${USD}/${PIECE61}.pdf
	upload ${SRCD}/${PIECE61}.txt
dist67:
	upload ${A4D}/${PIECE67}.pdf
	upload ${USD}/${PIECE67}.pdf
	upload ${SRCD}/${PIECE67}.txt
dist74:
	upload ${A4D}/${PIECE74}.pdf
	upload ${USD}/${PIECE74}.pdf
	upload ${SRCD}/${PIECE74}.txt


${PIECE59}.a4 : ${PIECE59}
	${MUSCRIPT} ${PIECE59} > $@
	pkill -HUP gv

${A4D}/${PIECE61}.pdf : ${TITLE61}.a4 p2_op67.a4 ${PIECE61}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE61}.a4 \
	| ${PSCAT} ${TITLE61}.a4 p2_op67.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE61}.pdf : ${TITLE61}.a4 ${PIECE61}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE61}.a4 \
	| ${PSCAT} ${TITLE61}.a4 p2_op67.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE61}.xml : ${PIECE61}
	${MUSCRIPT} -xml ${PIECE61} > $@
${XMLD}/${PIECE61}_readme.txt : p2_op67 
	${NROF} p2_op67 > $@
${SRCD}/${PIECE61}.txt : ${PIECE61}
	cp ${PIECE61} $@
${MP3D}/${PIECE61}.mp3 : ${PIECE61}
	${MUSCRIPT} -midi ${PIECE61} | timidity -Ow -c /etc/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	rm t.wav
${TITLE61}.a4 : ${TITLE61}
	utf2iso ${TITLE61} | groff -ms | ${BANNERISE} > $@
p2_op67.a4 : p2_op67
	utf2iso p2_op67 | groff -t -ms | ${BANNERISE} > $@
${PIECE61}.a4 : ${PIECE61}
	${MUSCRIPT} ${PIECE61} > $@
	pkill -HUP gv

${PIECE63}.a4 : ${PIECE63}
	${MUSCRIPT} ${PIECE63} > $@
	pkill -HUP gv

${PIECE67}.a4 : ${PIECE67}
	${MUSCRIPT} ${PIECE67} > $@
	pkill -HUP gv

${PIECE71}.a4 : ${PIECE71}
	${MUSCRIPT} ${PIECE71} > $@
	pkill -HUP gv

${PIECE72}.a4 : ${PIECE72}
	${MUSCRIPT} ${PIECE72} > $@
	pkill -HUP gv

${PIECE73}.a4 : ${PIECE73}
	${MUSCRIPT} ${PIECE73} > $@
	pkill -HUP gv

${A4D}/${PIECE74}.pdf : ${TITLE74}.a4 p2_op74.a4 p3_op74.a4 \
 ${PIECE74}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE74}.a4 \
	| ${PSCAT} ${TITLE74}.a4 p2_op74.a4 p3_op74.a4 - ${BACKPAGE} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
${USD}/${PIECE74}.pdf : ${TITLE74}.a4 ${PIECE74}.a4 ${BACKPAGE}
	${ADDMESSAGE} ${PIECE74}.a4 \
	| ${PSCAT} ${TITLE74}.a4 p2_op74.a4 p3_op74.a4 - ${BACKPAGE} \
	| ${A42US} \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=letter -sOutputFile=$@ -
${XMLD}/${PIECE74}.xml : ${PIECE74}
	${MUSCRIPT} -xml ${PIECE74} > $@
${XMLD}/${PIECE74}_readme.txt : p2_op74 p3_op74
	${NROF} p2_op74 > $@
	${NROF} p3_op74 >> $@
${SRCD}/${PIECE74}.txt : ${PIECE74}
	cp ${PIECE74} $@
${MP3D}/${PIECE74}_no1.mp3 : ${PIECE74}
	sed -n '1,/^# start no2/p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	sox t.wav /home/pjb/wav/scriabin/${PIECE74}_no1.wav pad 0 3
${MP3D}/${PIECE74}_no2.mp3 : ${PIECE74}
	sed -n '/^# start no2/,/^# start no3/p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	${NORMALIZE} -g 0.5 t.wav
	lame -h t.wav $@
	sox t.wav /home/pjb/wav/scriabin/${PIECE74}_no2.wav pad 0 3
${MP3D}/${PIECE74}_no3.mp3 : ${PIECE74}
	sed -n '/^# start no3/,/^# start no4/p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	sox t.wav /home/pjb/wav/scriabin/${PIECE74}_no3.wav pad 0 3
${MP3D}/${PIECE74}_no4.mp3 : ${PIECE74}
	sed -n '/^# start no4/,/^# start no5/p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	${NORMALIZE} -g 0.5 t.wav
	lame -h t.wav $@
	sox t.wav /home/pjb/wav/scriabin/${PIECE74}_no4.wav pad 0 3
${MP3D}/${PIECE74}_no5.mp3 : ${PIECE74}
	sed -n '/^# start no5/,999p' op74 | perl -pe 's/^#M //;' \
	| ${MUSCRIPT} -midi \
	| timidity -Ow -c /etc/timidity/timidity.cfg -o t.wav -
	${NORMALIZE} --peak t.wav
	lame -h t.wav $@
	mv t.wav /home/pjb/wav/scriabin/${PIECE74}_no5.wav
${TITLE74}.a4 : ${TITLE74}
	groff -ms ${TITLE74} | ${BANNERISE} > $@
${PIECE74}.a4 : ${PIECE74}
	${MUSCRIPT} ${PIECE74} > $@
	pkill -HUP gv
p2_op74.a4 : p2_op74
	utf2iso p2_op74 | groff -t -ms | ${BANNERISE} > $@
	pkill -HUP gv
p3_op74.a4 : p3_op74
	utf2iso p3_op74 | groff -t -ms | ${BANNERISE} > $@
	pkill -HUP gv
${PIECE74} : op74
	perl -pe 's/^#S //;' op74 > $@
	perl -pe 's/^#A //;' op74 >> $@
${PIECE74}.mid : op74
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
wav61 :
	muscript_lua -midi scriabin_op61 | midisox_lua - - tempo 1.1 \
	  | fluadity - /home/cds/clas/scriabin/op61_poeme_nocturne.wav
	# then cd /home/cds/clas/scriabin/
	# and  sox op61_poeme_nocturne.wav -n stats
	# and  sox op61_poeme_nocturne.wav t.wav vol 0.98 gain -b
wav63 :
	muscript_lua -midi scriabin_op63 \
	  | fluadity - /home/cds/clas/scriabin/op63_deux_poemes/t1.wav
	# then cd /home/cds/clas/scriabin/op63_deux_poemes/
	# and  sox t1.wav -n stats
	# and  sox t1.wav t2.wav vol 0.98 gain -e stats
	# sox t2.wav op63_no_1_masque.wav fade 0 64.5 0
	# sox t2.wav op63_no_2_etrangete.wav trim 64.5

edit :
	vi ${PLAY}
	muscript_lua ${PLAY} > ${PLAY}.a4
	pkill -HUP gv
	muscript_lua -midi ${PLAY} | midisox_lua - -d stat # trim 65

play :
	${MUSCRIPT} -midi ${PLAY} | midisox_lua - -d stat # trim 65

