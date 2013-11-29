SD = /home/pjb/www/mus/samples
FD = /home/pjb/www/softgoods
MUSCRIPT = /home/pbin/muscript
BLURB = /home/pjb/mus/blurb/compositions
FREED = /home/pjb/www/mus/free
FREEBACKPAGE = /home/pjb/mus/blurb/freebackpage
LICENSE = /home/pjb/bin/license

dev : one.a4 three.a4
${FREED}/3suites_3_a4.pdf : title.three.a4 p2.a4 three.a4 $(FREEBACKPAGE).a4
	${LICENSE} three.a4

all : $(FD)/3suites_1.a4 $(FD)/3suites_1.us $(FD)/3suites_2.a4 \
   $(FD)/3suites_2.us $(FD)/3suites_3.a4 $(FD)/3suites_3.us \
	$(FD)/3suites_1_bass.a4 $(FD)/3suites_1_bass.us \
	$(FD)/3suites_1_alto.a4 $(FD)/3suites_1_alto.us samples
samples : $(SD)/3suites_1.us $(SD)/3suites_2.us $(SD)/3suites_3.us \
	$(SD)/3suites_1_bass.us $(SD)/3suites_1_alto.us

one.a4 : one
	${MUSCRIPT} one > $@
one.bass.a4 : one.bass
	${MUSCRIPT} one.bass > $@
one.alto.a4 : one.alto
	${MUSCRIPT} one.alto > $@
two.a4 : two
	${MUSCRIPT} two > $@
three.a4 : three
	${MUSCRIPT} three > $@

one.us : one
	${MUSCRIPT} -us one > $@
one.bass.us : one.bass
	${MUSCRIPT} -us one.bass > $@
one.alto.us : one.alto
	${MUSCRIPT} -us one.alto > $@
two.us : two
	${MUSCRIPT} -us two > $@
three.us : three
	${MUSCRIPT} -us three > $@

title.one.a4 : title.one
	cat /home/pjb/mus/blurb/banner.ps > $@
	groff -p -t -e -ms title.one >> $@
title.one.us : title.one.a4
	echo '%!' > $@
	echo '8.4 0 translate 1 0.94074 scale' >> $@
	cat title.one.a4 >> $@

title.one.bass.a4 : title.one.bass
	cat /home/pjb/mus/blurb/banner.ps > $@
	groff -p -t -e -ms title.one.bass >> $@
title.one.bass.us : title.one.bass.a4
	echo '%!' > $@
	echo '8.4 0 translate 1 0.94074 scale' >> $@
	cat title.one.bass.a4 >> $@

title.one.alto.a4 : title.one.alto
	cat /home/pjb/mus/blurb/banner.ps > $@
	groff -p -t -e -ms title.one.alto >> $@
title.one.alto.us : title.one.alto.a4
	echo '%!' > $@
	echo '8.4 0 translate 1 0.94074 scale' >> $@
	cat title.one.alto.a4 >> $@

title.two.a4 : title.two
	cat /home/pjb/mus/blurb/banner.ps > $@
	groff -p -t -e -ms title.two >> $@
title.two.us : title.two.a4
	echo '%!' > $@
	echo '8.4 0 translate 1 0.94074 scale' >> $@
	cat title.two.a4 >> $@

title.three.a4 : title.three
	cat /home/pjb/mus/blurb/banner.ps > $@
	groff -p -t -e -ms title.three >> $@
title.three.us : title.three.a4
	echo '%!' > $@
	echo '8.4 0 translate 1 0.94074 scale' >> $@
	cat title.three.a4 >> $@

p2.a4 : p2
	cat /home/pjb/mus/blurb/banner.ps > p2.a4
	groff -p -t -e -ms p2 >> p2.a4
p2.us : p2.a4
	echo '%!' > p2.us
	echo '8.4 0 translate 1 0.94074 scale' >> p2.us
	cat p2.a4 >> p2.us

$(SD)/3suites_1.us : one.us
	./make_samples_1
$(SD)/3suites_1_bass.us : one.bass.us
	./make_samples_1.bass
$(SD)/3suites_1_alto.us : one.alto.us
	./make_samples_1.alto
$(SD)/3suites_2.us : two.us
	./make_samples_2
$(SD)/3suites_3.us : three.us
	./make_samples_3
