#!/usr/bin/perl -w
use strict;
# PHP uses escapeshellarg
use String::ShellQuote;

my $number = 6;

my $cmd = 'node arguments.js '.shell_quote($number);
my $result = `$cmd`;
print "$number doubled is $result\n";
