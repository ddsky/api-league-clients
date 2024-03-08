# OpenapiClient::MediaApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**detect_main_image_color**](MediaApi.md#detect_main_image_color) | **GET** /detect-color | Detect Main Image Color |
| [**rescale_image**](MediaApi.md#rescale_image) | **GET** /rescale-image | Rescale Image |
| [**search_royalty_free_images**](MediaApi.md#search_royalty_free_images) | **GET** /search-images | Search Royalty Free Images |


## detect_main_image_color

> <Array<DetectMainImageColor200ResponseInner>> detect_main_image_color(url)

Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MediaApi.new
url = 'https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ' # String | The url of the image for which the colors should be detected.

begin
  # Detect Main Image Color
  result = api_instance.detect_main_image_color(url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->detect_main_image_color: #{e}"
end
```

#### Using the detect_main_image_color_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DetectMainImageColor200ResponseInner>>, Integer, Hash)> detect_main_image_color_with_http_info(url)

```ruby
begin
  # Detect Main Image Color
  data, status_code, headers = api_instance.detect_main_image_color_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DetectMainImageColor200ResponseInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->detect_main_image_color_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url of the image for which the colors should be detected. |  |

### Return type

[**Array&lt;DetectMainImageColor200ResponseInner&gt;**](DetectMainImageColor200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rescale_image

> Object rescale_image(url, width, height, crop)

Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MediaApi.new
url = 'https://fastly.picsum.photos/id/63/5000/2813.jpg?hmac=HvaeSK6WT-G9bYF_CyB2m1ARQirL8UMnygdU9W6PDvM ' # String | The url of the image to be rescaled.
width = 200 # Integer | The desired width of the rescaled image.
height = 200 # Integer | The desired height of the rescaled image.
crop = true # Boolean | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.

begin
  # Rescale Image
  result = api_instance.rescale_image(url, width, height, crop)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->rescale_image: #{e}"
end
```

#### Using the rescale_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rescale_image_with_http_info(url, width, height, crop)

```ruby
begin
  # Rescale Image
  data, status_code, headers = api_instance.rescale_image_with_http_info(url, width, height, crop)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->rescale_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url of the image to be rescaled. |  |
| **width** | **Integer** | The desired width of the rescaled image. |  |
| **height** | **Integer** | The desired height of the rescaled image. |  |
| **crop** | **Boolean** | Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though. |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## search_royalty_free_images

> <SearchRoyaltyFreeImages200Response> search_royalty_free_images(query, opts)

Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MediaApi.new
query = 'dogs' # String | The search query.
opts = {
  number: 3 # Integer | The number of images to return in range [1,10]
}

begin
  # Search Royalty Free Images
  result = api_instance.search_royalty_free_images(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->search_royalty_free_images: #{e}"
end
```

#### Using the search_royalty_free_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchRoyaltyFreeImages200Response>, Integer, Hash)> search_royalty_free_images_with_http_info(query, opts)

```ruby
begin
  # Search Royalty Free Images
  data, status_code, headers = api_instance.search_royalty_free_images_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchRoyaltyFreeImages200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->search_royalty_free_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **number** | **Integer** | The number of images to return in range [1,10] | [optional] |

### Return type

[**SearchRoyaltyFreeImages200Response**](SearchRoyaltyFreeImages200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

