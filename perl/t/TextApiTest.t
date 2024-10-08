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

use_ok('WWW::OpenAPIClient::TextApi');

my $api = WWW::OpenAPIClient::TextApi->new();
isa_ok($api, 'WWW::OpenAPIClient::TextApi');

#
# correct_spelling test
#
# uncomment below and update the test
#my $correct_spelling_text = undef; # replace NULL with a proper value
#my $correct_spelling_language = undef; # replace NULL with a proper value
#my $correct_spelling_result = $api->correct_spelling(text => $correct_spelling_text, language => $correct_spelling_language);

#
# detect_gender_by_name test
#
# uncomment below and update the test
#my $detect_gender_by_name_name = undef; # replace NULL with a proper value
#my $detect_gender_by_name_result = $api->detect_gender_by_name(name => $detect_gender_by_name_name);

#
# detect_language test
#
# uncomment below and update the test
#my $detect_language_text = undef; # replace NULL with a proper value
#my $detect_language_result = $api->detect_language(text => $detect_language_text);

#
# detect_sentiment test
#
# uncomment below and update the test
#my $detect_sentiment_text = undef; # replace NULL with a proper value
#my $detect_sentiment_result = $api->detect_sentiment(text => $detect_sentiment_text);

#
# extract_dates test
#
# uncomment below and update the test
#my $extract_dates_text = undef; # replace NULL with a proper value
#my $extract_dates_result = $api->extract_dates(text => $extract_dates_text);

#
# extract_entities test
#
# uncomment below and update the test
#my $extract_entities_text = undef; # replace NULL with a proper value
#my $extract_entities_result = $api->extract_entities(text => $extract_entities_text);

#
# list_word_synonyms test
#
# uncomment below and update the test
#my $list_word_synonyms_word = undef; # replace NULL with a proper value
#my $list_word_synonyms_result = $api->list_word_synonyms(word => $list_word_synonyms_word);

#
# pluralize_word test
#
# uncomment below and update the test
#my $pluralize_word_word = undef; # replace NULL with a proper value
#my $pluralize_word_result = $api->pluralize_word(word => $pluralize_word_word);

#
# score_readability test
#
# uncomment below and update the test
#my $score_readability_text = undef; # replace NULL with a proper value
#my $score_readability_result = $api->score_readability(text => $score_readability_text);

#
# score_text test
#
# uncomment below and update the test
#my $score_text_title = undef; # replace NULL with a proper value
#my $score_text_text = undef; # replace NULL with a proper value
#my $score_text_result = $api->score_text(title => $score_text_title, text => $score_text_text);

#
# singularize_word test
#
# uncomment below and update the test
#my $singularize_word_word = undef; # replace NULL with a proper value
#my $singularize_word_result = $api->singularize_word(word => $singularize_word_word);

#
# stem_text test
#
# uncomment below and update the test
#my $stem_text_text = undef; # replace NULL with a proper value
#my $stem_text_result = $api->stem_text(text => $stem_text_text);

#
# tag_part_of_speech test
#
# uncomment below and update the test
#my $tag_part_of_speech_text = undef; # replace NULL with a proper value
#my $tag_part_of_speech_result = $api->tag_part_of_speech(text => $tag_part_of_speech_text);


done_testing();
