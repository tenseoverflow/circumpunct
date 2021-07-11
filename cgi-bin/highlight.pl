#!/usr/bin/perl
use strict; use warnings;
use CGI::Carp 'fatalsToBrowser'; use CGI;

my $cgi = CGI->new();
print $cgi->header('text/html');
my $url = $ENV{'HTTP_REFERER'};
if ($url =~ /^https.*$/){
    $url =~ s/https:\/\///;
    $url =~ s/\..*$//;
    print $cgi->start_html(-style => {
            -verbatim =>
            "#$url .link a { background-color:
            white; color: black;}"
        }
    );
}

