# GamesApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarGamesAPI**](GamesApi.md#findSimilarGamesAPI) | **GET** /list-similar-games | Find Similar Games API
[**retrieveGameById**](GamesApi.md#retrieveGameById) | **GET** /retrieve-game | Retrieve Game by Id
[**searchGamesAPI**](GamesApi.md#searchGamesAPI) | **GET** /search-games | Search Games API



## findSimilarGamesAPI

> FindSimilarGamesAPI200Response findSimilarGamesAPI(id, limit)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Example

```java
// Import classes:
//import com.apileague.GamesApi;

GamesApi apiInstance = new GamesApi();
Integer id = 1273796; // Integer | The id of the game.
Integer limit = 10; // Integer | Number of results to return between 1 and 10.
try {
    FindSimilarGamesAPI200Response result = apiInstance.findSimilarGamesAPI(id, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GamesApi#findSimilarGamesAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the game. | [default to null]
 **limit** | **Integer**| Number of results to return between 1 and 10. | [optional] [default to null]

### Return type

[**FindSimilarGamesAPI200Response**](FindSimilarGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieveGameById

> RetrieveGameById200Response retrieveGameById(id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game&#39;s name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Example

```java
// Import classes:
//import com.apileague.GamesApi;

GamesApi apiInstance = new GamesApi();
Integer id = 1273796; // Integer | The id of the game.
try {
    RetrieveGameById200Response result = apiInstance.retrieveGameById(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GamesApi#retrieveGameById");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the game. | [default to null]

### Return type

[**RetrieveGameById200Response**](RetrieveGameById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchGamesAPI

> SearchGamesAPI200Response searchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Example

```java
// Import classes:
//import com.apileague.GamesApi;

GamesApi apiInstance = new GamesApi();
String query = strategy games; // String | The search query.
Integer offset = 0; // Integer | Pagination offset (start index) between 0 and 1000.
Integer limit = 10; // Integer | Number of results to return between 1 and 100.
String filters = []; // String | JSON array of filters
String sort = rating; // String | Field to sort by
String sortOrder = asc; // String | Sort order (asc or desc)
Boolean generateFilterOptions = true; // Boolean | Whether to generate filter options
try {
    SearchGamesAPI200Response result = apiInstance.searchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GamesApi#searchGamesAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] [default to null]
 **offset** | **Integer**| Pagination offset (start index) between 0 and 1000. | [optional] [default to null]
 **limit** | **Integer**| Number of results to return between 1 and 100. | [optional] [default to null]
 **filters** | **String**| JSON array of filters | [optional] [default to null]
 **sort** | **String**| Field to sort by | [optional] [default to null]
 **sortOrder** | **String**| Sort order (asc or desc) | [optional] [default to null]
 **generateFilterOptions** | **Boolean**| Whether to generate filter options | [optional] [default to null]

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

