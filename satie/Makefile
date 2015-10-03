PIECE=sports_et_divertissements

dev : ${PIECE}.a4

edit :
	${EDITOR} ${PIECE}
	muscript ${PIECE} > ${PIECE}.a4
	pkill -HUP gv
	muscript -midi ${PIECE} | midisox_lua - -d

play :
	muscript -midi ${PIECE} | midisox_lua - -d stat

playall :
	grep -v 'midi off' sports_et_divertissements | muscript -midi \
	  | midisox_lua - -d stat

${PIECE}.a4 : ${PIECE}
	muscript ${PIECE} > $@
	pkill -HUP gv

