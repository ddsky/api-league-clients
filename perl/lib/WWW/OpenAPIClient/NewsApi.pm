=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::NewsApi;

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
# extract_news
#
# Extract News
#
# @param string $url The url of the news. (required)
# @param boolean $analyze Whether to analyze the news (extract entities etc.) (required)
{
    my $params = {
    'url' => {
        data_type => 'string',
        description => 'The url of the news.',
        required => '1',
    },
    'analyze' => {
        data_type => 'boolean',
        description => 'Whether to analyze the news (extract entities etc.)',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'extract_news' } = {
        summary => 'Extract News',
        params => $params,
        returns => 'ExtractNews200Response',
        };
}
# @return ExtractNews200Response
#
sub extract_news {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling extract_news");
    }

    # verify the required parameter 'analyze' is set
    unless (exists $args{'analyze'}) {
      croak("Missing the required parameter 'analyze' when calling extract_news");
    }

    # parse inputs
    my $_resource_path = '/extract-news';

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
    if ( exists $args{'url'}) {
        $query_params->{'url'} = $self->{api_client}->to_query_value($args{'url'});
    }

    # query params
    if ( exists $args{'analyze'}) {
        $query_params->{'analyze'} = $self->{api_client}->to_query_value($args{'analyze'});
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
    my $_response_object = $self->{api_client}->deserialize('ExtractNews200Response', $response);
    return $_response_object;
}

#
# search_news
#
# Search News
#
# @param string $text The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford (optional)
# @param string $source_countries A comma-separated list of ISO 3166 country codes from which the news should originate. (optional)
# @param string $language The ISO 6391 language code of the news. (optional)
# @param double $min_sentiment The minimal sentiment of the news in range [-1,1]. (optional)
# @param double $max_sentiment The maximal sentiment of the news in range [-1,1]. (optional)
# @param string $earliest_publish_date The news must have been published after this date. (optional)
# @param string $latest_publish_date The news must have been published before this date. (optional)
# @param string $news_sources A comma-separated list of news sources from which the news should originate. (optional)
# @param string $authors A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
# @param string $entities Filter news by entities (ORG, PER, or LOC). (optional)
# @param string $location_filter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; (optional)
# @param string $sort The sorting criteria (publish-time or sentiment). (optional)
# @param string $sort_direction Whether to sort ascending or descending (ASC or DESC). (optional)
# @param int $offset The number of news to skip in range [0,10000] (optional)
# @param int $number The number of news to return in range [1,100] (optional)
{
    my $params = {
    'text' => {
        data_type => 'string',
        description => 'The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford',
        required => '0',
    },
    'source_countries' => {
        data_type => 'string',
        description => 'A comma-separated list of ISO 3166 country codes from which the news should originate.',
        required => '0',
    },
    'language' => {
        data_type => 'string',
        description => 'The ISO 6391 language code of the news.',
        required => '0',
    },
    'min_sentiment' => {
        data_type => 'double',
        description => 'The minimal sentiment of the news in range [-1,1].',
        required => '0',
    },
    'max_sentiment' => {
        data_type => 'double',
        description => 'The maximal sentiment of the news in range [-1,1].',
        required => '0',
    },
    'earliest_publish_date' => {
        data_type => 'string',
        description => 'The news must have been published after this date.',
        required => '0',
    },
    'latest_publish_date' => {
        data_type => 'string',
        description => 'The news must have been published before this date.',
        required => '0',
    },
    'news_sources' => {
        data_type => 'string',
        description => 'A comma-separated list of news sources from which the news should originate.',
        required => '0',
    },
    'authors' => {
        data_type => 'string',
        description => 'A comma-separated list of author names. Only news from any of the given authors will be returned.',
        required => '0',
    },
    'entities' => {
        data_type => 'string',
        description => 'Filter news by entities (ORG, PER, or LOC).',
        required => '0',
    },
    'location_filter' => {
        data_type => 'string',
        description => 'Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'The sorting criteria (publish-time or sentiment).',
        required => '0',
    },
    'sort_direction' => {
        data_type => 'string',
        description => 'Whether to sort ascending or descending (ASC or DESC).',
        required => '0',
    },
    'offset' => {
        data_type => 'int',
        description => 'The number of news to skip in range [0,10000]',
        required => '0',
    },
    'number' => {
        data_type => 'int',
        description => 'The number of news to return in range [1,100]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_news' } = {
        summary => 'Search News',
        params => $params,
        returns => 'SearchNews200Response',
        };
}
# @return SearchNews200Response
#
sub search_news {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/search-news';

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
    if ( exists $args{'source_countries'}) {
        $query_params->{'source-countries'} = $self->{api_client}->to_query_value($args{'source_countries'});
    }

    # query params
    if ( exists $args{'language'}) {
        $query_params->{'language'} = $self->{api_client}->to_query_value($args{'language'});
    }

    # query params
    if ( exists $args{'min_sentiment'}) {
        $query_params->{'min-sentiment'} = $self->{api_client}->to_query_value($args{'min_sentiment'});
    }

    # query params
    if ( exists $args{'max_sentiment'}) {
        $query_params->{'max-sentiment'} = $self->{api_client}->to_query_value($args{'max_sentiment'});
    }

    # query params
    if ( exists $args{'earliest_publish_date'}) {
        $query_params->{'earliest-publish-date'} = $self->{api_client}->to_query_value($args{'earliest_publish_date'});
    }

    # query params
    if ( exists $args{'latest_publish_date'}) {
        $query_params->{'latest-publish-date'} = $self->{api_client}->to_query_value($args{'latest_publish_date'});
    }

    # query params
    if ( exists $args{'news_sources'}) {
        $query_params->{'news-sources'} = $self->{api_client}->to_query_value($args{'news_sources'});
    }

    # query params
    if ( exists $args{'authors'}) {
        $query_params->{'authors'} = $self->{api_client}->to_query_value($args{'authors'});
    }

    # query params
    if ( exists $args{'entities'}) {
        $query_params->{'entities'} = $self->{api_client}->to_query_value($args{'entities'});
    }

    # query params
    if ( exists $args{'location_filter'}) {
        $query_params->{'location-filter'} = $self->{api_client}->to_query_value($args{'location_filter'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'sort_direction'}) {
        $query_params->{'sort-direction'} = $self->{api_client}->to_query_value($args{'sort_direction'});
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
    my $_response_object = $self->{api_client}->deserialize('SearchNews200Response', $response);
    return $_response_object;
}

1;
