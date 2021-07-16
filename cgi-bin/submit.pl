#!/usr/bin/perl
use strict; use warnings;
use CGI::Carp 'fatalsToBrowser';
use CGI;
$CGI::POST_MAX = 1024 * 10;

my $cgi = CGI->new();
print $cgi->header();
my $domain = $cgi->param('domain');
my $descri = $cgi->param('description');
my $this = "submissionIps.txt";
my $ip = $ENV{REMOTE_ADDR};
open (THIS, $this) || die("Could not open file");
while (my $line = <THIS> ) {
    if (!($ip eq $line)) {
        print "You've already submitted an entry. No submitting for other people. Do not make requests via email or you're banned.";
        exit;
    }
}
close (THIS);
open (THIS, '>>', $this) || die("Could not open file");
print THIS "$ip\n";
close (THIS);
my $subm = "submissions.txt";
open (SUBM, '>>', "$subm") || die("Could not open file");
    print SUBM "==========\n";
    print SUBM localtime()."\n";
    print SUBM "$domain\n";
    print SUBM "$descri\n";
    print SUBM "==========\n";
close(SUBM);
print "Entry submitted!";
exit;
