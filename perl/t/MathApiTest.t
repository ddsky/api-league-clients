=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.4.0
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

use_ok('WWW::OpenAPIClient::MathApi');

my $api = WWW::OpenAPIClient::MathApi->new();
isa_ok($api, 'WWW::OpenAPIClient::MathApi');

#
# convert_units test
#
# uncomment below and update the test
#my $convert_units_source_amount = undef; # replace NULL with a proper value
#my $convert_units_source_unit = undef; # replace NULL with a proper value
#my $convert_units_target_unit = undef; # replace NULL with a proper value
#my $convert_units_food_name = undef; # replace NULL with a proper value
#my $convert_units_result = $api->convert_units(source_amount => $convert_units_source_amount, source_unit => $convert_units_source_unit, target_unit => $convert_units_target_unit, food_name => $convert_units_food_name);


done_testing();
