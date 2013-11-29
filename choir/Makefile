MUSCRIPT = /home/pbin/muscript
NORMALIZE = /usr/bin/normalize-audio
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
ARRD = /home/pjb/www/mus/arr
A4D = ${ARRD}/a4
USD = ${ARRD}/us
XMLD = ${ARRD}/xml
SRCD = ${ARRD}/src
MP3D = ${ARRD}/mp3
BACKPAGE = /home/pjb/mus/blurb/freebackpage
WARNING = /home/pjb/mus/blurb/mus_free_warning_arr.a4
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
NROF = /home/pbin/nrof
ADDMESSAGE = /home/pbin/add_free_message
UTF2ISO = /home/pbin/utf2iso
PLAY = nightingale_str4tet

dev : t.mid nightingale.a4 all_the_things.a4 nightingale_str4tet.a4 \
	belle_qui_tiens_ma_vie.a4
all : ${A4D}/nightingale_str4tet.pdf

nightingale.a4 : nightingale
	muscript nightingale > $@
	pkill -HUP gv
all_the_things.a4 : all_the_things
	muscript all_the_things > $@
	pkill -HUP gv
nightingale_str4tet.a4 : nightingale_str4tet
	muscript nightingale_str4tet > $@
	pkill -HUP gv
belle_qui_tiens_ma_vie.a4 : belle_qui_tiens_ma_vie
	muscript belle_qui_tiens_ma_vie > $@
	pkill -HUP gv
${A4D}/nightingale_str4tet.pdf : nightingale_str4tet.a4
	cat nightingale_str4tet.a4 \
	 | /usr/bin/gs -q -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=$@ -
play : ${PLAY}
	muscript -midi ${PLAY} | aplaymidi - &
