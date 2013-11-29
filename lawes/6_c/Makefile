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

dev : 6_c_kbd.a4

all : ${FD}/lawes_6_c_kbd.a4 ${SD}/lawes_6_c_kbd.a4 ${FREED}/lawes_6_c_kbd.pdf

${FD}/lawes_6_c_kbd.a4 : title_6_kbd.a4 p2.a4 p3.a4 lawes_6_c_kbd.a4 ${BLURB}.a4
	${PSCAT} title_6_kbd.a4 p2.a4 p3.a4 6_c_kbd.a4 ${BLURB}.a4 > $@
${FD}/lawes_6_c_kbd.us : ${FD}/lawes_6_c_kbd.a4
	${A42US} ${FD}/lawes_6_c_kbd.a4 > $@
${FREED}/lawes_6_c_kbd.pdf : title_6_kbd_free.a4 p2.a4 p3.a4 \
 lawes_6_c_kbd.a4 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} 6_c_kbd.a4 \
	| ${PSCAT} title_6_kbd_free.a4 p2.a4 p3.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

6_c_kbd.a4 : 6_c_kbd
	${MUSCRIPT} 6_c_kbd > $@

title_6_kbd.a4 : title_6_kbd
	groff -ms title_6_kbd | ${BANNERISE} > $@
title_6_kbd_free.a4 : title_6_kbd_free
	groff -ms title_6_kbd_free | ${BANNERISE} > $@

p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
p3.a4 : p3
	groff -ms p3 | ${BANNERISE} > $@
