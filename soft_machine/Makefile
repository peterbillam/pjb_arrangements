PIECE=dedicated_to_you_but_you_werent_listening

dev : ${PIECE}.a4

edit :
	${EDITOR} ${PIECE}
	muscript ${PIECE} > ${PIECE}.a4
	pkill -HUP gv
	muscript -midi ${PIECE} | midisox_lua - -d stat  trim 120  # fade 0 15 0

# bar 25/26 is 45.5 sec   bar 32/33 is 58.5

play :
	muscript -midi ${PIECE} | midisox_lua - -d stat

${PIECE}.a4 : ${PIECE}
	muscript ${PIECE} > $@
	pkill -HUP gv
