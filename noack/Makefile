MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
PIECE = music_for_2_pianos_I
PLAY = music_for_2_pianos_I

dev : t.mid ${PIECE}.a4
all : ${FREED}/${PIECE}.pdf

${FREED}/${PIECE}.pdf : ${PIECE}.a4 ${FREEBACKPAGE}.a4
	groff -ms title_free | ${BANNERISE} > title_free.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title_free.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
${PIECE}.mid : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} > $@

t : ${PLAY}
	start_stop ${PLAY} > $@
t.mid : t
	${MUSCRIPT} -midi t > $@
	aplaymidi t.mid &

title_free.a4 : title_free
	groff -ms title_free | ${BANNERISE} > $@
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
