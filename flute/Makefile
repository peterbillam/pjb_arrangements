FD = /home/pjb/www/softgoods
SD = /home/pjb/www/mus/samples
MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
PLAY = dock_of_the_bay

dev : flute.a4 copyright.a4 sight_reading.a4 moyse.a4 p2ak.a4 \
 greensleeves.a4 easy.a4 rosamunde.mid telemann.mid \
 america.mid holberg.mid arlesienne.mid nachtmusik1.mid berceuse.mid \
 arlesienne.95.mid arlesienne.90.mid arlesienne.86.mid  arlesienne.81.mid \
 playalong.a4 dock_of_the_bay.a4 syrinx.a4 min6_7.a4
g4 : t.mid ${PLAY}.a4
all : ${FD}/${PIECE}.us ${FREED}/${PIECE}.pdf ${SD}/${PIECE}.us

${FD}/${PIECE}.a4 : title.a4 p2.a4 ${PIECE}.a4 ${BLURB}.a4
	${PSCAT} title.a4 p2.a4 ${PIECE}.a4 ${BLURB}.a4 >$@
${FD}/${PIECE}.us : ${FD}/${PIECE}.a4
	${A42US} ${FD}/${PIECE}.a4 > $@
${SD}/${PIECE}.a4 : ${PIECE}.a4
	./make_samples
${SD}/${PIECE}.us : ${SD}/${PIECE}.a4
	${A42US} ${SD}/${PIECE}.a4 > $@
${FREED}/${PIECE}.pdf : title_free.a4 p2.a4 ${PIECE}.a4 \
 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title_free.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

playalong.a4 : playalong
	${MUSCRIPT} playalong > $@
arp.a4 : arp
	${MUSCRIPT} arp > $@
grade4b.a4 : grade4b
	${MUSCRIPT} grade4b > $@
grade4c.a4 : grade4c
	${MUSCRIPT} grade4c > $@
t.mid : t
	${MUSCRIPT} -midi t > $@
	aplaymidi $@ &
t : ${PLAY}
	/home/pbin/start_stop ${PLAY} > $@
flute.a4 : flute
	${MUSCRIPT} flute > $@
sight_reading.a4 : sight_reading
	${MUSCRIPT} sight_reading > $@
copyright.a4 : copyright
	${MUSCRIPT} copyright > $@
moyse.a4 : moyse
	${MUSCRIPT} moyse > $@
greensleeves.a4 : greensleeves
	${MUSCRIPT} greensleeves > $@
easy.a4 : easy
	${MUSCRIPT} easy > $@
p2ak.a4 : p2ak
	${MUSCRIPT} p2ak > $@
accompaniments.a4 : accompaniments
	${MUSCRIPT} accompaniments > $@
dock_of_the_bay.a4 : dock_of_the_bay
	${MUSCRIPT} dock_of_the_bay > $@
syrinx.a4 : syrinx
	${MUSCRIPT} syrinx > $@
min6_7.a4 : min6_7
	${MUSCRIPT} min6_7 > $@

rosamunde.mid : rosamunde
	${MUSCRIPT} -midi rosamunde > $@
telemann.mid : telemann
	${MUSCRIPT} -midi telemann > $@
america.mid : america
	${MUSCRIPT} -midi america > $@
holberg.mid : holberg
	${MUSCRIPT} -midi holberg > $@
arlesienne.mid : arlesienne
	${MUSCRIPT} -midi arlesienne > $@
arlesienne.95.mid : arlesienne
	tempo 0.95 arlesienne | ${MUSCRIPT} -midi > $@
arlesienne.90.mid : arlesienne
	tempo 0.90 arlesienne | ${MUSCRIPT} -midi > $@
arlesienne.86.mid : arlesienne
	tempo 0.86 arlesienne | ${MUSCRIPT} -midi > $@
arlesienne.81.mid : arlesienne
	tempo 0.815 arlesienne | ${MUSCRIPT} -midi > $@
nachtmusik1.mid : nachtmusik1
	${MUSCRIPT} -midi nachtmusik1 > $@
berceuse.mid : berceuse
	sed /endmidi/q berceuse | ${MUSCRIPT} -midi > $@
dock_of_the_bay.mid : dock_of_the_bay
	sed /endmidi/q dock_of_the_bay | ${MUSCRIPT} -midi > $@

title.a4 : title
	groff -ms title | ${BANNERISE} > $@
title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
