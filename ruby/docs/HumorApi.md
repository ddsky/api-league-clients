# OpenapiClient::HumorApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_nonsense_word_api**](HumorApi.md#generate_nonsense_word_api) | **GET** /generate-nonsense-word | Generate Nonsense Word API |
| [**random_joke_api**](HumorApi.md#random_joke_api) | **GET** /retrieve-random-joke | Random Joke API |
| [**random_meme_api**](HumorApi.md#random_meme_api) | **GET** /retrieve-random-meme | Random Meme API |
| [**search_gifs_api**](HumorApi.md#search_gifs_api) | **GET** /search-gifs | Search Gifs API |
| [**search_jokes_api**](HumorApi.md#search_jokes_api) | **GET** /search-jokes | Search Jokes API |
| [**search_memes_api**](HumorApi.md#search_memes_api) | **GET** /search-memes | Search Memes API |


## generate_nonsense_word_api

> <GenerateNonsenseWordAPI200Response> generate_nonsense_word_api

Generate Nonsense Word API

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

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

api_instance = OpenapiClient::HumorApi.new

begin
  # Generate Nonsense Word API
  result = api_instance.generate_nonsense_word_api
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->generate_nonsense_word_api: #{e}"
end
```

#### Using the generate_nonsense_word_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateNonsenseWordAPI200Response>, Integer, Hash)> generate_nonsense_word_api_with_http_info

```ruby
begin
  # Generate Nonsense Word API
  data, status_code, headers = api_instance.generate_nonsense_word_api_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateNonsenseWordAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->generate_nonsense_word_api_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWordAPI200Response**](GenerateNonsenseWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_joke_api

> <SearchJokesAPI200ResponseJokesInner> random_joke_api(opts)

Random Joke API

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

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

api_instance = OpenapiClient::HumorApi.new
opts = {
  include_tags: 'animal', # String | A comma-separated list of tags the jokes should have.
  exclude_tags: 'nsfw,dark', # String | A comma-separated list of tags the jokes must not have.
  min_rating: 0, # Float | The minimum rating in range [0.0,1.0] of the jokes.
  max_length: 140 # Integer | The maximum length of the joke in letters.
}

begin
  # Random Joke API
  result = api_instance.random_joke_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->random_joke_api: #{e}"
end
```

#### Using the random_joke_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchJokesAPI200ResponseJokesInner>, Integer, Hash)> random_joke_api_with_http_info(opts)

```ruby
begin
  # Random Joke API
  data, status_code, headers = api_instance.random_joke_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchJokesAPI200ResponseJokesInner>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->random_joke_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_tags** | **String** | A comma-separated list of tags the jokes should have. | [optional] |
| **exclude_tags** | **String** | A comma-separated list of tags the jokes must not have. | [optional] |
| **min_rating** | **Float** | The minimum rating in range [0.0,1.0] of the jokes. | [optional] |
| **max_length** | **Integer** | The maximum length of the joke in letters. | [optional] |

### Return type

[**SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_meme_api

> <RandomMemeAPI200Response> random_meme_api(opts)

Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

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

api_instance = OpenapiClient::HumorApi.new
opts = {
  keywords: 'airplane', # String | A comma-separated list of words that must occur in the meme.
  keywords_in_image: true, # Boolean | Whether the keywords must occur in the image.
  media_type: 'image', # String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
  min_rating: 0, # Float | The minimum rating in range [0.0,1.0] of the meme.
  max_age_days: 30 # Integer | The maximum age of the meme in days.
}

begin
  # Random Meme API
  result = api_instance.random_meme_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->random_meme_api: #{e}"
end
```

#### Using the random_meme_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RandomMemeAPI200Response>, Integer, Hash)> random_meme_api_with_http_info(opts)

```ruby
begin
  # Random Meme API
  data, status_code, headers = api_instance.random_meme_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RandomMemeAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->random_meme_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | **String** | A comma-separated list of words that must occur in the meme. | [optional] |
| **keywords_in_image** | **Boolean** | Whether the keywords must occur in the image. | [optional] |
| **media_type** | **String** | The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] |
| **min_rating** | **Float** | The minimum rating in range [0.0,1.0] of the meme. | [optional] |
| **max_age_days** | **Integer** | The maximum age of the meme in days. | [optional] |

### Return type

[**RandomMemeAPI200Response**](RandomMemeAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_gifs_api

> <SearchGifsAPI200Response> search_gifs_api(query, opts)

Search Gifs API

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

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

api_instance = OpenapiClient::HumorApi.new
query = 'dogs' # String | The search query.
opts = {
  number: 5 # Integer | The number of gifs to return in range [1,10]
}

begin
  # Search Gifs API
  result = api_instance.search_gifs_api(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_gifs_api: #{e}"
end
```

#### Using the search_gifs_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchGifsAPI200Response>, Integer, Hash)> search_gifs_api_with_http_info(query, opts)

```ruby
begin
  # Search Gifs API
  data, status_code, headers = api_instance.search_gifs_api_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchGifsAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_gifs_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **number** | **Integer** | The number of gifs to return in range [1,10] | [optional] |

### Return type

[**SearchGifsAPI200Response**](SearchGifsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_jokes_api

> <SearchJokesAPI200Response> search_jokes_api(opts)

Search Jokes API

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

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

api_instance = OpenapiClient::HumorApi.new
opts = {
  keywords: 'horse,man', # String | A comma-separated list of words that must occur in the joke.
  include_tags: 'animal', # String | A comma-separated list of tags the jokes should have.
  exclude_tags: 'nsfw,dark', # String | A comma-separated list of tags the jokes must not have.
  min_rating: 0, # Float | The minimum rating in range [0.0,1.0] of the jokes.
  max_length: 140, # Float | The maximum length of the joke in letters.
  offset: 0, # Integer | The number of jokes to skip, between 0 and 1000.
  number: 3 # Integer | The number of jokes, between 1 and 10.
}

begin
  # Search Jokes API
  result = api_instance.search_jokes_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_jokes_api: #{e}"
end
```

#### Using the search_jokes_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchJokesAPI200Response>, Integer, Hash)> search_jokes_api_with_http_info(opts)

```ruby
begin
  # Search Jokes API
  data, status_code, headers = api_instance.search_jokes_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchJokesAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_jokes_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | **String** | A comma-separated list of words that must occur in the joke. | [optional] |
| **include_tags** | **String** | A comma-separated list of tags the jokes should have. | [optional] |
| **exclude_tags** | **String** | A comma-separated list of tags the jokes must not have. | [optional] |
| **min_rating** | **Float** | The minimum rating in range [0.0,1.0] of the jokes. | [optional] |
| **max_length** | **Float** | The maximum length of the joke in letters. | [optional] |
| **offset** | **Integer** | The number of jokes to skip, between 0 and 1000. | [optional] |
| **number** | **Integer** | The number of jokes, between 1 and 10. | [optional] |

### Return type

[**SearchJokesAPI200Response**](SearchJokesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_memes_api

> <SearchMemesAPI200Response> search_memes_api(opts)

Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.

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

api_instance = OpenapiClient::HumorApi.new
opts = {
  keywords: 'rocket', # String | A comma-separated list of words that must occur in the meme.
  keywords_in_image: true, # Boolean | Whether the keywords must occur in the image.
  media_type: 'image', # String | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
  min_rating: 0, # Float | The minimum rating in range [0.0,1.0] of the meme.
  max_age_days: 30, # Integer | The maximum age of the meme in days.
  offset: 0, # Integer | The number of memes to skip, between 0 and 1000.
  number: 3 # Integer | The number of memes, between 1 and 10.
}

begin
  # Search Memes API
  result = api_instance.search_memes_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_memes_api: #{e}"
end
```

#### Using the search_memes_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchMemesAPI200Response>, Integer, Hash)> search_memes_api_with_http_info(opts)

```ruby
begin
  # Search Memes API
  data, status_code, headers = api_instance.search_memes_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchMemesAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_memes_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | **String** | A comma-separated list of words that must occur in the meme. | [optional] |
| **keywords_in_image** | **Boolean** | Whether the keywords must occur in the image. | [optional] |
| **media_type** | **String** | The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] |
| **min_rating** | **Float** | The minimum rating in range [0.0,1.0] of the meme. | [optional] |
| **max_age_days** | **Integer** | The maximum age of the meme in days. | [optional] |
| **offset** | **Integer** | The number of memes to skip, between 0 and 1000. | [optional] |
| **number** | **Integer** | The number of memes, between 1 and 10. | [optional] |

### Return type

[**SearchMemesAPI200Response**](SearchMemesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

