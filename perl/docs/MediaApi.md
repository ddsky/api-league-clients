# WWW::OpenAPIClient::MediaApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MediaApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detect_main_image_color**](MediaApi.md#detect_main_image_color) | **GET** /detect-color | Detect Main Image Color
[**rescale_image**](MediaApi.md#rescale_image) | **GET** /rescale-image | Rescale Image
[**search_icons**](MediaApi.md#search_icons) | **GET** /search-icons | Search Icons
[**search_royalty_free_images**](MediaApi.md#search_royalty_free_images) | **GET** /search-images | Search Royalty Free Images


# **detect_main_image_color**
> ARRAY[DetectMainImageColor200ResponseInner] detect_main_image_color(url => $url)

Detect Main Image Color

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
    my $result = $api_instance->detect_main_image_color(url => $url);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->detect_main_image_color: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string**| The url of the image for which the colors should be detected. | 

### Return type

[**ARRAY[DetectMainImageColor200ResponseInner]**](DetectMainImageColor200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rescale_image**
> string rescale_image(url => $url, width => $width, height => $height, crop => $crop)

Rescale Image

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
    my $result = $api_instance->rescale_image(url => $url, width => $width, height => $height, crop => $crop);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->rescale_image: $@\n";
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

# **search_icons**
> SearchIcons200Response search_icons(query => $query, only_public_domain => $only_public_domain, number => $number)

Search Icons

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
    my $result = $api_instance->search_icons(query => $query, only_public_domain => $only_public_domain, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->search_icons: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **only_public_domain** | **boolean**| If true, only public domain icons will be returned. | [optional] 
 **number** | **int**| The number of icons to return in range [1,100] | [optional] 

### Return type

[**SearchIcons200Response**](SearchIcons200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_royalty_free_images**
> SearchRoyaltyFreeImages200Response search_royalty_free_images(query => $query, number => $number)

Search Royalty Free Images

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
    my $result = $api_instance->search_royalty_free_images(query => $query, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MediaApi->search_royalty_free_images: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | 
 **number** | **int**| The number of images to return in range [1,100] | [optional] 

### Return type

[**SearchRoyaltyFreeImages200Response**](SearchRoyaltyFreeImages200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

