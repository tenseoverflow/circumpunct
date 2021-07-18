#!/usr/bin/perl
use strict; use warnings;
use CGI::Carp 'fatalsToBrowser'; use CGI;

my $cgi = CGI->new();
my $domain = $cgi->param('domain');
my $file_in = "/var/www/circumpunct/cgi-bin/submissions.txt";
my $file_out = File::Temp->new()->filename;
open (my $FH_in, '<', $file_in) or die("Could read file");
open (my $FH_out, ">", $file_out) or die("Could write to file");
my $pattern = qr/.*$domain.*/;
while (<$FH_in>) {
    print $FH_out $_ unless /$pattern/;
}
close $FH_in;
close $FH_out;
move ($file_out, $file_in) or die("Can't move $file_out to $file_in: $!");
$url = "https://".$ENV{"HTTP_HOST"}."/admin";
print $cgi->redirect(-url=>$url);
exit;
