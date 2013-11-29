git :
	find . -depth -print \
	  | egrep -v '\.a4|\.us|\.ps|\.pdf|\.mid' \
	  | egrep -v '\.wav|\.mp3|\.jpg|\.png|\.flv|\/old' \
	  | cpio -pdmv /home/pjb/git/pjb_arrangements/
