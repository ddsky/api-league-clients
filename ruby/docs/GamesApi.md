# OpenapiClient::GamesApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_similar_games_api**](GamesApi.md#find_similar_games_api) | **GET** /list-similar-games | Find Similar Games API |
| [**retrieve_game_by_id**](GamesApi.md#retrieve_game_by_id) | **GET** /retrieve-game | Retrieve Game by Id |
| [**search_games_api**](GamesApi.md#search_games_api) | **GET** /search-games | Search Games API |


## find_similar_games_api

> <FindSimilarGamesAPI200Response> find_similar_games_api(id, opts)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

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

api_instance = OpenapiClient::GamesApi.new
id = 1273796 # Integer | The id of the game.
opts = {
  limit: 10 # Integer | Number of results to return between 1 and 10.
}

begin
  # Find Similar Games API
  result = api_instance.find_similar_games_api(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GamesApi->find_similar_games_api: #{e}"
end
```

#### Using the find_similar_games_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindSimilarGamesAPI200Response>, Integer, Hash)> find_similar_games_api_with_http_info(id, opts)

```ruby
begin
  # Find Similar Games API
  data, status_code, headers = api_instance.find_similar_games_api_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindSimilarGamesAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GamesApi->find_similar_games_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the game. |  |
| **limit** | **Integer** | Number of results to return between 1 and 10. | [optional] |

### Return type

[**FindSimilarGamesAPI200Response**](FindSimilarGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_game_by_id

> <RetrieveGameById200Response> retrieve_game_by_id(id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

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

api_instance = OpenapiClient::GamesApi.new
id = 1273796 # Integer | The id of the game.

begin
  # Retrieve Game by Id
  result = api_instance.retrieve_game_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GamesApi->retrieve_game_by_id: #{e}"
end
```

#### Using the retrieve_game_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveGameById200Response>, Integer, Hash)> retrieve_game_by_id_with_http_info(id)

```ruby
begin
  # Retrieve Game by Id
  data, status_code, headers = api_instance.retrieve_game_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveGameById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GamesApi->retrieve_game_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the game. |  |

### Return type

[**RetrieveGameById200Response**](RetrieveGameById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_games_api

> <SearchGamesAPI200Response> search_games_api(opts)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

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

api_instance = OpenapiClient::GamesApi.new
opts = {
  query: 'strategy games', # String | The search query.
  offset: 0, # Integer | Pagination offset (start index) between 0 and 1000.
  limit: 10, # Integer | Number of results to return between 1 and 100.
  filters: '[]', # String | JSON array of filters
  sort: 'rating', # String | Field to sort by
  sort_order: 'asc', # String | Sort order (asc or desc)
  generate_filter_options: true # Boolean | Whether to generate filter options
}

begin
  # Search Games API
  result = api_instance.search_games_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GamesApi->search_games_api: #{e}"
end
```

#### Using the search_games_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchGamesAPI200Response>, Integer, Hash)> search_games_api_with_http_info(opts)

```ruby
begin
  # Search Games API
  data, status_code, headers = api_instance.search_games_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchGamesAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GamesApi->search_games_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. | [optional] |
| **offset** | **Integer** | Pagination offset (start index) between 0 and 1000. | [optional] |
| **limit** | **Integer** | Number of results to return between 1 and 100. | [optional] |
| **filters** | **String** | JSON array of filters | [optional] |
| **sort** | **String** | Field to sort by | [optional] |
| **sort_order** | **String** | Sort order (asc or desc) | [optional] |
| **generate_filter_options** | **Boolean** | Whether to generate filter options | [optional] |

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

