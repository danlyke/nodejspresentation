all:
	node helloworld.js
	node hello2.js
	perl callnode.pl

slides:
	landslide presentation.md

test :
	jshint *.js
	mocha tests

deploy:
	mocha
	echo "Okay, now I'm copying your stuff to the server"
	mkdikr -p /home/danlyke/websites/flutterby.net/public_html_static/jspreso
	cp clientfile.html commonfunc.js /home/danlyke/websites/flutterby.net/public_html_static/jspreso
