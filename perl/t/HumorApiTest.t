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

use_ok('WWW::OpenAPIClient::HumorApi');

my $api = WWW::OpenAPIClient::HumorApi->new();
isa_ok($api, 'WWW::OpenAPIClient::HumorApi');

#
# generate_nonsense_word_api test
#
# uncomment below and update the test
#my $generate_nonsense_word_api_result = $api->generate_nonsense_word_api();

#
# random_joke_api test
#
# uncomment below and update the test
#my $random_joke_api_include_tags = undef; # replace NULL with a proper value
#my $random_joke_api_exclude_tags = undef; # replace NULL with a proper value
#my $random_joke_api_min_rating = undef; # replace NULL with a proper value
#my $random_joke_api_max_length = undef; # replace NULL with a proper value
#my $random_joke_api_result = $api->random_joke_api(include_tags => $random_joke_api_include_tags, exclude_tags => $random_joke_api_exclude_tags, min_rating => $random_joke_api_min_rating, max_length => $random_joke_api_max_length);

#
# random_meme_api test
#
# uncomment below and update the test
#my $random_meme_api_keywords = undef; # replace NULL with a proper value
#my $random_meme_api_keywords_in_image = undef; # replace NULL with a proper value
#my $random_meme_api_media_type = undef; # replace NULL with a proper value
#my $random_meme_api_min_rating = undef; # replace NULL with a proper value
#my $random_meme_api_max_age_days = undef; # replace NULL with a proper value
#my $random_meme_api_result = $api->random_meme_api(keywords => $random_meme_api_keywords, keywords_in_image => $random_meme_api_keywords_in_image, media_type => $random_meme_api_media_type, min_rating => $random_meme_api_min_rating, max_age_days => $random_meme_api_max_age_days);

#
# search_gifs_api test
#
# uncomment below and update the test
#my $search_gifs_api_query = undef; # replace NULL with a proper value
#my $search_gifs_api_number = undef; # replace NULL with a proper value
#my $search_gifs_api_result = $api->search_gifs_api(query => $search_gifs_api_query, number => $search_gifs_api_number);

#
# search_jokes_api test
#
# uncomment below and update the test
#my $search_jokes_api_keywords = undef; # replace NULL with a proper value
#my $search_jokes_api_include_tags = undef; # replace NULL with a proper value
#my $search_jokes_api_exclude_tags = undef; # replace NULL with a proper value
#my $search_jokes_api_min_rating = undef; # replace NULL with a proper value
#my $search_jokes_api_max_length = undef; # replace NULL with a proper value
#my $search_jokes_api_offset = undef; # replace NULL with a proper value
#my $search_jokes_api_number = undef; # replace NULL with a proper value
#my $search_jokes_api_result = $api->search_jokes_api(keywords => $search_jokes_api_keywords, include_tags => $search_jokes_api_include_tags, exclude_tags => $search_jokes_api_exclude_tags, min_rating => $search_jokes_api_min_rating, max_length => $search_jokes_api_max_length, offset => $search_jokes_api_offset, number => $search_jokes_api_number);

#
# search_memes_api test
#
# uncomment below and update the test
#my $search_memes_api_keywords = undef; # replace NULL with a proper value
#my $search_memes_api_keywords_in_image = undef; # replace NULL with a proper value
#my $search_memes_api_media_type = undef; # replace NULL with a proper value
#my $search_memes_api_min_rating = undef; # replace NULL with a proper value
#my $search_memes_api_max_age_days = undef; # replace NULL with a proper value
#my $search_memes_api_offset = undef; # replace NULL with a proper value
#my $search_memes_api_number = undef; # replace NULL with a proper value
#my $search_memes_api_result = $api->search_memes_api(keywords => $search_memes_api_keywords, keywords_in_image => $search_memes_api_keywords_in_image, media_type => $search_memes_api_media_type, min_rating => $search_memes_api_min_rating, max_age_days => $search_memes_api_max_age_days, offset => $search_memes_api_offset, number => $search_memes_api_number);


done_testing();
