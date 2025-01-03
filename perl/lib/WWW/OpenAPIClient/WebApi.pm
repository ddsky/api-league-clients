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
package WWW::OpenAPIClient::WebApi;

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
# extract_authors_api
#
# Extract Authors API
#
# @param string $url The url with the article from which authors should be extracted. (required)
{
    my $params = {
    'url' => {
        data_type => 'string',
        description => 'The url with the article from which authors should be extracted.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'extract_authors_api' } = {
        summary => 'Extract Authors API',
        params => $params,
        returns => 'ExtractAuthorsAPI200Response',
        };
}
# @return ExtractAuthorsAPI200Response
#
sub extract_authors_api {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling extract_authors_api");
    }

    # parse inputs
    my $_resource_path = '/extract-authors';

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
    my $_response_object = $self->{api_client}->deserialize('ExtractAuthorsAPI200Response', $response);
    return $_response_object;
}

#
# extract_content_from_a_web_page_api
#
# Extract Content from a Web Page API
#
# @param string $url The url for which the content will be extracted. (required)
{
    my $params = {
    'url' => {
        data_type => 'string',
        description => 'The url for which the content will be extracted.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'extract_content_from_a_web_page_api' } = {
        summary => 'Extract Content from a Web Page API',
        params => $params,
        returns => 'ExtractContentFromAWebPageAPI200Response',
        };
}
# @return ExtractContentFromAWebPageAPI200Response
#
sub extract_content_from_a_web_page_api {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling extract_content_from_a_web_page_api");
    }

    # parse inputs
    my $_resource_path = '/extract-content';

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
    my $_response_object = $self->{api_client}->deserialize('ExtractContentFromAWebPageAPI200Response', $response);
    return $_response_object;
}

#
# extract_publish_date_api
#
# Extract Publish Date API
#
# @param string $url The url for which the publish date should be extracted. (required)
{
    my $params = {
    'url' => {
        data_type => 'string',
        description => 'The url for which the publish date should be extracted.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'extract_publish_date_api' } = {
        summary => 'Extract Publish Date API',
        params => $params,
        returns => 'ExtractPublishDateAPI200Response',
        };
}
# @return ExtractPublishDateAPI200Response
#
sub extract_publish_date_api {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling extract_publish_date_api");
    }

    # parse inputs
    my $_resource_path = '/extract-publish-date';

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
    my $_response_object = $self->{api_client}->deserialize('ExtractPublishDateAPI200Response', $response);
    return $_response_object;
}

#
# retrieve_page_rank_api
#
# Retrieve Page Rank API
#
# @param string $domain The domain for which the page rank should be returned. (required)
{
    my $params = {
    'domain' => {
        data_type => 'string',
        description => 'The domain for which the page rank should be returned.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'retrieve_page_rank_api' } = {
        summary => 'Retrieve Page Rank API',
        params => $params,
        returns => 'RetrievePageRankAPI200Response',
        };
}
# @return RetrievePageRankAPI200Response
#
sub retrieve_page_rank_api {
    my ($self, %args) = @_;

    # verify the required parameter 'domain' is set
    unless (exists $args{'domain'}) {
      croak("Missing the required parameter 'domain' when calling retrieve_page_rank_api");
    }

    # parse inputs
    my $_resource_path = '/retrieve-page-rank';

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
    if ( exists $args{'domain'}) {
        $query_params->{'domain'} = $self->{api_client}->to_query_value($args{'domain'});
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
    my $_response_object = $self->{api_client}->deserialize('RetrievePageRankAPI200Response', $response);
    return $_response_object;
}

#
# search_web_api
#
# Search Web API
#
# @param string $query The search query. (required)
# @param int $number The number of results to return in range [1,50] (optional)
{
    my $params = {
    'query' => {
        data_type => 'string',
        description => 'The search query.',
        required => '1',
    },
    'number' => {
        data_type => 'int',
        description => 'The number of results to return in range [1,50]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_web_api' } = {
        summary => 'Search Web API',
        params => $params,
        returns => 'SearchWebAPI200Response',
        };
}
# @return SearchWebAPI200Response
#
sub search_web_api {
    my ($self, %args) = @_;

    # verify the required parameter 'query' is set
    unless (exists $args{'query'}) {
      croak("Missing the required parameter 'query' when calling search_web_api");
    }

    # parse inputs
    my $_resource_path = '/search-web';

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
    my $_response_object = $self->{api_client}->deserialize('SearchWebAPI200Response', $response);
    return $_response_object;
}

#
# verify_email_address_api
#
# Verify Email Address API
#
# @param string $email The email address to verify. (required)
{
    my $params = {
    'email' => {
        data_type => 'string',
        description => 'The email address to verify.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'verify_email_address_api' } = {
        summary => 'Verify Email Address API',
        params => $params,
        returns => 'VerifyEmailAddressAPI200Response',
        };
}
# @return VerifyEmailAddressAPI200Response
#
sub verify_email_address_api {
    my ($self, %args) = @_;

    # verify the required parameter 'email' is set
    unless (exists $args{'email'}) {
      croak("Missing the required parameter 'email' when calling verify_email_address_api");
    }

    # parse inputs
    my $_resource_path = '/verify-email';

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
    if ( exists $args{'email'}) {
        $query_params->{'email'} = $self->{api_client}->to_query_value($args{'email'});
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
    my $_response_object = $self->{api_client}->deserialize('VerifyEmailAddressAPI200Response', $response);
    return $_response_object;
}

1;
