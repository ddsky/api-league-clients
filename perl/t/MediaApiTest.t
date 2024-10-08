=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.6.3
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

use_ok('WWW::OpenAPIClient::MediaApi');

my $api = WWW::OpenAPIClient::MediaApi->new();
isa_ok($api, 'WWW::OpenAPIClient::MediaApi');

#
# detect_main_image_color test
#
# uncomment below and update the test
#my $detect_main_image_color_url = undef; # replace NULL with a proper value
#my $detect_main_image_color_result = $api->detect_main_image_color(url => $detect_main_image_color_url);

#
# rescale_image test
#
# uncomment below and update the test
#my $rescale_image_url = undef; # replace NULL with a proper value
#my $rescale_image_width = undef; # replace NULL with a proper value
#my $rescale_image_height = undef; # replace NULL with a proper value
#my $rescale_image_crop = undef; # replace NULL with a proper value
#my $rescale_image_result = $api->rescale_image(url => $rescale_image_url, width => $rescale_image_width, height => $rescale_image_height, crop => $rescale_image_crop);

#
# search_icons test
#
# uncomment below and update the test
#my $search_icons_query = undef; # replace NULL with a proper value
#my $search_icons_only_public_domain = undef; # replace NULL with a proper value
#my $search_icons_number = undef; # replace NULL with a proper value
#my $search_icons_result = $api->search_icons(query => $search_icons_query, only_public_domain => $search_icons_only_public_domain, number => $search_icons_number);

#
# search_royalty_free_images test
#
# uncomment below and update the test
#my $search_royalty_free_images_query = undef; # replace NULL with a proper value
#my $search_royalty_free_images_number = undef; # replace NULL with a proper value
#my $search_royalty_free_images_result = $api->search_royalty_free_images(query => $search_royalty_free_images_query, number => $search_royalty_free_images_number);


done_testing();
