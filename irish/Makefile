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
PIECE = mary_bergin

dev : t.mid mary_bergin.a4
all : ${FREED}/${PIECE}.pdf

${FREED}/${PIECE}.pdf : title_free.a4 p2.a4 ${PIECE}.a4 \
 ${FREEBACKPAGE}.a4
	groff -ms title_free | ${BANNERISE} > $@
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title_free.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
t.mid : ${PIECE}
	start_stop ${PIECE} | muscript -midi > $@
	aplaymidi $@ &

title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
