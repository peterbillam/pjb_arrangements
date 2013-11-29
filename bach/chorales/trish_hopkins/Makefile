NORMALIZE=/usr/bin/normalize-audio
all : 01_bwv43.mp3  02_bwv43.mp3  03_bwv43.mp3 \
      04_bwv43.mp3  05_bwv43.mp3  06_bwv43.mp3 \
      07_bwv303.mp3 08_bwv303.mp3 09_bwv303.mp3 \
      10_bwv303.mp3 11_bwv303.mp3 12_bwv303.mp3
bwv43_3v.mid : bwv43
	grep -v '^=2,' bwv43 | muscript -midi | midisox_lua - $@ pitch 1200
bwv303_3v.mid : bwv303
	grep -v '^=2,' bwv303 | muscript -midi | midisox_lua - $@ pitch 1200
bwv43_4v.mid : bwv43
	muscript -midi bwv43 | midisox_lua - $@ pitch 1200
bwv303_4v.mid : bwv303
	muscript -midi bwv303 | midisox_lua - $@ pitch 1200

01_bwv43.mp3 : bwv43_3v.mid
	midisox_lua bwv43_3v.mid - tempo 0.5 | timidity -Ow -o 01_bwv43.wav -
	${NORMALIZE} 01_bwv43.wav
	lame -h 01_bwv43.wav $@
02_bwv43.mp3 : bwv43_3v.mid
	midisox_lua bwv43_3v.mid - tempo 0.6 | timidity -Ow -o 02_bwv43.wav -
	${NORMALIZE} 02_bwv43.wav
	lame -h 02_bwv43.wav $@
03_bwv43.mp3 : bwv43_3v.mid
	midisox_lua bwv43_3v.mid - tempo 0.7 | timidity -Ow -o 03_bwv43.wav -
	${NORMALIZE} 03_bwv43.wav
	lame -h 03_bwv43.wav $@
04_bwv43.mp3 : bwv43_3v.mid
	midisox_lua bwv43_3v.mid - tempo 0.8 | timidity -Ow -o 04_bwv43.wav -
	${NORMALIZE} 04_bwv43.wav
	lame -h 04_bwv43.wav $@
05_bwv43.mp3 : bwv43_3v.mid
	midisox_lua bwv43_3v.mid - tempo 0.9 | timidity -Ow -o 05_bwv43.wav -
	${NORMALIZE} 05_bwv43.wav
	lame -h 05_bwv43.wav $@
06_bwv43.mp3 : bwv43_3v.mid
	midisox_lua bwv43_3v.mid - tempo 1.0 | timidity -Ow -o 06_bwv43.wav -
	${NORMALIZE} 06_bwv43.wav
	lame -h 06_bwv43.wav $@

07_bwv303.mp3 : bwv303_3v.mid
	midisox_lua bwv303_3v.mid - tempo 0.5 | timidity -Ow -o 07_bwv303.wav -
	${NORMALIZE} 07_bwv303.wav
	lame -h 07_bwv303.wav $@
08_bwv303.mp3 : bwv303_3v.mid
	midisox_lua bwv303_3v.mid - tempo 0.6 | timidity -Ow -o 08_bwv303.wav -
	${NORMALIZE} 08_bwv303.wav
	lame -h 08_bwv303.wav $@
09_bwv303.mp3 : bwv303_3v.mid
	midisox_lua bwv303_3v.mid - tempo 0.7 | timidity -Ow -o 09_bwv303.wav -
	${NORMALIZE} 09_bwv303.wav
	lame -h 09_bwv303.wav $@
10_bwv303.mp3 : bwv303_3v.mid
	midisox_lua bwv303_3v.mid - tempo 0.8 | timidity -Ow -o 10_bwv303.wav -
	${NORMALIZE} 10_bwv303.wav
	lame -h 10_bwv303.wav $@
11_bwv303.mp3 : bwv303_3v.mid
	midisox_lua bwv303_3v.mid - tempo 0.9 | timidity -Ow -o 11_bwv303.wav -
	${NORMALIZE} 11_bwv303.wav
	lame -h 11_bwv303.wav $@
12_bwv303.mp3 : bwv303_3v.mid
	midisox_lua bwv303_3v.mid - tempo 1.0 | timidity -Ow -o 12_bwv303.wav -
	${NORMALIZE} 12_bwv303.wav
	lame -h 12_bwv303.wav $@
