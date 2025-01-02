# OpenapiClient::MediaApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**detect_main_image_color_api**](MediaApi.md#detect_main_image_color_api) | **GET** /detect-color | Detect Main Image Color API |
| [**rescale_image_api**](MediaApi.md#rescale_image_api) | **GET** /rescale-image | Rescale Image API |
| [**search_icons_api**](MediaApi.md#search_icons_api) | **GET** /search-icons | Search Icons API |
| [**search_royalty_free_images_api**](MediaApi.md#search_royalty_free_images_api) | **GET** /search-images | Search Royalty Free Images API |
| [**vector_search_api**](MediaApi.md#vector_search_api) | **GET** /search-vectors | Vector Search API |


## detect_main_image_color_api

> <Array<DetectMainImageColorAPI200ResponseInner>> detect_main_image_color_api(url)

Detect Main Image Color API

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
  # Detect Main Image Color API
  result = api_instance.detect_main_image_color_api(url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->detect_main_image_color_api: #{e}"
end
```

#### Using the detect_main_image_color_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DetectMainImageColorAPI200ResponseInner>>, Integer, Hash)> detect_main_image_color_api_with_http_info(url)

```ruby
begin
  # Detect Main Image Color API
  data, status_code, headers = api_instance.detect_main_image_color_api_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DetectMainImageColorAPI200ResponseInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->detect_main_image_color_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The url of the image for which the colors should be detected. |  |

### Return type

[**Array&lt;DetectMainImageColorAPI200ResponseInner&gt;**](DetectMainImageColorAPI200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rescale_image_api

> File rescale_image_api(url, width, height, crop)

Rescale Image API

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
  # Rescale Image API
  result = api_instance.rescale_image_api(url, width, height, crop)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->rescale_image_api: #{e}"
end
```

#### Using the rescale_image_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> rescale_image_api_with_http_info(url, width, height, crop)

```ruby
begin
  # Rescale Image API
  data, status_code, headers = api_instance.rescale_image_api_with_http_info(url, width, height, crop)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->rescale_image_api_with_http_info: #{e}"
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

**File**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## search_icons_api

> <SearchIconsAPI200Response> search_icons_api(query, opts)

Search Icons API

Search through millions of icons to match any topic you want.

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
query = 'cars' # String | The search query.
opts = {
  only_public_domain: true, # Boolean | If true, only public domain icons will be returned.
  number: 3 # Integer | The number of icons to return in range [1,100]
}

begin
  # Search Icons API
  result = api_instance.search_icons_api(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->search_icons_api: #{e}"
end
```

#### Using the search_icons_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchIconsAPI200Response>, Integer, Hash)> search_icons_api_with_http_info(query, opts)

```ruby
begin
  # Search Icons API
  data, status_code, headers = api_instance.search_icons_api_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchIconsAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->search_icons_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **only_public_domain** | **Boolean** | If true, only public domain icons will be returned. | [optional] |
| **number** | **Integer** | The number of icons to return in range [1,100] | [optional] |

### Return type

[**SearchIconsAPI200Response**](SearchIconsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_royalty_free_images_api

> <SearchRoyaltyFreeImagesAPI200Response> search_royalty_free_images_api(query, opts)

Search Royalty Free Images API

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
  number: 3 # Integer | The number of images to return in range [1,100]
}

begin
  # Search Royalty Free Images API
  result = api_instance.search_royalty_free_images_api(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->search_royalty_free_images_api: #{e}"
end
```

#### Using the search_royalty_free_images_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchRoyaltyFreeImagesAPI200Response>, Integer, Hash)> search_royalty_free_images_api_with_http_info(query, opts)

```ruby
begin
  # Search Royalty Free Images API
  data, status_code, headers = api_instance.search_royalty_free_images_api_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchRoyaltyFreeImagesAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->search_royalty_free_images_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **number** | **Integer** | The number of images to return in range [1,100] | [optional] |

### Return type

[**SearchRoyaltyFreeImagesAPI200Response**](SearchRoyaltyFreeImagesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vector_search_api

> <VectorSearchAPI200Response> vector_search_api(query, opts)

Vector Search API

Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.

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
query = 'airplanes' # String | The search query.
opts = {
  offset: 0, # Integer | The number of vectors to skip, between 0 and 1000
  number: 3 # Integer | The number of vectors to return in range [1,10]
}

begin
  # Vector Search API
  result = api_instance.vector_search_api(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->vector_search_api: #{e}"
end
```

#### Using the vector_search_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VectorSearchAPI200Response>, Integer, Hash)> vector_search_api_with_http_info(query, opts)

```ruby
begin
  # Vector Search API
  data, status_code, headers = api_instance.vector_search_api_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VectorSearchAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MediaApi->vector_search_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **offset** | **Integer** | The number of vectors to skip, between 0 and 1000 | [optional] |
| **number** | **Integer** | The number of vectors to return in range [1,10] | [optional] |

### Return type

[**VectorSearchAPI200Response**](VectorSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

