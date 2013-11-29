MSD = /home/pjb/www/muscript/samples

all : ich_fahr_en.a4 ich_fahr_rec.a4 ${MSD}/ich_fahr

ich_fahr_en.a4 : ich_fahr_en /home/pbin/muscript
	/home/pbin/muscript ich_fahr_en > $@

ich_fahr_rec.a4 : ich_fahr_rec /home/pbin/muscript
	/home/pbin/muscript ich_fahr_rec > $@

${MSD}/ich_fahr : ich_fahr_en
	cp ich_fahr_en $@
	chmod 644 $@
