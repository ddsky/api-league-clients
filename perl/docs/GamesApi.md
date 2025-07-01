# WWW::OpenAPIClient::GamesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::GamesApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_similar_games_api**](GamesApi.md#find_similar_games_api) | **GET** /list-similar-games | Find Similar Games API
[**retrieve_game_by_id**](GamesApi.md#retrieve_game_by_id) | **GET** /retrieve-game | Retrieve Game by Id
[**search_games_api**](GamesApi.md#search_games_api) | **GET** /search-games | Search Games API


# **find_similar_games_api**
> FindSimilarGamesAPI200Response find_similar_games_api(id => $id, limit => $limit)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GamesApi;
my $api_instance = WWW::OpenAPIClient::GamesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 1273796; # int | The id of the game.
my $limit = 10; # int | Number of results to return between 1 and 10.

eval {
    my $result = $api_instance->find_similar_games_api(id => $id, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamesApi->find_similar_games_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the game. | 
 **limit** | **int**| Number of results to return between 1 and 10. | [optional] 

### Return type

[**FindSimilarGamesAPI200Response**](FindSimilarGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_game_by_id**
> RetrieveGameById200Response retrieve_game_by_id(id => $id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GamesApi;
my $api_instance = WWW::OpenAPIClient::GamesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 1273796; # int | The id of the game.

eval {
    my $result = $api_instance->retrieve_game_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamesApi->retrieve_game_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the game. | 

### Return type

[**RetrieveGameById200Response**](RetrieveGameById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_games_api**
> SearchGamesAPI200Response search_games_api(query => $query, offset => $offset, limit => $limit, filters => $filters, sort => $sort, sort_order => $sort_order, generate_filter_options => $generate_filter_options)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GamesApi;
my $api_instance = WWW::OpenAPIClient::GamesApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = strategy games; # string | The search query.
my $offset = 0; # int | Pagination offset (start index) between 0 and 1000.
my $limit = 10; # int | Number of results to return between 1 and 100.
my $filters = []; # string | JSON array of filters
my $sort = rating; # string | Field to sort by
my $sort_order = asc; # string | Sort order (asc or desc)
my $generate_filter_options = true; # boolean | Whether to generate filter options

eval {
    my $result = $api_instance->search_games_api(query => $query, offset => $offset, limit => $limit, filters => $filters, sort => $sort, sort_order => $sort_order, generate_filter_options => $generate_filter_options);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GamesApi->search_games_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional] 
 **offset** | **int**| Pagination offset (start index) between 0 and 1000. | [optional] 
 **limit** | **int**| Number of results to return between 1 and 100. | [optional] 
 **filters** | **string**| JSON array of filters | [optional] 
 **sort** | **string**| Field to sort by | [optional] 
 **sort_order** | **string**| Sort order (asc or desc) | [optional] 
 **generate_filter_options** | **boolean**| Whether to generate filter options | [optional] 

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

