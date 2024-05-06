=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.0.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::TextApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# correct_spelling
#
# Correct Spelling
#
# @param string $text The text to be corrected. (required)
# @param string $language The language of the text, one of en, de, es, fr, or it. (required)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text to be corrected.',
        required => '1',
    },
    'language' => {
        data_type => 'string',
        description => 'The language of the text, one of en, de, es, fr, or it.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'correct_spelling' } = {
        summary => 'Correct Spelling',
        params => $params,
        returns => 'CorrectSpelling200Response',
        };
}
# @return CorrectSpelling200Response
#
sub correct_spelling {
    my ($self, %args) = @_;

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling correct_spelling");
    }

    # verify the required parameter 'language' is set
    unless (exists $args{'language'}) {
      croak("Missing the required parameter 'language' when calling correct_spelling");
    }

    # parse inputs
    my $_resource_path = '/correct-spelling';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    # query params
    if ( exists $args{'language'}) {
        $query_params->{'language'} = $self->{api_client}->to_query_value($args{'language'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('CorrectSpelling200Response', $response);
    return $_response_object;
}

#
# detect_language
#
# Detect Language
#
# @param string $text The text for which the language should be detected. (required)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text for which the language should be detected.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'detect_language' } = {
        summary => 'Detect Language',
        params => $params,
        returns => 'ARRAY[DetectLanguage200ResponseInner]',
        };
}
# @return ARRAY[DetectLanguage200ResponseInner]
#
sub detect_language {
    my ($self, %args) = @_;

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling detect_language");
    }

    # parse inputs
    my $_resource_path = '/detect-language';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[DetectLanguage200ResponseInner]', $response);
    return $_response_object;
}

#
# detect_sentiment
#
# Detect Sentiment
#
# @param string $text The text for which the sentiment should be detected. (required)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text for which the sentiment should be detected.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'detect_sentiment' } = {
        summary => 'Detect Sentiment',
        params => $params,
        returns => 'DetectSentiment200Response',
        };
}
# @return DetectSentiment200Response
#
sub detect_sentiment {
    my ($self, %args) = @_;

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling detect_sentiment");
    }

    # parse inputs
    my $_resource_path = '/detect-sentiment';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('DetectSentiment200Response', $response);
    return $_response_object;
}

#
# extract_dates
#
# Extract Dates
#
# @param string $text The text from which dates should be extracted. (required)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text from which dates should be extracted.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'extract_dates' } = {
        summary => 'Extract Dates',
        params => $params,
        returns => 'ExtractDates200Response',
        };
}
# @return ExtractDates200Response
#
sub extract_dates {
    my ($self, %args) = @_;

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling extract_dates");
    }

    # parse inputs
    my $_resource_path = '/extract-dates';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ExtractDates200Response', $response);
    return $_response_object;
}

#
# extract_entities
#
# Extract Entities
#
# @param string $text The text from which entities should be extracted. (required)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text from which entities should be extracted.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'extract_entities' } = {
        summary => 'Extract Entities',
        params => $params,
        returns => 'ExtractEntities200Response',
        };
}
# @return ExtractEntities200Response
#
sub extract_entities {
    my ($self, %args) = @_;

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling extract_entities");
    }

    # parse inputs
    my $_resource_path = '/extract-entities';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ExtractEntities200Response', $response);
    return $_response_object;
}

#
# list_word_synonyms
#
# List Word Synonyms
#
# @param string $word The (noun) word for which a list of synonyms should be returned. (required)
{
    my $params = {
    'word' => {
        data_type => 'string',
        description => 'The (noun) word for which a list of synonyms should be returned.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_word_synonyms' } = {
        summary => 'List Word Synonyms',
        params => $params,
        returns => 'ListWordSynonyms200Response',
        };
}
# @return ListWordSynonyms200Response
#
sub list_word_synonyms {
    my ($self, %args) = @_;

    # verify the required parameter 'word' is set
    unless (exists $args{'word'}) {
      croak("Missing the required parameter 'word' when calling list_word_synonyms");
    }

    # parse inputs
    my $_resource_path = '/list-synonyms';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'word'}) {
        $query_params->{'word'} = $self->{api_client}->to_query_value($args{'word'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ListWordSynonyms200Response', $response);
    return $_response_object;
}

#
# part_of_speech_tagging
#
# Part of Speech Tagging
#
# @param string $text The text to tag the part of speech. (required)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text to tag the part of speech.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'part_of_speech_tagging' } = {
        summary => 'Part of Speech Tagging',
        params => $params,
        returns => 'PartOfSpeechTagging200Response',
        };
}
# @return PartOfSpeechTagging200Response
#
sub part_of_speech_tagging {
    my ($self, %args) = @_;

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling part_of_speech_tagging");
    }

    # parse inputs
    my $_resource_path = '/tag-pos';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PartOfSpeechTagging200Response', $response);
    return $_response_object;
}

#
# pluralize_word
#
# Pluralize Word
#
# @param string $word The (noun) word for which the plural form should be found. (required)
{
    my $params = {
    'word' => {
        data_type => 'string',
        description => 'The (noun) word for which the plural form should be found.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'pluralize_word' } = {
        summary => 'Pluralize Word',
        params => $params,
        returns => 'PluralizeWord200Response',
        };
}
# @return PluralizeWord200Response
#
sub pluralize_word {
    my ($self, %args) = @_;

    # verify the required parameter 'word' is set
    unless (exists $args{'word'}) {
      croak("Missing the required parameter 'word' when calling pluralize_word");
    }

    # parse inputs
    my $_resource_path = '/pluralize-word';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'word'}) {
        $query_params->{'word'} = $self->{api_client}->to_query_value($args{'word'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PluralizeWord200Response', $response);
    return $_response_object;
}

#
# score_readability
#
# Score Readability
#
# @param string $text The text to score for readability. (required)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text to score for readability.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'score_readability' } = {
        summary => 'Score Readability',
        params => $params,
        returns => 'ScoreReadability200Response',
        };
}
# @return ScoreReadability200Response
#
sub score_readability {
    my ($self, %args) = @_;

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling score_readability");
    }

    # parse inputs
    my $_resource_path = '/score-readability';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ScoreReadability200Response', $response);
    return $_response_object;
}

#
# score_text
#
# Score Text
#
# @param string $title The title of the text to score. (required)
# @param string $text The text to score for multiple metrics. (required)
{
    my $params = {
    'title' => {
        data_type => 'string',
        description => 'The title of the text to score.',
        required => '1',
    },
    'text' => {
        data_type => 'string',
        description => 'The text to score for multiple metrics.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'score_text' } = {
        summary => 'Score Text',
        params => $params,
        returns => 'ScoreText200Response',
        };
}
# @return ScoreText200Response
#
sub score_text {
    my ($self, %args) = @_;

    # verify the required parameter 'title' is set
    unless (exists $args{'title'}) {
      croak("Missing the required parameter 'title' when calling score_text");
    }

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling score_text");
    }

    # parse inputs
    my $_resource_path = '/score-text';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'title'}) {
        $query_params->{'title'} = $self->{api_client}->to_query_value($args{'title'});
    }

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ScoreText200Response', $response);
    return $_response_object;
}

#
# singularize_word
#
# Singularize Word
#
# @param string $word The (noun) word for which the singular form should be found. (required)
{
    my $params = {
    'word' => {
        data_type => 'string',
        description => 'The (noun) word for which the singular form should be found.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'singularize_word' } = {
        summary => 'Singularize Word',
        params => $params,
        returns => 'SingularizeWord200Response',
        };
}
# @return SingularizeWord200Response
#
sub singularize_word {
    my ($self, %args) = @_;

    # verify the required parameter 'word' is set
    unless (exists $args{'word'}) {
      croak("Missing the required parameter 'word' when calling singularize_word");
    }

    # parse inputs
    my $_resource_path = '/singularize-word';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'word'}) {
        $query_params->{'word'} = $self->{api_client}->to_query_value($args{'word'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SingularizeWord200Response', $response);
    return $_response_object;
}

#
# text_stemming
#
# Text Stemming
#
# @param string $text The text to be stemmed. (required)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text to be stemmed.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'text_stemming' } = {
        summary => 'Text Stemming',
        params => $params,
        returns => 'TextStemming200Response',
        };
}
# @return TextStemming200Response
#
sub text_stemming {
    my ($self, %args) = @_;

    # verify the required parameter 'text' is set
    unless (exists $args{'text'}) {
      croak("Missing the required parameter 'text' when calling text_stemming");
    }

    # parse inputs
    my $_resource_path = '/stem-text';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'text'}) {
        $query_params->{'text'} = $self->{api_client}->to_query_value($args{'text'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKey headerApiKey )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('TextStemming200Response', $response);
    return $_response_object;
}

1;
