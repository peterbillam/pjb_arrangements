MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
PALY = now_every_tree

dev : t.mid now_every_tree.a4
all : ${FREED}/now_every_tree.pdf

${FREED}/now_every_tree.pdf : title_free.a4 p2.a4 now_every_tree.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} now_every_tree.a4 \
	| ${PSCAT} title_free.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

now_every_tree.a4 : now_every_tree ${MUSCRIPT}
	${MUSCRIPT} now_every_tree > $@
t.mid : now_every_tree ${MUSCRIPT}
	start_stop now_every_tree | ${MUSCRIPT} -midi > $@
	aplaymidi $@ &

title.a4 : title
	groff -ms title | ${BANNERISE} > $@
title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
