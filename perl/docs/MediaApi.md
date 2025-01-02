# WWW::OpenAPIClient::MediaApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MediaApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detect_main_image_color_api**](MediaApi.md#detect_main_image_color_api) | **GET** /detect-color | Detect Main Image Color API
[**rescale_image_api**](MediaApi.md#rescale_image_api) | **GET** /rescale-image | Rescale Image API
[**search_icons_api**](MediaApi.md#search_icons_api) | **GET** /search-icons | Search Icons API
[**search_royalty_free_images_api**](MediaApi.md#search_royalty_free_images_api) | **GET** /search-images | Search Royalty Free Images API
[**vector_search_api**](MediaApi.md#vector_search_api) | **GET** /search-vectors | Vector Search API


# **detect_main_image_color_api**
> ARRAY[DetectMainImageColorAPI200ResponseInner] detect_main_image_color_api(url => $url)

Detect Main Image Color API

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MediaApi;
my $api_instance = WWW::OpenAPIClient::MediaApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; # string | The url of the image for which the colors should be detected.

eval {
    my $result = $api_instance->detect_main_image_color_api(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->detect_main_image_color_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the image for which the colors should be detected. | 

### Return type

[**ARRAY[DetectMainImageColorAPI200ResponseInner]**](DetectMainImageColorAPI200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rescale_image_api**
> string rescale_image_api(url => $url, width => $width, height => $height, crop => $crop)

Rescale Image API

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MediaApi;
my $api_instance = WWW::OpenAPIClient::MediaApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $url = https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ; # string | The url of the image to be rescaled.
my $width = 200; # int | The desired width of the rescaled image.
my $height = 200; # int | The desired height of the rescaled image.
my $crop = true; # boolean | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

eval {
    my $result = $api_instance->rescale_image_api(url => $url, width => $width, height => $height, crop => $crop);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->rescale_image_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the image to be rescaled. | 
 **width** | **int**| The desired width of the rescaled image. | 
 **height** | **int**| The desired height of the rescaled image. | 
 **crop** | **boolean**| Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. | 

### Return type

**string**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_icons_api**
> SearchIconsAPI200Response search_icons_api(query => $query, only_public_domain => $only_public_domain, number => $number)

Search Icons API

Search through millions of icons to match any topic you want.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MediaApi;
my $api_instance = WWW::OpenAPIClient::MediaApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = cars; # string | The search query.
my $only_public_domain = true; # boolean | If true, only public domain icons will be returned.
my $number = 3; # int | The number of icons to return in range [1,100]

eval {
    my $result = $api_instance->search_icons_api(query => $query, only_public_domain => $only_public_domain, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->search_icons_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **only_public_domain** | **boolean**| If true, only public domain icons will be returned. | [optional] 
 **number** | **int**| The number of icons to return in range [1,100] | [optional] 

### Return type

[**SearchIconsAPI200Response**](SearchIconsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_royalty_free_images_api**
> SearchRoyaltyFreeImagesAPI200Response search_royalty_free_images_api(query => $query, number => $number)

Search Royalty Free Images API

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MediaApi;
my $api_instance = WWW::OpenAPIClient::MediaApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = dogs; # string | The search query.
my $number = 3; # int | The number of images to return in range [1,100]

eval {
    my $result = $api_instance->search_royalty_free_images_api(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->search_royalty_free_images_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **number** | **int**| The number of images to return in range [1,100] | [optional] 

### Return type

[**SearchRoyaltyFreeImagesAPI200Response**](SearchRoyaltyFreeImagesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vector_search_api**
> VectorSearchAPI200Response vector_search_api(query => $query, offset => $offset, number => $number)

Vector Search API

Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MediaApi;
my $api_instance = WWW::OpenAPIClient::MediaApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = airplanes; # string | The search query.
my $offset = 0; # int | The number of vectors to skip, between 0 and 1000
my $number = 3; # int | The number of vectors to return in range [1,10]

eval {
    my $result = $api_instance->vector_search_api(query => $query, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->vector_search_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **offset** | **int**| The number of vectors to skip, between 0 and 1000 | [optional] 
 **number** | **int**| The number of vectors to return in range [1,10] | [optional] 

### Return type

[**VectorSearchAPI200Response**](VectorSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

