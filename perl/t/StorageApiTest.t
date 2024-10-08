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

use_ok('WWW::OpenAPIClient::StorageApi');

my $api = WWW::OpenAPIClient::StorageApi->new();
isa_ok($api, 'WWW::OpenAPIClient::StorageApi');

#
# read_key_value_from_store test
#
# uncomment below and update the test
#my $read_key_value_from_store_key = undef; # replace NULL with a proper value
#my $read_key_value_from_store_result = $api->read_key_value_from_store(key => $read_key_value_from_store_key);

#
# store_key_value_get test
#
# uncomment below and update the test
#my $store_key_value_get_key = undef; # replace NULL with a proper value
#my $store_key_value_get_value = undef; # replace NULL with a proper value
#my $store_key_value_get_result = $api->store_key_value_get(key => $store_key_value_get_key, value => $store_key_value_get_value);


done_testing();
