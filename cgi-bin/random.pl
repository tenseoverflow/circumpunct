#!/usr/bin/perl
use strict; use warnings;
use HTML::TreeBuilder;
use CGI::Carp 'fatalsToBrowser';
use CGI;

my $cgi = CGI->new();
my $tree = HTML::TreeBuilder->new_from_file("/var/www/circumpunct/index.html");
our @links; our @sites;
for my $div ( $tree->look_down(_tag => 'ol') ) {
    @links = $div->look_down(_tag => 'a', href => qr/^((?!xml|onion).)*$/ );
    foreach (@links) {
        push(@sites, $_->attr('href'));
    }
}
my $redirect = $sites[ rand @sites ];

print $cgi->redirect(-url=>$redirect);

$tree->delete();
exit;
