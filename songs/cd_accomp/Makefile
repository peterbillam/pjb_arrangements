all : 01_apihmhih.mid 02_ipanema.mid 03_every_time.mid \
 04_god_bless_the_child.mid 05_the_man_i_love.mid 06_mbjcfm_C.mid \
 07_night_and_day.mid 08_quality_time_high.mid \
 09_round_midnight.mid 10_stormy_weather_Eb.mid

01_apihmhih.mid : apihmhih
	grep -v '^=1' apihmhih | muscript -midi > $@
02_ipanema.mid : ipanema
	start_stop ipanema | muscript -midi > $@
03_every_time.mid : every_time
	grep -v '^=1' every_time | muscript -midi > $@
04_god_bless_the_child.mid : god_bless_the_child
	grep -v '^=1' god_bless_the_child | muscript -midi > $@
clean :
	rm -f *.mid *.wav *.a4 *.ps
05_the_man_i_love.mid : the_man_i_love
	grep -v '^=1' the_man_i_love | muscript -midi > $@
06_mbjcfm_C.mid : mbjcfm_C
	start_stop mbjcfm_C | muscript -midi > $@
07_night_and_day.mid : night_and_day
	grep -v '^=1' night_and_day | muscript -midi > $@
08_quality_time_high.mid : quality_time_high
	grep -v '^=1' quality_time_high | muscript -midi > $@
09_round_midnight.mid : round_midnight
	muscript -midi round_midnight > $@
10_stormy_weather_Eb.mid : stormy_weather_Eb
	grep -v '^=1' stormy_weather_Eb | muscript -midi > $@
