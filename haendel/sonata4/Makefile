SD = /home/pjb/www/mus/samples
FD = /home/pjb/www/softgoods
MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
PIECE = sonata4

dev : mvt1.mid mvt1.a4 mvt2.mid mvt2.a4 mvt3.mid mvt3.a4 mvt4.mid mvt4.a4
all : ${FREED}/${PIECE}.pdf

${FD}/${PIECE}.a4 : title.a4 p2.a4 ${PIECE}.a4 ${BLURB}.a4
	${PSCAT} title.a4 p2.a4 ${PIECE}.a4 ${BLURB}.a4 > $@
${FREED}/${PIECE}.pdf : title_free.a4 p2.a4 ${PIECE}.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title_free.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

title.a4 : title
	groff -ms title | ${BANNERISE} > $@
title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
part.a4 : part
	${MUSCRIPT} part > $@
${PIECE}.mid : ${PIECE}
	/home/pbin/start_stop ${PIECE} | ${MUSCRIPT} -midi > $@
	aplaymidi -p64:0 $@ &
mvt1.a4 : mvt1
	${MUSCRIPT} mvt1 > $@
mvt2.a4 : mvt2
	${MUSCRIPT} mvt2 > $@
mvt3.a4 : mvt3
	${MUSCRIPT} mvt3 > $@
mvt4.a4 : mvt4
	${MUSCRIPT} mvt4 > $@
mvt1.mid : mvt1
	${MUSCRIPT} -midi mvt1 > $@
mvt2.mid : mvt2
	${MUSCRIPT} -midi mvt2 > $@
mvt3.mid : mvt3
	${MUSCRIPT} -midi mvt3 > $@
mvt4.mid : mvt4
	${MUSCRIPT} -midi mvt4 > $@
