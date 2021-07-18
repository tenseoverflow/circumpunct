#!/usr/bin/perl
use strict; use warnings;
use POSIX qw(tzset);
use CGI::Carp 'fatalsToBrowser';
use CGI;
$CGI::POST_MAX = 1024 * 10;
$ENV{TZ} = 'America/New_York';
tzset;

my $dt = localtime();

my $cgi = CGI->new();
print $cgi->header();
my $domain = $cgi->param('domain');
my $descri = $cgi->param('description');
my $rss = $cgi->param('feed');
my $tor = $cgi->param('tor');

if ($rss eq "Rss feed link") { $rss = "";}
if ($rss eq "example.onion") { $tor = "";}

my $this = "submissionIps.txt";
my $ip = $ENV{REMOTE_ADDR};
open (THIS, $this) || die("Could not open file");
while (my $line = <THIS> ) {
    if (!($ip eq $line)) {
        print "You've already submitted an entry. No submitting for other people. Do not make requests via email or you're blacklisted.";
        exit;
    }
}
close (THIS);
open (THIS, '>>', $this) || die("Could not open file");
print THIS "$ip\n";
close (THIS);
my $subm = "submissions.txt";
open (SUBM, '>>', "$subm") || die("Could not open file");
    print SUBM "<div id=$domain >";
    print SUBM "$dt\n";
    print SUBM "Domain: $domain  \n";
    print SUBM "Location: $descri <!-- $domain -->\n";
    print SUBM "Feed: $rss <!-- $domain --> \n";
    print SUBM "Tor: $tor <!-- $domain -->\n";
    print SUBM "<div class=adminOptions >";
    print SUBM $cgi->start_form(
        -method => 'post',
        -action => "/cgi-bin/visit.pl"
    ),
    $cgi->textarea(
        -name => 'domain',
        -value => "$domain",
    ),
    $cgi->submit('visit'),
    $cgi->end_form();
    print SUBM $cgi->start_form(
        -method => 'post',
        -action => "/cgi-bin/delete.pl"
    ),
    $cgi->textarea(
        -name => 'domain',
        -value => "$domain",
    ),
    $cgi->submit('delete'),
    $cgi->end_form();
    print SUBM "<!-- $domain -->" . $cgi->end_div();
    print SUBM "<!-- $domain -->" . $cgi->end_div();
    print SUBM "===============\n";
close(SUBM);
print "Entry submitted!";
exit;
