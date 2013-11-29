MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message
PLAY = let_u_go_drums

dev : rock.a4 banjo.mid nobody_knows_you.mid aint_got_you.mid \
	let_u_go_drums.mid let_u_go_drums.ps
all :

rock.a4 : rock
	${MUSCRIPT} rock > $@
banjo.mid : banjo
	${MUSCRIPT} -midi banjo > $@
nobody_knows_you.mid : nobody_knows_you
	${MUSCRIPT} -midi nobody_knows_you > $@
aint_got_you.mid : aint_got_you
	${MUSCRIPT} -midi aint_got_you > $@
let_u_go_drums.mid : let_u_go_drums.txt
	${MUSCRIPT} -midi let_u_go_drums.txt > $@
let_u_go_drums.ps : let_u_go_drums.txt
	${MUSCRIPT} let_u_go_drums.txt > $@
	pkill -HUP gv
play :
	aplaymidi ${PLAY}.mid &
