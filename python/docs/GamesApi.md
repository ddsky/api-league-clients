# apileague.GamesApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_similar_games_api**](GamesApi.md#find_similar_games_api) | **GET** /list-similar-games | Find Similar Games API
[**retrieve_game_by_id**](GamesApi.md#retrieve_game_by_id) | **GET** /retrieve-game | Retrieve Game by Id
[**search_games_api**](GamesApi.md#search_games_api) | **GET** /search-games | Search Games API


# **find_similar_games_api**
> FindSimilarGamesAPI200Response find_similar_games_api(id, limit=limit)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.find_similar_games_api200_response import FindSimilarGamesAPI200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.GamesApi(api_client)
    id = 1273796 # int | The id of the game.
    limit = 10 # int | Number of results to return between 1 and 10. (optional)

    try:
        # Find Similar Games API
        api_response = api_instance.find_similar_games_api(id, limit=limit)
        print("The response of GamesApi->find_similar_games_api:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GamesApi->find_similar_games_api: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_game_by_id**
> RetrieveGameById200Response retrieve_game_by_id(id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.retrieve_game_by_id200_response import RetrieveGameById200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.GamesApi(api_client)
    id = 1273796 # int | The id of the game.

    try:
        # Retrieve Game by Id
        api_response = api_instance.retrieve_game_by_id(id)
        print("The response of GamesApi->retrieve_game_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GamesApi->retrieve_game_by_id: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_games_api**
> SearchGamesAPI200Response search_games_api(query=query, offset=offset, limit=limit, filters=filters, sort=sort, sort_order=sort_order, generate_filter_options=generate_filter_options)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.search_games_api200_response import SearchGamesAPI200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.GamesApi(api_client)
    query = 'strategy games' # str | The search query. (optional)
    offset = 0 # int | Pagination offset (start index) between 0 and 1000. (optional)
    limit = 10 # int | Number of results to return between 1 and 100. (optional)
    filters = '[]' # str | JSON array of filters (optional)
    sort = 'rating' # str | Field to sort by (optional)
    sort_order = 'asc' # str | Sort order (asc or desc) (optional)
    generate_filter_options = true # bool | Whether to generate filter options (optional)

    try:
        # Search Games API
        api_response = api_instance.search_games_api(query=query, offset=offset, limit=limit, filters=filters, sort=sort, sort_order=sort_order, generate_filter_options=generate_filter_options)
        print("The response of GamesApi->search_games_api:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GamesApi->search_games_api: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query. | [optional] 
 **offset** | **int**| Pagination offset (start index) between 0 and 1000. | [optional] 
 **limit** | **int**| Number of results to return between 1 and 100. | [optional] 
 **filters** | **str**| JSON array of filters | [optional] 
 **sort** | **str**| Field to sort by | [optional] 
 **sort_order** | **str**| Sort order (asc or desc) | [optional] 
 **generate_filter_options** | **bool**| Whether to generate filter options | [optional] 

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

