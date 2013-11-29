MUSCRIPT = /home/pbin/muscript
PLAY = body_and_soul

dev : banjo.a4 quality_time.a4 my_baby_just_cares_for_me.a4 \
 every_time.a4 apihmhih.a4 holiday.a4 ipanema.a4 mbjcfm_C.a4 \
 the_man_i_love.a4 copyright.a4 round_midnight.a4 cant_get_that_stuff.a4 \
 quality_time_high.a4 stormy_weather_Eb.a4 lucky_to_be_me_F.a4 \
 lucky_to_be_me_D.a4 easy_money.a4 aint_necessarily_so.a4 \
 got_the_world_on_a_string.a4 body_and_soul.a4
all : copyright.mid classical.a4 copyright.a4 holiday.a4

classical.a4 : classical
	${MUSCRIPT} classical > $@
copyright.a4 : copyright
	${MUSCRIPT} copyright > $@
holiday.a4 : holiday
	${MUSCRIPT} holiday > $@
ipanema.a4 : ipanema
	${MUSCRIPT} ipanema > $@
round_midnight.a4 : round_midnight
	${MUSCRIPT} round_midnight > $@
banjo.a4 : banjo
	${MUSCRIPT} banjo > $@
quality_time.a4 : quality_time
	${MUSCRIPT} quality_time > $@
quality_time_high.a4 : quality_time_high
	${MUSCRIPT} quality_time_high > $@
every_time.a4 : every_time
	${MUSCRIPT} every_time > $@
apihmhih.a4 : apihmhih
	${MUSCRIPT} apihmhih > $@
my_baby_just_cares_for_me.a4 : my_baby_just_cares_for_me
	${MUSCRIPT} my_baby_just_cares_for_me > $@
mbjcfm_C.a4 : mbjcfm_C
	${MUSCRIPT} mbjcfm_C > $@
the_man_i_love.a4 : the_man_i_love
	${MUSCRIPT} the_man_i_love > $@
cant_get_that_stuff.a4 : cant_get_that_stuff
	${MUSCRIPT} cant_get_that_stuff > $@
stormy_weather_Eb.a4 : stormy_weather_Eb
	${MUSCRIPT} stormy_weather_Eb > $@
lucky_to_be_me_F.a4 : lucky_to_be_me_F
	${MUSCRIPT} lucky_to_be_me_F > $@
lucky_to_be_me_D.a4 : lucky_to_be_me_D
	${MUSCRIPT} lucky_to_be_me_D > $@
easy_money.a4 : easy_money
	${MUSCRIPT} easy_money > $@
aint_necessarily_so.a4 : aint_necessarily_so
	${MUSCRIPT} aint_necessarily_so > $@
got_the_world_on_a_string.a4 : got_the_world_on_a_string
	${MUSCRIPT} got_the_world_on_a_string > $@
body_and_soul.a4 : body_and_soul
	${MUSCRIPT} body_and_soul > $@
play :
	${MUSCRIPT} -midi ${PLAY} | aplaymidi - &

classical.mid : classical
	${MUSCRIPT} -midi classical > $@
copyright.mid : copyright
	sed /endmidi/q copyright | ${MUSCRIPT} -midi > $@
holiday.mid : holiday
	${MUSCRIPT} -midi holiday > $@
banjo.mid : banjo
	start_stop banjo | ${MUSCRIPT} -midi > $@
	aplaymidi -p 64:0 $@ &
echo.mid : banjo
	start_stop banjo | ${MUSCRIPT} -midi \
	| midiecho -c 3 -d 250,450 -e 4,5 - > $@
	aplaymidi -p 64:0 $@ &
