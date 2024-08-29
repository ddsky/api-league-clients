=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.6.2
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::MediaApi;

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
# detect_main_image_color
#
# Detect Main Image Color
#
# @param string $url The url of the image for which the colors should be detected. (required)
{
    my $params = {
    'url' => {
        data_type => 'string',
        description => 'The url of the image for which the colors should be detected.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'detect_main_image_color' } = {
        summary => 'Detect Main Image Color',
        params => $params,
        returns => 'ARRAY[DetectMainImageColor200ResponseInner]',
        };
}
# @return ARRAY[DetectMainImageColor200ResponseInner]
#
sub detect_main_image_color {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling detect_main_image_color");
    }

    # parse inputs
    my $_resource_path = '/detect-color';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[DetectMainImageColor200ResponseInner]', $response);
    return $_response_object;
}

#
# rescale_image
#
# Rescale Image
#
# @param string $url The url of the image to be rescaled. (required)
# @param int $width The desired width of the rescaled image. (required)
# @param int $height The desired height of the rescaled image. (required)
# @param boolean $crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. (required)
{
    my $params = {
    'url' => {
        data_type => 'string',
        description => 'The url of the image to be rescaled.',
        required => '1',
    },
    'width' => {
        data_type => 'int',
        description => 'The desired width of the rescaled image.',
        required => '1',
    },
    'height' => {
        data_type => 'int',
        description => 'The desired height of the rescaled image.',
        required => '1',
    },
    'crop' => {
        data_type => 'boolean',
        description => 'Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'rescale_image' } = {
        summary => 'Rescale Image',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub rescale_image {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling rescale_image");
    }

    # verify the required parameter 'width' is set
    unless (exists $args{'width'}) {
      croak("Missing the required parameter 'width' when calling rescale_image");
    }

    # verify the required parameter 'height' is set
    unless (exists $args{'height'}) {
      croak("Missing the required parameter 'height' when calling rescale_image");
    }

    # verify the required parameter 'crop' is set
    unless (exists $args{'crop'}) {
      croak("Missing the required parameter 'crop' when calling rescale_image");
    }

    # parse inputs
    my $_resource_path = '/rescale-image';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/octet-stream');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'url'}) {
        $query_params->{'url'} = $self->{api_client}->to_query_value($args{'url'});
    }

    # query params
    if ( exists $args{'width'}) {
        $query_params->{'width'} = $self->{api_client}->to_query_value($args{'width'});
    }

    # query params
    if ( exists $args{'height'}) {
        $query_params->{'height'} = $self->{api_client}->to_query_value($args{'height'});
    }

    # query params
    if ( exists $args{'crop'}) {
        $query_params->{'crop'} = $self->{api_client}->to_query_value($args{'crop'});
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# search_icons
#
# Search Icons
#
# @param string $query The search query. (required)
# @param boolean $only_public_domain If true, only public domain icons will be returned. (optional)
# @param int $number The number of icons to return in range [1,100] (optional)
{
    my $params = {
    'query' => {
        data_type => 'string',
        description => 'The search query.',
        required => '1',
    },
    'only_public_domain' => {
        data_type => 'boolean',
        description => 'If true, only public domain icons will be returned.',
        required => '0',
    },
    'number' => {
        data_type => 'int',
        description => 'The number of icons to return in range [1,100]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_icons' } = {
        summary => 'Search Icons',
        params => $params,
        returns => 'SearchIcons200Response',
        };
}
# @return SearchIcons200Response
#
sub search_icons {
    my ($self, %args) = @_;

    # verify the required parameter 'query' is set
    unless (exists $args{'query'}) {
      croak("Missing the required parameter 'query' when calling search_icons");
    }

    # parse inputs
    my $_resource_path = '/search-icons';

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
    if ( exists $args{'only_public_domain'}) {
        $query_params->{'only-public-domain'} = $self->{api_client}->to_query_value($args{'only_public_domain'});
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
    my $_response_object = $self->{api_client}->deserialize('SearchIcons200Response', $response);
    return $_response_object;
}

#
# search_royalty_free_images
#
# Search Royalty Free Images
#
# @param string $query The search query. (required)
# @param int $number The number of images to return in range [1,100] (optional)
{
    my $params = {
    'query' => {
        data_type => 'string',
        description => 'The search query.',
        required => '1',
    },
    'number' => {
        data_type => 'int',
        description => 'The number of images to return in range [1,100]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_royalty_free_images' } = {
        summary => 'Search Royalty Free Images',
        params => $params,
        returns => 'SearchRoyaltyFreeImages200Response',
        };
}
# @return SearchRoyaltyFreeImages200Response
#
sub search_royalty_free_images {
    my ($self, %args) = @_;

    # verify the required parameter 'query' is set
    unless (exists $args{'query'}) {
      croak("Missing the required parameter 'query' when calling search_royalty_free_images");
    }

    # parse inputs
    my $_resource_path = '/search-images';

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
    my $_response_object = $self->{api_client}->deserialize('SearchRoyaltyFreeImages200Response', $response);
    return $_response_object;
}

1;
