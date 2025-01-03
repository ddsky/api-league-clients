# WWW::OpenAPIClient::ArtApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ArtApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**image_to_ascii_art_by_urlapi**](ArtApi.md#image_to_ascii_art_by_urlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**random_poem_api**](ArtApi.md#random_poem_api) | **GET** /retrieve-random-poem | Random Poem API


# **image_to_ascii_art_by_urlapi**
> string image_to_ascii_art_by_urlapi(url => $url, width => $width, height => $height)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ArtApi;
my $api_instance = WWW::OpenAPIClient::ArtApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; # string | The URL to the image.
my $width = 200; # int | The maximum width of the image (default 400, max. 500).
my $height = 200; # int | The maximum height of the image (default 400, max. 500).

eval {
    my $result = $api_instance->image_to_ascii_art_by_urlapi(url => $url, width => $width, height => $height);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ArtApi->image_to_ascii_art_by_urlapi: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The URL to the image. | 
 **width** | **int**| The maximum width of the image (default 400, max. 500). | [optional] 
 **height** | **int**| The maximum height of the image (default 400, max. 500). | [optional] 

### Return type

**string**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_poem_api**
> RandomPoemAPI200Response random_poem_api(min_lines => $min_lines, max_lines => $max_lines)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ArtApi;
my $api_instance = WWW::OpenAPIClient::ArtApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $min_lines = 5; # int | The minimum number of lines of the poem.
my $max_lines = 20; # int | The maximum number of lines of the poem.

eval {
    my $result = $api_instance->random_poem_api(min_lines => $min_lines, max_lines => $max_lines);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ArtApi->random_poem_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_lines** | **int**| The minimum number of lines of the poem. | [optional] 
 **max_lines** | **int**| The maximum number of lines of the poem. | [optional] 

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

