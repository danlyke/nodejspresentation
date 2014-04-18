all:
	node helloworld.js
	node hello2.js
	perl callnode.pl

slides:
	landslide presentation.md
	rsync -avz themes /home/danlyke/websites/flutterby.net/public_html_static/jspreso/
	perl -e 'while (<>) { s%file:///usr/lib/python2.7/dist-packages/landslide/landslide/%%g; print }' <  presentation.html > /home/danlyke/websites/flutterby.net/public_html_static/jspreso/presentation.html

test :
	jshint commonfunc.js
	mocha tests

deploy:
	mocha
	echo "Okay, now I'm copying your stuff to the server"
	mkdir -p /home/danlyke/websites/flutterby.net/public_html_static/jspreso
	cp clientfile.html commonfunc.js /home/danlyke/websites/flutterby.net/public_html_static/jspreso
