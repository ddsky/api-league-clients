=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.6.4
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
# detect_main_image_color_api test
#
# uncomment below and update the test
#my $detect_main_image_color_api_url = undef; # replace NULL with a proper value
#my $detect_main_image_color_api_result = $api->detect_main_image_color_api(url => $detect_main_image_color_api_url);

#
# rescale_image_api test
#
# uncomment below and update the test
#my $rescale_image_api_url = undef; # replace NULL with a proper value
#my $rescale_image_api_width = undef; # replace NULL with a proper value
#my $rescale_image_api_height = undef; # replace NULL with a proper value
#my $rescale_image_api_crop = undef; # replace NULL with a proper value
#my $rescale_image_api_result = $api->rescale_image_api(url => $rescale_image_api_url, width => $rescale_image_api_width, height => $rescale_image_api_height, crop => $rescale_image_api_crop);

#
# search_icons_api test
#
# uncomment below and update the test
#my $search_icons_api_query = undef; # replace NULL with a proper value
#my $search_icons_api_only_public_domain = undef; # replace NULL with a proper value
#my $search_icons_api_number = undef; # replace NULL with a proper value
#my $search_icons_api_result = $api->search_icons_api(query => $search_icons_api_query, only_public_domain => $search_icons_api_only_public_domain, number => $search_icons_api_number);

#
# search_royalty_free_images_api test
#
# uncomment below and update the test
#my $search_royalty_free_images_api_query = undef; # replace NULL with a proper value
#my $search_royalty_free_images_api_number = undef; # replace NULL with a proper value
#my $search_royalty_free_images_api_result = $api->search_royalty_free_images_api(query => $search_royalty_free_images_api_query, number => $search_royalty_free_images_api_number);

#
# vector_search_api test
#
# uncomment below and update the test
#my $vector_search_api_query = undef; # replace NULL with a proper value
#my $vector_search_api_offset = undef; # replace NULL with a proper value
#my $vector_search_api_number = undef; # replace NULL with a proper value
#my $vector_search_api_result = $api->vector_search_api(query => $vector_search_api_query, offset => $vector_search_api_offset, number => $vector_search_api_number);


done_testing();
