# OpenapiClient::KnowledgeApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**random_quote**](KnowledgeApi.md#random_quote) | **GET** /retrieve-random-quote | Random Quote |
| [**random_trivia**](KnowledgeApi.md#random_trivia) | **GET** /retrieve-random-trivia | Random Trivia |


## random_quote

> <InlineResponse20010> random_quote(opts)

Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

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

api_instance = OpenapiClient::KnowledgeApi.new
opts = {
  min_length: 120, # Integer | The minimum length of the quote in letters.
  max_length: 300 # Integer | The maximum length of the quote in letters.
}

begin
  # Random Quote
  result = api_instance.random_quote(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_quote: #{e}"
end
```

#### Using the random_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse20010>, Integer, Hash)> random_quote_with_http_info(opts)

```ruby
begin
  # Random Quote
  data, status_code, headers = api_instance.random_quote_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse20010>
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_length** | **Integer** | The minimum length of the quote in letters. | [optional] |
| **max_length** | **Integer** | The maximum length of the quote in letters. | [optional] |

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_trivia

> <InlineResponse2009> random_trivia(opts)

Random Trivia

This endpoint returns a random piece of trivia.

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

api_instance = OpenapiClient::KnowledgeApi.new
opts = {
  max_length: 300 # Integer | The maximum length of the trivia in letters.
}

begin
  # Random Trivia
  result = api_instance.random_trivia(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_trivia: #{e}"
end
```

#### Using the random_trivia_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2009>, Integer, Hash)> random_trivia_with_http_info(opts)

```ruby
begin
  # Random Trivia
  data, status_code, headers = api_instance.random_trivia_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2009>
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_trivia_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_length** | **Integer** | The maximum length of the trivia in letters. | [optional] |

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

