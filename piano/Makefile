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
PIECE = exercises
PLAY = pieces

dev : p2ak.a4 exercises.a4 p2.a4 pieces.a4

all : ${FD}/${PIECE}.us ${FREED}/${PIECE}.pdf ${SD}/${PIECE}.us

${FREED}/${PIECE}.pdf : title_free.a4 p2.a4 ${PIECE}.a4 \
 ${FREEBACKPAGE}.a4
	${ADDMESSAGE} ${PIECE}.a4 \
	| ${PSCAT} title_free.a4 p2.a4 - ${FREEBACKPAGE}.a4 \
	| ${A42US} -c \
	| /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -

p2ak.a4 : p2ak
	${MUSCRIPT} p2ak > $@
	pkill -HUP gv
exercises.a4 : exercises
	${MUSCRIPT} exercises > $@
	pkill -HUP gv
pieces.a4 : pieces
	${MUSCRIPT} pieces > $@
	pkill -HUP gv
duets.a4 : duets
	${MUSCRIPT} duets > $@
	pkill -HUP gv
yancey_stomp.a4 : yancey_stomp
	${MUSCRIPT} yancey_stomp > $@
	pkill -HUP gv
p2.a4 : p2
	groff -ms p2 | ${BANNERISE} > $@
	pkill -HUP gv
play :
	${MUSCRIPT} -midi ${PLAY} | aplaymidi - &
