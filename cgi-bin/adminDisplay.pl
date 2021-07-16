#!/usr/bin/perl
use strict; use warnings;
use CGI::Carp 'fatalsToBrowser';
use CGI;

print "Content-type: text/html\n\n";

our @ips; our @filtered;
my $this = "ips.txt";
open (THIS, "$this") || die("Could not open file!");

while (my $line = <THIS>) {
    push(@ips, $line);
}

sub uniq {
    my %seen;
    grep !$seen{$_}++, @_;
}

@filtered = uniq(@ips);
close (THIS);

print scalar @filtered;
print "\n";

$this = "submissions.txt";
open (THIS, $this ) || die("Can't open file chief");
while (my $line = <THIS>) {
    print $line;
    print "\n";
}
close (THIS);
exit;
