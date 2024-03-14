# OpenapiClient::HumorApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_nonsense_word**](HumorApi.md#generate_nonsense_word) | **GET** /generate-nonsense-word | Generate Nonsense Word |
| [**random_joke**](HumorApi.md#random_joke) | **GET** /retrieve-random-joke | Random Joke |
| [**random_meme**](HumorApi.md#random_meme) | **GET** /retrieve-random-meme | Random Meme |
| [**search_gifs**](HumorApi.md#search_gifs) | **GET** /search-gifs | Search Gifs |
| [**search_jokes**](HumorApi.md#search_jokes) | **GET** /search-jokes | Search Jokes |
| [**search_memes**](HumorApi.md#search_memes) | **GET** /search-memes | Search Memes |


## generate_nonsense_word

> <GenerateNonsenseWord200Response> generate_nonsense_word

Generate Nonsense Word

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
  # Generate Nonsense Word
  result = api_instance.generate_nonsense_word
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->generate_nonsense_word: #{e}"
end
```

#### Using the generate_nonsense_word_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateNonsenseWord200Response>, Integer, Hash)> generate_nonsense_word_with_http_info

```ruby
begin
  # Generate Nonsense Word
  data, status_code, headers = api_instance.generate_nonsense_word_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateNonsenseWord200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->generate_nonsense_word_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWord200Response**](GenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_joke

> <SearchJokes200ResponseJokesInner> random_joke(opts)

Random Joke

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
  # Random Joke
  result = api_instance.random_joke(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->random_joke: #{e}"
end
```

#### Using the random_joke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchJokes200ResponseJokesInner>, Integer, Hash)> random_joke_with_http_info(opts)

```ruby
begin
  # Random Joke
  data, status_code, headers = api_instance.random_joke_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchJokes200ResponseJokesInner>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->random_joke_with_http_info: #{e}"
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

[**SearchJokes200ResponseJokesInner**](SearchJokes200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## random_meme

> <RandomMeme200Response> random_meme(opts)

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

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
  # Random Meme
  result = api_instance.random_meme(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->random_meme: #{e}"
end
```

#### Using the random_meme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RandomMeme200Response>, Integer, Hash)> random_meme_with_http_info(opts)

```ruby
begin
  # Random Meme
  data, status_code, headers = api_instance.random_meme_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RandomMeme200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->random_meme_with_http_info: #{e}"
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

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_gifs

> <SearchGifs200Response> search_gifs(query, opts)

Search Gifs

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
  # Search Gifs
  result = api_instance.search_gifs(query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_gifs: #{e}"
end
```

#### Using the search_gifs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchGifs200Response>, Integer, Hash)> search_gifs_with_http_info(query, opts)

```ruby
begin
  # Search Gifs
  data, status_code, headers = api_instance.search_gifs_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchGifs200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_gifs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **number** | **Integer** | The number of gifs to return in range [1,10] | [optional] |

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_jokes

> <SearchJokes200Response> search_jokes(opts)

Search Jokes

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
  # Search Jokes
  result = api_instance.search_jokes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_jokes: #{e}"
end
```

#### Using the search_jokes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchJokes200Response>, Integer, Hash)> search_jokes_with_http_info(opts)

```ruby
begin
  # Search Jokes
  data, status_code, headers = api_instance.search_jokes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchJokes200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_jokes_with_http_info: #{e}"
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

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_memes

> <SearchMemes200Response> search_memes(opts)

Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

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
  # Search Memes
  result = api_instance.search_memes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_memes: #{e}"
end
```

#### Using the search_memes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchMemes200Response>, Integer, Hash)> search_memes_with_http_info(opts)

```ruby
begin
  # Search Memes
  data, status_code, headers = api_instance.search_memes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchMemes200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HumorApi->search_memes_with_http_info: #{e}"
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

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

