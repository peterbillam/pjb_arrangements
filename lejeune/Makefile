MUSCRIPT = /home/pbin/muscript
PLAY = chanson

dev : t.mid chanson.a4
a4 : chanson.a4
play : t.mid

chanson.a4 : chanson
	${MUSCRIPT} chanson > $@
t.mid : ${PLAY}
	start_stop ${PLAY} | ${MUSCRIPT} -midi > $@
	aplaymidi $@ &
