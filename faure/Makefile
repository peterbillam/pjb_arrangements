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
PIECE = berceuse

dev : ${PIECE}.a4 title.a4 title_free.a4 p2.a4
all : ${FREED}/${PIECE}.pdf

${FD}/${PIECE}.a4 : title.a4 p2.a4 ${PIECE}.a4 ${BLURB}.a4
	groff -ms title | ${BANNERISE} > title.a4
	${PSCAT} title.a4 p2.a4 ${PIECE}.a4 ${BLURB}.a4 > $@
${SD}/${PIECE}.a4 : ${PIECE}.a4
	./make_samples
${FREED}/${PIECE}.pdf : title_free.a4 ${PIECE}.a4 ${FREEBACKPAGE}.a4
	groff -ms title_free | ${BANNERISE} > title_free.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title_free.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${PIECE}.a4 : ${PIECE} ${MUSCRIPT}
	${MUSCRIPT} -a4 ${PIECE} > $@

title.a4 : title
	groff -ms title | ${BANNERISE} > $@
title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
