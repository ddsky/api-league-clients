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

use_ok('WWW::OpenAPIClient::HumorApi');

my $api = WWW::OpenAPIClient::HumorApi->new();
isa_ok($api, 'WWW::OpenAPIClient::HumorApi');

#
# generate_nonsense_word test
#
# uncomment below and update the test
#my $generate_nonsense_word_result = $api->generate_nonsense_word();

#
# random_joke test
#
# uncomment below and update the test
#my $random_joke_include_tags = undef; # replace NULL with a proper value
#my $random_joke_exclude_tags = undef; # replace NULL with a proper value
#my $random_joke_min_rating = undef; # replace NULL with a proper value
#my $random_joke_max_length = undef; # replace NULL with a proper value
#my $random_joke_result = $api->random_joke(include_tags => $random_joke_include_tags, exclude_tags => $random_joke_exclude_tags, min_rating => $random_joke_min_rating, max_length => $random_joke_max_length);

#
# random_meme test
#
# uncomment below and update the test
#my $random_meme_keywords = undef; # replace NULL with a proper value
#my $random_meme_keywords_in_image = undef; # replace NULL with a proper value
#my $random_meme_media_type = undef; # replace NULL with a proper value
#my $random_meme_min_rating = undef; # replace NULL with a proper value
#my $random_meme_max_age_days = undef; # replace NULL with a proper value
#my $random_meme_result = $api->random_meme(keywords => $random_meme_keywords, keywords_in_image => $random_meme_keywords_in_image, media_type => $random_meme_media_type, min_rating => $random_meme_min_rating, max_age_days => $random_meme_max_age_days);

#
# search_gifs test
#
# uncomment below and update the test
#my $search_gifs_query = undef; # replace NULL with a proper value
#my $search_gifs_number = undef; # replace NULL with a proper value
#my $search_gifs_result = $api->search_gifs(query => $search_gifs_query, number => $search_gifs_number);

#
# search_jokes test
#
# uncomment below and update the test
#my $search_jokes_keywords = undef; # replace NULL with a proper value
#my $search_jokes_include_tags = undef; # replace NULL with a proper value
#my $search_jokes_exclude_tags = undef; # replace NULL with a proper value
#my $search_jokes_min_rating = undef; # replace NULL with a proper value
#my $search_jokes_max_length = undef; # replace NULL with a proper value
#my $search_jokes_offset = undef; # replace NULL with a proper value
#my $search_jokes_number = undef; # replace NULL with a proper value
#my $search_jokes_result = $api->search_jokes(keywords => $search_jokes_keywords, include_tags => $search_jokes_include_tags, exclude_tags => $search_jokes_exclude_tags, min_rating => $search_jokes_min_rating, max_length => $search_jokes_max_length, offset => $search_jokes_offset, number => $search_jokes_number);

#
# search_memes test
#
# uncomment below and update the test
#my $search_memes_keywords = undef; # replace NULL with a proper value
#my $search_memes_keywords_in_image = undef; # replace NULL with a proper value
#my $search_memes_media_type = undef; # replace NULL with a proper value
#my $search_memes_min_rating = undef; # replace NULL with a proper value
#my $search_memes_max_age_days = undef; # replace NULL with a proper value
#my $search_memes_offset = undef; # replace NULL with a proper value
#my $search_memes_number = undef; # replace NULL with a proper value
#my $search_memes_result = $api->search_memes(keywords => $search_memes_keywords, keywords_in_image => $search_memes_keywords_in_image, media_type => $search_memes_media_type, min_rating => $search_memes_min_rating, max_age_days => $search_memes_max_age_days, offset => $search_memes_offset, number => $search_memes_number);


done_testing();
