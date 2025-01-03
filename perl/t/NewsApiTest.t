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

use_ok('WWW::OpenAPIClient::NewsApi');

my $api = WWW::OpenAPIClient::NewsApi->new();
isa_ok($api, 'WWW::OpenAPIClient::NewsApi');

#
# extract_news_api test
#
# uncomment below and update the test
#my $extract_news_api_url = undef; # replace NULL with a proper value
#my $extract_news_api_analyze = undef; # replace NULL with a proper value
#my $extract_news_api_result = $api->extract_news_api(url => $extract_news_api_url, analyze => $extract_news_api_analyze);

#
# search_news_api test
#
# uncomment below and update the test
#my $search_news_api_text = undef; # replace NULL with a proper value
#my $search_news_api_source_countries = undef; # replace NULL with a proper value
#my $search_news_api_language = undef; # replace NULL with a proper value
#my $search_news_api_min_sentiment = undef; # replace NULL with a proper value
#my $search_news_api_max_sentiment = undef; # replace NULL with a proper value
#my $search_news_api_earliest_publish_date = undef; # replace NULL with a proper value
#my $search_news_api_latest_publish_date = undef; # replace NULL with a proper value
#my $search_news_api_news_sources = undef; # replace NULL with a proper value
#my $search_news_api_authors = undef; # replace NULL with a proper value
#my $search_news_api_categories = undef; # replace NULL with a proper value
#my $search_news_api_entities = undef; # replace NULL with a proper value
#my $search_news_api_location_filter = undef; # replace NULL with a proper value
#my $search_news_api_sort = undef; # replace NULL with a proper value
#my $search_news_api_sort_direction = undef; # replace NULL with a proper value
#my $search_news_api_offset = undef; # replace NULL with a proper value
#my $search_news_api_number = undef; # replace NULL with a proper value
#my $search_news_api_result = $api->search_news_api(text => $search_news_api_text, source_countries => $search_news_api_source_countries, language => $search_news_api_language, min_sentiment => $search_news_api_min_sentiment, max_sentiment => $search_news_api_max_sentiment, earliest_publish_date => $search_news_api_earliest_publish_date, latest_publish_date => $search_news_api_latest_publish_date, news_sources => $search_news_api_news_sources, authors => $search_news_api_authors, categories => $search_news_api_categories, entities => $search_news_api_entities, location_filter => $search_news_api_location_filter, sort => $search_news_api_sort, sort_direction => $search_news_api_sort_direction, offset => $search_news_api_offset, number => $search_news_api_number);

#
# top_news_api test
#
# uncomment below and update the test
#my $top_news_api_source_country = undef; # replace NULL with a proper value
#my $top_news_api_language = undef; # replace NULL with a proper value
#my $top_news_api_date = undef; # replace NULL with a proper value
#my $top_news_api_headlines_only = undef; # replace NULL with a proper value
#my $top_news_api_result = $api->top_news_api(source_country => $top_news_api_source_country, language => $top_news_api_language, date => $top_news_api_date, headlines_only => $top_news_api_headlines_only);


done_testing();
