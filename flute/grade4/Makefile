FD = /home/pjb/www/softgoods
SD = /home/pjb/www/mus/samples
MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
BANNERISE = /home/pbin/bannerise
A42US = /home/pbin/a42us
PSCAT = /home/pbin/pscat
ADDMESSAGE = /home/pbin/add_free_message

g4 : grade4b.a4 grade4c.a4 1_grade4c.mid \
 2_grade4b_repeat_92.mid 3_grade4b_repeat_96.mid \
 4_grade4b_repeat_100.mid 5_grade4b_repeat_104.mid \
 6_grade4b_92.mid 7_grade4b_96.mid \
 8_grade4b_100.mid 9_grade4b_104.mid

grade4b.a4 : grade4b
	${MUSCRIPT} grade4b > $@
grade4c.a4 : grade4c
	${MUSCRIPT} grade4c > $@
1_grade4c.mid : grade4c
	${MUSCRIPT} -midi grade4c > $@
2_grade4b_repeat_92.mid : grade4b
	tempo 0.8846 grade4b | ${MUSCRIPT} -midi > $@
6_grade4b_92.mid : grade4b
	start_stop grade4b | tempo 0.8846 | ${MUSCRIPT} -midi > $@
3_grade4b_repeat_96.mid : grade4b
	tempo 0.9231 grade4b | ${MUSCRIPT} -midi > $@
7_grade4b_96.mid : grade4b
	start_stop grade4b | tempo 0.9231 | ${MUSCRIPT} -midi > $@
4_grade4b_repeat_100.mid : grade4b
	tempo 0.9615 grade4b | ${MUSCRIPT} -midi > $@
8_grade4b_100.mid : grade4b
	start_stop grade4b | tempo 0.9615 | ${MUSCRIPT} -midi > $@
5_grade4b_repeat_104.mid : grade4b
	${MUSCRIPT} -midi grade4b > $@
9_grade4b_104.mid : grade4b
	start_stop grade4b | ${MUSCRIPT} -midi > $@
