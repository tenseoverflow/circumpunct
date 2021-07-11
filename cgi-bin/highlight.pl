#!/usr/bin/perl
use strict; use warnings;
use HTML::TreeBuilder;
use URI;
use CGI::Carp 'fatalsToBrowser'; use CGI;

my $cgi = CGI->new();
my $tree = HTML::TreeBuilder->new_from_file("/var/www/circumpunct/index.html");
print $cgi->header('text/html');
my $url = $ENV{'HTTP_REFERER'};
if ($url =~ /^https.*$/){
    $url =~ s/https:\/\///;
    $url =~ s/\..*$//;
    print $cgi->start_html(-style => {-verbatim => "#$url .link a { background-color: white; color: black;}"});

}
# our @links; our @sites;
# for my $div ( $tree->look_down(_tag => 'ol') ) {
#     @links = $div->look_down(_tag => 'a', href => qr/^((?!xml|onion).)*$/ );
#     foreach (@links) {
#         push(@sites, $_->attr('href'));
#     }
# }
# my $redirect = $sites[ rand @sites ];

# print $cgi->redirect(-url=>$redirect);

$tree->delete();

