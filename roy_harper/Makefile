default : blackpool.a4 stormcock.a4
dev : blackpool.a4
	vi blackpool
	muscript blackpool > blackpool.a4
	pkill -HUP gv
	muscript -midi blackpool | midisox_lua - -d stat trim 22
blackpool.a4 : blackpool
	muscript blackpool > $@
	pkill -HUP gv
stormcock.a4 : stormcock
	muscript stormcock > $@
	pkill -HUP gv
play :
	muscript -midi blackpool | midisox_lua - -d stat
playf :
	muscript -midi blackpool | midisox_lua - -d stat tempo 2.0
list :
	play blackpool_slow.wav fade 0 10 0
listen :
	mplayer blackpool_slow.wav
blackpool_slow.wav : \
 /home/cds/folk/roy_harper/1966_sophisticated_beggar/06_blackpool.wav
	sox /home/cds/folk/roy_harper/1966_sophisticated_beggar/06_blackpool.wav \
	  $@ speed 1.03 tempo 0.50
listf :
	play /home/cds/folk/roy_harper/1966_sophisticated_beggar/06_blackpool.wav
