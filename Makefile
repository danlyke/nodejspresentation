TARGETDIR = /home/danlyke/websites/flutterby.net/public_html_static/jspreso/

all:
	node helloworld.js
	node hello2.js
	perl callnode.pl

slides:
	landslide presentation.md
	rsync -avz themes $(TARGETDIR)
	rsync -avz diagrams $(TARGETDIR)
	perl -e 'while (<>) { s%file:///usr/lib/python2.7/dist-packages/landslide/landslide/%%g; print }' <  presentation.html > $(TARGETDIR)presentation.html

test :
	jshint *.js
	mocha tests

deploy:
	mocha
	echo "Okay, now I'm copying your stuff to the server"
	mkdir -p /home/danlyke/websites/flutterby.net/public_html_static/jspreso
	cp clientfile.html commonfunc.js /home/danlyke/websites/flutterby.net/public_html_static/jspreso
