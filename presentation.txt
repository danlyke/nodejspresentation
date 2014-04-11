== Nodejs ==

JavaScript outside the browser.

== Dan Lyke ==

* HYPER! HTML browser circa 1993
* "Blogger" since before PeterMe coined the term.
* Bit pusher - video codecs, embedded devices, etc.

== Why JavaScript sucks and why you should use it everywhere ==

== Why JavaScript sucks ==

* Bad language features: comparisons, semicolons, ambiguity
* No typing
* Blurs content and presentation in horrible ways
* Get off my lawn

== Why JavaScript is the future ==

* Cross-platform client+local-server apps
* Deployed more places than Java
* Asm.js - VM of the future
* Security is scary, browsers are everywhere.

== MVC Architecture ==

* How we think about applications
* Multiple windows on the same data
* Single data store

== View ==

* View knows how to display stuff

== Controller ==

* Controller aggregates changes & distributes to views

== Model ==

* Data Store + Business rules
* "Real" enterprises often do this in SQL
* X is not a database

== Business Rules ==

A few silly examples:

* Inventory Control
* Double Entry Bookkeeping
* Password Policy

Less silly examples:

* Rental policies
* Discount conditions
* CRM

== M->C->C->V Architecture ==

* Web apps may need controllers (on servers) talking to controllers
  (in browsers).

== Datastore->Ms->C->C->V ==

* Central atomic data store
* Multiple replicated data stores
* Redundant Model instances talking to both.

== C->M : CRUD ==

* Reduce the world to 4 operations
* A note on item potency

== Application in the Browser ==

== Sharing model constraints with the application ==

* Password policy
* Other API constraints

== Test Driven Development ==

* "make && make test && make deploy"
* Hard to do if tests involve human interaction.
* Sixteen hour test runs...

== Nodejs - command line and server JavaScript ==

* Hello, World: console.log("Hello, World");
* Autocomplete

== npm - Node Package Manager

* jshint


== Nodejs - testing frameworks

* mocha

== Nodejs - server ==

A computer is a state machine. Threads are for people who can't
program state machines.  Alan Cox

== Do I have to write in JavaScript? ==

* Coffeescript
* ActionScript
* C++/emscripten/clang

* jshint

== Standing on the feet of giants ==

* Meteor
* Ember
* Bla bla bla

== Other technology of note ==

* OS/X jsc

