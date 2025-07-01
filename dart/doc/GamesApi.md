# openapi.api.GamesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarGamesAPI**](GamesApi.md#findsimilargamesapi) | **GET** /list-similar-games | Find Similar Games API
[**retrieveGameById**](GamesApi.md#retrievegamebyid) | **GET** /retrieve-game | Retrieve Game by Id
[**searchGamesAPI**](GamesApi.md#searchgamesapi) | **GET** /search-games | Search Games API


# **findSimilarGamesAPI**
> FindSimilarGamesAPI200Response findSimilarGamesAPI(id, limit)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = GamesApi();
final id = 1273796; // int | The id of the game.
final limit = 10; // int | Number of results to return between 1 and 10.

try {
    final result = api_instance.findSimilarGamesAPI(id, limit);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->findSimilarGamesAPI: $e\n');
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

# **retrieveGameById**
> RetrieveGameById200Response retrieveGameById(id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game's name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = GamesApi();
final id = 1273796; // int | The id of the game.

try {
    final result = api_instance.retrieveGameById(id);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->retrieveGameById: $e\n');
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

# **searchGamesAPI**
> SearchGamesAPI200Response searchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = GamesApi();
final query = strategy games; // String | The search query.
final offset = 0; // int | Pagination offset (start index) between 0 and 1000.
final limit = 10; // int | Number of results to return between 1 and 100.
final filters = []; // String | JSON array of filters
final sort = rating; // String | Field to sort by
final sortOrder = asc; // String | Sort order (asc or desc)
final generateFilterOptions = true; // bool | Whether to generate filter options

try {
    final result = api_instance.searchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions);
    print(result);
} catch (e) {
    print('Exception when calling GamesApi->searchGamesAPI: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **offset** | **int**| Pagination offset (start index) between 0 and 1000. | [optional] 
 **limit** | **int**| Number of results to return between 1 and 100. | [optional] 
 **filters** | **String**| JSON array of filters | [optional] 
 **sort** | **String**| Field to sort by | [optional] 
 **sortOrder** | **String**| Sort order (asc or desc) | [optional] 
 **generateFilterOptions** | **bool**| Whether to generate filter options | [optional] 

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

