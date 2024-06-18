=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.3.0
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

use_ok('WWW::OpenAPIClient::KnowledgeApi');

my $api = WWW::OpenAPIClient::KnowledgeApi->new();
isa_ok($api, 'WWW::OpenAPIClient::KnowledgeApi');

#
# random_quote test
#
# uncomment below and update the test
#my $random_quote_min_length = undef; # replace NULL with a proper value
#my $random_quote_max_length = undef; # replace NULL with a proper value
#my $random_quote_result = $api->random_quote(min_length => $random_quote_min_length, max_length => $random_quote_max_length);

#
# random_trivia test
#
# uncomment below and update the test
#my $random_trivia_max_length = undef; # replace NULL with a proper value
#my $random_trivia_result = $api->random_trivia(max_length => $random_trivia_max_length);


done_testing();
