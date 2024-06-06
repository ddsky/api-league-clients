=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.2.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::ArtApi');

my $api = WWW::OpenAPIClient::ArtApi->new();
isa_ok($api, 'WWW::OpenAPIClient::ArtApi');

#
# image_to_ascii_art_by_url test
#
# uncomment below and update the test
#my $image_to_ascii_art_by_url_url = undef; # replace NULL with a proper value
#my $image_to_ascii_art_by_url_width = undef; # replace NULL with a proper value
#my $image_to_ascii_art_by_url_height = undef; # replace NULL with a proper value
#my $image_to_ascii_art_by_url_result = $api->image_to_ascii_art_by_url(url => $image_to_ascii_art_by_url_url, width => $image_to_ascii_art_by_url_width, height => $image_to_ascii_art_by_url_height);

#
# random_poem test
#
# uncomment below and update the test
#my $random_poem_min_lines = undef; # replace NULL with a proper value
#my $random_poem_max_lines = undef; # replace NULL with a proper value
#my $random_poem_result = $api->random_poem(min_lines => $random_poem_min_lines, max_lines => $random_poem_max_lines);


done_testing();
