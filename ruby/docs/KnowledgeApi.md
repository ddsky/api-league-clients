# OpenapiClient::KnowledgeApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**random_quote_api**](KnowledgeApi.md#random_quote_api) | **GET** /retrieve-random-quote | Random Quote API |
| [**random_riddle_api**](KnowledgeApi.md#random_riddle_api) | **GET** /retrieve-random-riddle | Random Riddle API |
| [**random_trivia_api**](KnowledgeApi.md#random_trivia_api) | **GET** /retrieve-random-trivia | Random Trivia API |


## random_quote_api

> <RandomQuoteAPI200Response> random_quote_api(opts)

Random Quote API

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
  # Random Quote API
  result = api_instance.random_quote_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_quote_api: #{e}"
end
```

#### Using the random_quote_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RandomQuoteAPI200Response>, Integer, Hash)> random_quote_api_with_http_info(opts)

```ruby
begin
  # Random Quote API
  data, status_code, headers = api_instance.random_quote_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RandomQuoteAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_quote_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_length** | **Integer** | The minimum length of the quote in letters. | [optional] |
| **max_length** | **Integer** | The maximum length of the quote in letters. | [optional] |

### Return type

[**RandomQuoteAPI200Response**](RandomQuoteAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_riddle_api

> <RandomRiddleAPI200Response> random_riddle_api(opts)

Random Riddle API

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

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
  difficulty: 'easy' # String | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".
}

begin
  # Random Riddle API
  result = api_instance.random_riddle_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_riddle_api: #{e}"
end
```

#### Using the random_riddle_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RandomRiddleAPI200Response>, Integer, Hash)> random_riddle_api_with_http_info(opts)

```ruby
begin
  # Random Riddle API
  data, status_code, headers = api_instance.random_riddle_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RandomRiddleAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_riddle_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difficulty** | **String** | The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional] |

### Return type

[**RandomRiddleAPI200Response**](RandomRiddleAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_trivia_api

> <RandomTriviaAPI200Response> random_trivia_api(opts)

Random Trivia API

This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".

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
  # Random Trivia API
  result = api_instance.random_trivia_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_trivia_api: #{e}"
end
```

#### Using the random_trivia_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RandomTriviaAPI200Response>, Integer, Hash)> random_trivia_api_with_http_info(opts)

```ruby
begin
  # Random Trivia API
  data, status_code, headers = api_instance.random_trivia_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RandomTriviaAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling KnowledgeApi->random_trivia_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_length** | **Integer** | The maximum length of the trivia in letters. | [optional] |

### Return type

[**RandomTriviaAPI200Response**](RandomTriviaAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

