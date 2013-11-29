dev : o_vos_omnes.a4
play :
	muscript -midi o_vos_omnes | aplaymidi - &
o_vos_omnes.a4 : o_vos_omnes
	muscript o_vos_omnes > $@
	pkill -HUP gv
