SD = /home/pjb/www/mus/samples
FD = /home/pjb/www/softgoods
MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/cc_backpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
PIECE = bwv769
PLAY  = bwv769

dev : ${PIECE}.a4 title.a4 p2.a4 p3.a4
all : ${FREED}/${PIECE}.pdf ${FREED}/${PIECE}.pdf 


title.a4 : title
	groff -ms title | ${BANNERISE} > $@
p2.a4 : p2
	tbl p2 | groff -ms | ${BANNERISE} > $@
p3.a4 : p3
	tbl p3 | groff -ms | ${BANNERISE} > $@
${PIECE}.a4 : ${PIECE}
	${MUSCRIPT} ${PIECE} > $@
${PIECE}.mid : ${PIECE}
	${MUSCRIPT} -midi ${PIECE} > $@
play :
	${MUSCRIPT} -midi ${PLAY} | aplaymidi - &
