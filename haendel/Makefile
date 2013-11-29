MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
PLAY = fl_sonata_3

dev : hpschd.a4 bass.a4 alto.a4 tenor.a4 soprano1.a4 soprano2.a4 \
 fl_sonata_3.a4 t.mid
all : ${FREED}/grosso.pdf

${FREED}/grosso.pdf : title_free.a4 p2.a4 grosso.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} grosso.a4 \
	| ${PSCAT} title_free.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

grosso.a4 : hpschd bass alto tenor soprano1 soprano2
	${MUSCRIPT} hpschd bass alto tenor soprano1 soprano2 > $@

hpschd.a4 : hpschd
	${MUSCRIPT} hpschd > $@
bass.a4 : bass
	${MUSCRIPT} bass > $@
tenor.a4 : tenor
	${MUSCRIPT} tenor > $@
alto.a4 : alto
	${MUSCRIPT} alto > $@
soprano1.a4 : soprano1
	${MUSCRIPT} soprano1 > $@
soprano2.a4 : soprano2
	${MUSCRIPT} soprano2 > $@

fl_sonata_3.a4 : fl_sonata_3
	${MUSCRIPT} fl_sonata_3 > $@

play : ${PLAY}
	${MUSCRIPT} -midi ${PLAY} > t.mid
	aplaymidi t.mid &

title.a4 : title
	groff -ms title | ${BANNERISE} > $@
title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
