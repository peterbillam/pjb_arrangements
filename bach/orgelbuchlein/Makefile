MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message

dev : t.mid title_free.a4 p2.a4 p3.a4 xmas.a4
all : ${FREED}/xmas.pdf

${FREED}/xmas.pdf : title_free.a4 p2.a4 p3.a4 xmas.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} xmas.a4 \
	| ${PSCAT} title_free.a4 p2.a4 p3.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

xmas.a4 : xmas ${MUSCRIPT}
	${MUSCRIPT} xmas > $@
t.mid : xmas
	4hands2score xmas | muscript -midi > $@
	aplaymidi -p64:0 $@ &

title.a4 : title
	groff -ms title | ${BANNERISE} > $@
title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
p3.a4 : p3
	groff -ms p3 | ${BANNERISE} > $@
