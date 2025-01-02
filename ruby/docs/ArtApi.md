# OpenapiClient::ArtApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**image_to_ascii_art_by_urlapi**](ArtApi.md#image_to_ascii_art_by_urlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API |
| [**random_poem_api**](ArtApi.md#random_poem_api) | **GET** /retrieve-random-poem | Random Poem API |


## image_to_ascii_art_by_urlapi

> String image_to_ascii_art_by_urlapi(url, opts)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

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

api_instance = OpenapiClient::ArtApi.new
url = 'https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png' # String | The URL to the image.
opts = {
  width: 200, # Integer | The maximum width of the image (default 400, max. 500).
  height: 200 # Integer | The maximum height of the image (default 400, max. 500).
}

begin
  # Image to Ascii Art by URL API
  result = api_instance.image_to_ascii_art_by_urlapi(url, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->image_to_ascii_art_by_urlapi: #{e}"
end
```

#### Using the image_to_ascii_art_by_urlapi_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> image_to_ascii_art_by_urlapi_with_http_info(url, opts)

```ruby
begin
  # Image to Ascii Art by URL API
  data, status_code, headers = api_instance.image_to_ascii_art_by_urlapi_with_http_info(url, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->image_to_ascii_art_by_urlapi_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL to the image. |  |
| **width** | **Integer** | The maximum width of the image (default 400, max. 500). | [optional] |
| **height** | **Integer** | The maximum height of the image (default 400, max. 500). | [optional] |

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## random_poem_api

> <RandomPoemAPI200Response> random_poem_api(opts)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

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

api_instance = OpenapiClient::ArtApi.new
opts = {
  min_lines: 5, # Integer | The minimum number of lines of the poem.
  max_lines: 20 # Integer | The maximum number of lines of the poem.
}

begin
  # Random Poem API
  result = api_instance.random_poem_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->random_poem_api: #{e}"
end
```

#### Using the random_poem_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RandomPoemAPI200Response>, Integer, Hash)> random_poem_api_with_http_info(opts)

```ruby
begin
  # Random Poem API
  data, status_code, headers = api_instance.random_poem_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RandomPoemAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->random_poem_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_lines** | **Integer** | The minimum number of lines of the poem. | [optional] |
| **max_lines** | **Integer** | The maximum number of lines of the poem. | [optional] |

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

