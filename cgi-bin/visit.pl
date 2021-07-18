#!/usr/bin/perl
use strict; use warnings;
use CGI::Carp 'fatalsToBrowser';
use CGI;

my $cgi = CGI->new();
my $redirect = "https://" . $cgi->param('domain');
print $cgi->redirect(-url=>$redirect);
exit;
