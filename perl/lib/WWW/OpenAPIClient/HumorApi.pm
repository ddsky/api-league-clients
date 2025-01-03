=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.6.4
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::HumorApi;

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
# generate_nonsense_word_api
#
# Generate Nonsense Word API
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'generate_nonsense_word_api' } = {
        summary => 'Generate Nonsense Word API',
        params => $params,
        returns => 'GenerateNonsenseWordAPI200Response',
        };
}
# @return GenerateNonsenseWordAPI200Response
#
sub generate_nonsense_word_api {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/generate-nonsense-word';

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
    my $_response_object = $self->{api_client}->deserialize('GenerateNonsenseWordAPI200Response', $response);
    return $_response_object;
}

#
# random_joke_api
#
# Random Joke API
#
# @param string $include_tags A comma-separated list of tags the jokes should have. (optional)
# @param string $exclude_tags A comma-separated list of tags the jokes must not have. (optional)
# @param double $min_rating The minimum rating in range [0.0,1.0] of the jokes. (optional)
# @param int $max_length The maximum length of the joke in letters. (optional)
{
    my $params = {
    'include_tags' => {
        data_type => 'string',
        description => 'A comma-separated list of tags the jokes should have.',
        required => '0',
    },
    'exclude_tags' => {
        data_type => 'string',
        description => 'A comma-separated list of tags the jokes must not have.',
        required => '0',
    },
    'min_rating' => {
        data_type => 'double',
        description => 'The minimum rating in range [0.0,1.0] of the jokes.',
        required => '0',
    },
    'max_length' => {
        data_type => 'int',
        description => 'The maximum length of the joke in letters.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'random_joke_api' } = {
        summary => 'Random Joke API',
        params => $params,
        returns => 'SearchJokesAPI200ResponseJokesInner',
        };
}
# @return SearchJokesAPI200ResponseJokesInner
#
sub random_joke_api {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/retrieve-random-joke';

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
    if ( exists $args{'include_tags'}) {
        $query_params->{'include-tags'} = $self->{api_client}->to_query_value($args{'include_tags'});
    }

    # query params
    if ( exists $args{'exclude_tags'}) {
        $query_params->{'exclude-tags'} = $self->{api_client}->to_query_value($args{'exclude_tags'});
    }

    # query params
    if ( exists $args{'min_rating'}) {
        $query_params->{'min-rating'} = $self->{api_client}->to_query_value($args{'min_rating'});
    }

    # query params
    if ( exists $args{'max_length'}) {
        $query_params->{'max-length'} = $self->{api_client}->to_query_value($args{'max_length'});
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
    my $_response_object = $self->{api_client}->deserialize('SearchJokesAPI200ResponseJokesInner', $response);
    return $_response_object;
}

#
# random_meme_api
#
# Random Meme API
#
# @param string $keywords A comma-separated list of words that must occur in the meme. (optional)
# @param boolean $keywords_in_image Whether the keywords must occur in the image. (optional)
# @param string $media_type The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). (optional)
# @param double $min_rating The minimum rating in range [0.0,1.0] of the meme. (optional)
# @param int $max_age_days The maximum age of the meme in days. (optional)
{
    my $params = {
    'keywords' => {
        data_type => 'string',
        description => 'A comma-separated list of words that must occur in the meme.',
        required => '0',
    },
    'keywords_in_image' => {
        data_type => 'boolean',
        description => 'Whether the keywords must occur in the image.',
        required => '0',
    },
    'media_type' => {
        data_type => 'string',
        description => 'The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).',
        required => '0',
    },
    'min_rating' => {
        data_type => 'double',
        description => 'The minimum rating in range [0.0,1.0] of the meme.',
        required => '0',
    },
    'max_age_days' => {
        data_type => 'int',
        description => 'The maximum age of the meme in days.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'random_meme_api' } = {
        summary => 'Random Meme API',
        params => $params,
        returns => 'RandomMemeAPI200Response',
        };
}
# @return RandomMemeAPI200Response
#
sub random_meme_api {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/retrieve-random-meme';

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
    if ( exists $args{'keywords'}) {
        $query_params->{'keywords'} = $self->{api_client}->to_query_value($args{'keywords'});
    }

    # query params
    if ( exists $args{'keywords_in_image'}) {
        $query_params->{'keywords-in-image'} = $self->{api_client}->to_query_value($args{'keywords_in_image'});
    }

    # query params
    if ( exists $args{'media_type'}) {
        $query_params->{'media-type'} = $self->{api_client}->to_query_value($args{'media_type'});
    }

    # query params
    if ( exists $args{'min_rating'}) {
        $query_params->{'min-rating'} = $self->{api_client}->to_query_value($args{'min_rating'});
    }

    # query params
    if ( exists $args{'max_age_days'}) {
        $query_params->{'max-age-days'} = $self->{api_client}->to_query_value($args{'max_age_days'});
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
    my $_response_object = $self->{api_client}->deserialize('RandomMemeAPI200Response', $response);
    return $_response_object;
}

#
# search_gifs_api
#
# Search Gifs API
#
# @param string $query The search query. (required)
# @param int $number The number of gifs to return in range [1,10] (optional)
{
    my $params = {
    'query' => {
        data_type => 'string',
        description => 'The search query.',
        required => '1',
    },
    'number' => {
        data_type => 'int',
        description => 'The number of gifs to return in range [1,10]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_gifs_api' } = {
        summary => 'Search Gifs API',
        params => $params,
        returns => 'SearchGifsAPI200Response',
        };
}
# @return SearchGifsAPI200Response
#
sub search_gifs_api {
    my ($self, %args) = @_;

    # verify the required parameter 'query' is set
    unless (exists $args{'query'}) {
      croak("Missing the required parameter 'query' when calling search_gifs_api");
    }

    # parse inputs
    my $_resource_path = '/search-gifs';

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
    if ( exists $args{'query'}) {
        $query_params->{'query'} = $self->{api_client}->to_query_value($args{'query'});
    }

    # query params
    if ( exists $args{'number'}) {
        $query_params->{'number'} = $self->{api_client}->to_query_value($args{'number'});
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
    my $_response_object = $self->{api_client}->deserialize('SearchGifsAPI200Response', $response);
    return $_response_object;
}

#
# search_jokes_api
#
# Search Jokes API
#
# @param string $keywords A comma-separated list of words that must occur in the joke. (optional)
# @param string $include_tags A comma-separated list of tags the jokes should have. (optional)
# @param string $exclude_tags A comma-separated list of tags the jokes must not have. (optional)
# @param double $min_rating The minimum rating in range [0.0,1.0] of the jokes. (optional)
# @param double $max_length The maximum length of the joke in letters. (optional)
# @param int $offset The number of jokes to skip, between 0 and 1000. (optional)
# @param int $number The number of jokes, between 1 and 10. (optional)
{
    my $params = {
    'keywords' => {
        data_type => 'string',
        description => 'A comma-separated list of words that must occur in the joke.',
        required => '0',
    },
    'include_tags' => {
        data_type => 'string',
        description => 'A comma-separated list of tags the jokes should have.',
        required => '0',
    },
    'exclude_tags' => {
        data_type => 'string',
        description => 'A comma-separated list of tags the jokes must not have.',
        required => '0',
    },
    'min_rating' => {
        data_type => 'double',
        description => 'The minimum rating in range [0.0,1.0] of the jokes.',
        required => '0',
    },
    'max_length' => {
        data_type => 'double',
        description => 'The maximum length of the joke in letters.',
        required => '0',
    },
    'offset' => {
        data_type => 'int',
        description => 'The number of jokes to skip, between 0 and 1000.',
        required => '0',
    },
    'number' => {
        data_type => 'int',
        description => 'The number of jokes, between 1 and 10.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_jokes_api' } = {
        summary => 'Search Jokes API',
        params => $params,
        returns => 'SearchJokesAPI200Response',
        };
}
# @return SearchJokesAPI200Response
#
sub search_jokes_api {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/search-jokes';

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
    if ( exists $args{'keywords'}) {
        $query_params->{'keywords'} = $self->{api_client}->to_query_value($args{'keywords'});
    }

    # query params
    if ( exists $args{'include_tags'}) {
        $query_params->{'include-tags'} = $self->{api_client}->to_query_value($args{'include_tags'});
    }

    # query params
    if ( exists $args{'exclude_tags'}) {
        $query_params->{'exclude-tags'} = $self->{api_client}->to_query_value($args{'exclude_tags'});
    }

    # query params
    if ( exists $args{'min_rating'}) {
        $query_params->{'min-rating'} = $self->{api_client}->to_query_value($args{'min_rating'});
    }

    # query params
    if ( exists $args{'max_length'}) {
        $query_params->{'max-length'} = $self->{api_client}->to_query_value($args{'max_length'});
    }

    # query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }

    # query params
    if ( exists $args{'number'}) {
        $query_params->{'number'} = $self->{api_client}->to_query_value($args{'number'});
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
    my $_response_object = $self->{api_client}->deserialize('SearchJokesAPI200Response', $response);
    return $_response_object;
}

#
# search_memes_api
#
# Search Memes API
#
# @param string $keywords A comma-separated list of words that must occur in the meme. (optional)
# @param boolean $keywords_in_image Whether the keywords must occur in the image. (optional)
# @param string $media_type The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). (optional)
# @param double $min_rating The minimum rating in range [0.0,1.0] of the meme. (optional)
# @param int $max_age_days The maximum age of the meme in days. (optional)
# @param int $offset The number of memes to skip, between 0 and 1000. (optional)
# @param int $number The number of memes, between 1 and 10. (optional)
{
    my $params = {
    'keywords' => {
        data_type => 'string',
        description => 'A comma-separated list of words that must occur in the meme.',
        required => '0',
    },
    'keywords_in_image' => {
        data_type => 'boolean',
        description => 'Whether the keywords must occur in the image.',
        required => '0',
    },
    'media_type' => {
        data_type => 'string',
        description => 'The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).',
        required => '0',
    },
    'min_rating' => {
        data_type => 'double',
        description => 'The minimum rating in range [0.0,1.0] of the meme.',
        required => '0',
    },
    'max_age_days' => {
        data_type => 'int',
        description => 'The maximum age of the meme in days.',
        required => '0',
    },
    'offset' => {
        data_type => 'int',
        description => 'The number of memes to skip, between 0 and 1000.',
        required => '0',
    },
    'number' => {
        data_type => 'int',
        description => 'The number of memes, between 1 and 10.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_memes_api' } = {
        summary => 'Search Memes API',
        params => $params,
        returns => 'SearchMemesAPI200Response',
        };
}
# @return SearchMemesAPI200Response
#
sub search_memes_api {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/search-memes';

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
    if ( exists $args{'keywords'}) {
        $query_params->{'keywords'} = $self->{api_client}->to_query_value($args{'keywords'});
    }

    # query params
    if ( exists $args{'keywords_in_image'}) {
        $query_params->{'keywords-in-image'} = $self->{api_client}->to_query_value($args{'keywords_in_image'});
    }

    # query params
    if ( exists $args{'media_type'}) {
        $query_params->{'media-type'} = $self->{api_client}->to_query_value($args{'media_type'});
    }

    # query params
    if ( exists $args{'min_rating'}) {
        $query_params->{'min-rating'} = $self->{api_client}->to_query_value($args{'min_rating'});
    }

    # query params
    if ( exists $args{'max_age_days'}) {
        $query_params->{'max-age-days'} = $self->{api_client}->to_query_value($args{'max_age_days'});
    }

    # query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }

    # query params
    if ( exists $args{'number'}) {
        $query_params->{'number'} = $self->{api_client}->to_query_value($args{'number'});
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
    my $_response_object = $self->{api_client}->deserialize('SearchMemesAPI200Response', $response);
    return $_response_object;
}

1;
