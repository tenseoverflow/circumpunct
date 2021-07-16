#!/usr/bin/perl
use CGI::Carp 'fatalsToBrowser';
use CGI;

print "Content-type: text/html\n\n";
$this = "ips.txt";
open (THIS, '>>', "$this") || die("Could not open file!");
my $ip = $ENV{REMOTE_ADDR};
print THIS "$ip\n";
close (THIS);
exit;
