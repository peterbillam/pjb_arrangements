PLAY=samba_dorphee

dev : samba_dorphee.ps

samba_dorphee.ps : samba_dorphee
	muscript samba_dorphee > samba_dorphee.ps
play :
	muscript -midi ${PLAY} | aplaymidi - &
