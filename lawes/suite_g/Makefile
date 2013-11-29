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

dev : title.a4 title_free.a4 p2.a4 suite_g.a4 alan_milne.a4
all : ${FD}/suite_g.us ${SD}/suite_g.us ${FREED}/suite_g.pdf

${FD}/suite_g.a4 : title.a4 p2.a4 suite_g.a4 ${BLURB}.a4
	${PSCAT} title.a4 p2.a4 suite_g.a4 ${BLURB}.a4 > $@
${FD}/suite_g.us : ${FD}/suite_g.a4
	${A42US} ${FD}/suite_g.a4 > $@
${SD}/suite_g.a4 : suite_g.a4
	./make_samples > $@
${SD}/suite_g.us : ${SD}/suite_g.a4
	${A42US} ${SD}/suite_g.a4 > $@
${FREED}/suite_g.pdf : title_free.a4 p2.a4 suite_g.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} suite_g.a4 \
	| ${PSCAT} title_free.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

suite_g.a4 : suite_g
	${MUSCRIPT} suite_g > $@
title.a4 : title
	groff -ms title | ${BANNERISE} > $@
title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
alan_milne.a4 : alan_milne
	${MUSCRIPT} alan_milne > $@

p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@

